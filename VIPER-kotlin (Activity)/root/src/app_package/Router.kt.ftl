package ${packageName}

import android.content.Intent
import java.lang.ref.WeakReference


interface ${className}RoutingLogic {
    fun navigateToSomewhere(): Intent
}

class ${className}Router: ${className}RoutingLogic {

    lateinit var activity: WeakReference<${className}Activity>
    lateinit var dataStore: ${className}DataStore

    override fun navigateToSomewhere(): Intent {
        val intent = Intent()
        return intent
    }
}