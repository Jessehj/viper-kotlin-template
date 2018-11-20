package ${packageName}

import android.os.Bundle          
import android.support.v7.app.AppCompatActivity


interface ${className}DisplayLogic {
    fun display${className}Data(viewModel: ${className}.${className}Data.ViewModel)
}

class ${className}Activity : AppCompatActivity(), ${className}DisplayLogic {

    lateinit var interactor: ${className}BusinessLogic
    lateinit var router: ${className}Router

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        ${className}Configurator.configure(this)
        setContentView(R.layout.${layoutName})

        fetch${className}Data()
    }

    fun fetch${className}Data() {
        ${className}.${className}Data.Request().apply {
            context = this@${className}Activity
            interactor.fetch${className}Data(this)
        }    
    }

    override fun display${className}Data(viewModel: ${className}.${className}Data.ViewModel) {

    }
}