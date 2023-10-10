//NO_RUN

import groovy.io.FileType

import java.nio.file.Files

def workingDir = new File('groovy/postInit/zsToGroovy')

if (!workingDir.exists()) {
    workingDir.mkdir()
}

workingDir.eachFileRecurse (FileType.FILES) { file ->
    if (file.name.endsWith('.zs')) {
        new File('groovy/postInit/zsToGroovy/' + file.name.replace('.zs', '.groovy')).with {
            it.delete()
            it.withWriter { w ->
                file.eachLine { line ->
                    if (line.startsWith('//')) {
                        w << line
                    } else {
                        w << line
                            .replace('#modloaded', '//MOD_LOADED')
                            .replace(';', '')
                            .replace('"', '\'')
                            .replace('<ore:', 'ore(\'')
                            .replace('<', 'item(\'')
                            .replace('>', '\')')
                            .replace('val', 'def')
                            .replace('recipes.removeByRecipeName', 'crafting.remove')
                            .replace('recipes.remove', 'crafting.removeByOutput')
                            .replace('recipes', 'crafting')
                    }

                    w << System.getProperty("line.separator")
                }
            }
        }
    }
}
