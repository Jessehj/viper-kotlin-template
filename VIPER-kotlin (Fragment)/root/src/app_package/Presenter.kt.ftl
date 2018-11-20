package ${packageName}

import java.lang.ref.WeakReference


interface ${className}PresentationLogic {
    fun present${className}Data(response: ${className}.${className}Data.Response)
}

class ${className}Presenter : ${className}PresentationLogic {

    lateinit var fragment: WeakReference<${className}DisplayLogic>

    override fun present${className}Data(response: ${className}.${className}Data.Response) {

    }
}