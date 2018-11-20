package ${packageName}

import android.support.v7.app.AppCompatActivity
import java.lang.ref.WeakReference


object ${className}Configurator {

    fun configure(activity: AppCompatActivity, fragment: ${className}Fragment) {

        val router = ${className}Router()
        router.activity = WeakReference(activity)

        val presenter = ${className}Presenter()
        presenter.fragment = WeakReference(fragment)

        val interactor = ${className}Interactor()
        interactor.presenter = presenter        

        fragment.interactor = interactor
        fragment.router = router
        fragment.router.dataStore = interactor
    }
}