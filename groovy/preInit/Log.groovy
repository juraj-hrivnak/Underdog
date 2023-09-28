
import com.cleanroommc.groovyscript.helper.GroovyHelper

if (GroovyHelper.getPackVersion() == '@version@') {
    println("Running in ${GroovyHelper.getPackName()} development environment")
} else {
    println("${GroovyHelper.getPackName()} version: ${GroovyHelper.getPackVersion()}")
}
