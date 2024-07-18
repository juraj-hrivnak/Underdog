
import com.cleanroommc.groovyscript.helper.GroovyFile

/**
 * Rewrites ZenScript (.zs) to Groovy.
 */

def workingDir = new GroovyFile('groovy/postInit/zsToGroovy')

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
                .replace('<', 'item(\'') // Items
                .replace('>', '\')')
                .replace('val ', 'def ')
                .replace('function ', 'def ')
                .replace('recipes.addShapedMirrored ', 'crafting.addShaped')
                .replace('recipes.removeByRecipeName', 'crafting.remove')
                .replace('recipes.remove', 'crafting.removeByOutput')
                .replace('recipes', 'crafting')
                .replaceAll( // Unnecessary casts
                    / as IItemStack\[\]/, ''
                )
                .replaceAll(
                    / as void/, ''
                )
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
        }
        gFile.delete()
    }
}
