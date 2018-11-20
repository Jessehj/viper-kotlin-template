package ${packageName}

import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import java.lang.ref.WeakReference


@RunWith(RobolectricTestRunner::class)
class ${className}PresenterUnitTest {

    @Test
    fun present${className}Data_with_validInput_shouldCall_display${className}Data() {
        // Given
        val presenter = ${className}Presenter()
        val fragmentSpy = ${className}FragmentSpy()
        presenter.fragment = WeakReference(fragmentSpy)

        // When
        ${className}.${className}Data.Response().apply {
            // set response mock data...
            presenter.present${className}Data(this)
        }

        // Then
        Assert.assertTrue(
            "When the valid input is passed to ${className}Presenter "
                    + "Then display${className}Data should be called",
            fragmentSpy.display${className}DataIsCalled
        )
    }

    private inner class ${className}FragmentSpy : ${className}DisplayLogic {

        internal var display${className}DataIsCalled = false
        internal lateinit var viewModelCopy: ${className}.${className}Data.ViewModel

        override fun display${className}Data(viewModel: ${className}.${className}Data.ViewModel) {
            display${className}DataIsCalled = true
            viewModelCopy = viewModel
        }
    }
}