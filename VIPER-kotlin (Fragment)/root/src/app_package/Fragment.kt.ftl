package ${packageName}

import android.content.Context
import android.os.Bundle
import android.support.v4.app.Fragment
import android.support.v7.app.AppCompatActivity
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup


interface ${className}DisplayLogic {
    fun display${className}Data(viewModel: ${className}.${className}Data.ViewModel)
}

class ${className}Fragment : Fragment(), ${className}DisplayLogic {

    companion object {
        fun newInstance(): ${className}Fragment {
            return ${className}Fragment()
        }
    }

    lateinit var interactor: ${className}BusinessLogic
    lateinit var router: ${className}Router

    private var listener: OnFragmentInteractionListener? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        ${className}Configurator.configure(activity as AppCompatActivity, this)
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {

        val view = inflater.inflate(R.layout.${layoutName}, container, false)

        fetch${className}Data()

        return view
    }

    override fun onAttach(context: Context?) {
        super.onAttach(context)
        if (context is OnFragmentInteractionListener) {
            listener = context
        }
    }

    override fun onDetach() {
        super.onDetach()
        listener = null
    }

    fun fetch${className}Data() {
        ${className}.${className}Data.Request().apply {
            context = activity!!
            interactor.fetch${className}Data(this)
        }
    }

    override fun display${className}Data(viewModel: ${className}.${className}Data.ViewModel) {

    }

    interface OnFragmentInteractionListener
}