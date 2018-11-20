package ${packageName}


interface ${className}BusinessLogic : ${className}DataPassing, ${className}DataStore {
    fun fetch${className}Data(request: ${className}.${className}Data.Request)
}

interface ${className}DataPassing {
    // fun setPassedData(Obj: Any)
}

interface ${className}DataStore {
    // fun getData(): Any
}

class ${className}Interactor : ${className}BusinessLogic {

    lateinit var presenter: ${className}PresentationLogic
    private var worker = ${className}Worker()

    override fun fetch${className}Data(request: ${className}.${className}Data.Request) {

    }
}