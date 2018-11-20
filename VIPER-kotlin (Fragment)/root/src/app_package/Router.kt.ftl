package ${packageName}

import android.content.Intent
import android.support.v7.app.AppCompatActivity
import java.lang.ref.WeakReference


interface ${className}RoutingLogic {
    fun navigateToSomewhere(): Intent
}

class ${className}Router : ${className}RoutingLogic {

    lateinit var activity: WeakReference<AppCompatActivity>
    lateinit var dataStore: ${className}DataStore

    override fun navigateToSomewhere(): Intent {
        val intent = Intent()
        return intent
    }
}