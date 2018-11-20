package ${packageName}

import java.lang.ref.WeakReference


object ${className}Configurator {
    
    fun configure(activity: ${className}Activity) {

        val router = ${className}Router()
        router.activity = WeakReference(activity)

        val presenter = ${className}Presenter()
        presenter.activity = WeakReference(activity)

        val interactor = ${className}Interactor()
        interactor.presenter = presenter

        activity.interactor = interactor
        activity.router = router
        activity.router.dataStore = interactor
    }
}