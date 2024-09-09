
import com.cleanroommc.groovyscript.helper.GroovyFile

/**
 * Rewrites ZenScript (.zs) to GroovyScript (.groovy)!
 *
 * This script should be located in 'postInit/zsToGroovy' directory,
 * and your 'runConfig.json' needs to have:
 * {
 *     "loaders": {
 *         "postInit": [
 *             "postInit/zsToGroovy"
 *         ]
 *     }
 * }
 *
 * To use this, put ZenScript files into the 'postInit/zsToGroovy' and reload GroovyScript.
 *
 * Compatible with GroovyScript 1.0.1 and higher.
 */

def workingDir = file('groovy/postInit/zsToGroovy')

if (!workingDir.exists()) {
    workingDir.mkdir()
}

workingDir.eachFileRecurse() { file ->
    def gFile = new GroovyFile(file)

    if (gFile.path.endsWith('.zs')) {
        def newFile = new GroovyFile(gFile.path.replace('.zs', '.groovy'))
        newFile.delete()
        newFile.createNewFile()
        newFile.withWriter { w ->
            w << "//NO_RUN${System.getProperty("line.separator")}"
            w << gFile.text
                .replace('#modloaded', '//MOD_LOADED')
                .replace(";${System.getProperty("line.separator")}", System.getProperty("line.separator"))
                .replace('"', '\'')
                .replace('<ore:', 'ore(\'') // Oredicts
                .replace('<blockstate:', 'blockstate(\'') // Blockstates
                .replace('<entity:', 'entity(\'') // Entities
                .replace('<liquid:', 'fluid(\'') // Fluids
                .replace('<', 'item(\'') // Items
                .replace('>', '\')')
                .replace('val ', 'def ')
                .replace('function ', 'def ')
                .replace('recipes.addShapedMirrored ', 'crafting.addShaped')
                .replace('recipes.removeByRecipeName', 'crafting.remove')
                .replace('recipes.remove', 'crafting.removeByOutput')
                .replace('recipes', 'crafting')
                .replaceAll( // Metadata
                    /:([\d]*)'(?=\))/, /', $1/
                )
                .replaceAll( // For loops
                    /for\s([^\(\)]*)(?:(\S(?=\{))|\s((?=\{)))/,
                    /for ($1$2$3) /
                )
                .replaceAll( // Events
                    /events\..*\(function\(event as (.*)\) \{([\s\S]*\})\)/,
                    /event_manager.listen { $1 event ->$2/
                )
                .replaceAll( // Not null checks
                    /!isNull(\([^\)]*(?=\)))/,
                    /$1 != null/
                )
                .replaceAll( // Null checks
                    /isNull(\([^\)]*(?=\)))/,
                    /$1 == null/
                )
                .replaceAll(/(withTag)\(([^\)]*(?=\)))/) { all, methodName, body -> // NBT
                    def innerText = body.replace('\'', '')
                    innerText = innerText.replaceAll(/(\b[^\d\W]+\b)/, /'$1'/)
                    innerText = innerText.replace('{', '[')
                    innerText = innerText.replace('}', ']')

                    'withNbt(' + innerText
                }
                .replaceAll(/static *(\w+) *as *(.+) *=/, /$2$1 =/)
                .replaceAll(/def *(\w+) *as *(.+) *=/, /$2$1 =/)
                .replaceAll( // Unnecessary casts
                    / as IItemStack\[\]/, ''
                )
                .replaceAll(
                    / as void/, ''
                )
        }
        gFile.delete()
    }
}
