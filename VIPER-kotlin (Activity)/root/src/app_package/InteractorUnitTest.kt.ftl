package ${packageName}

import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner


@RunWith(RobolectricTestRunner::class)
class ${className}InteractorUnitTest {

    @Test
    fun fetch${className}Data_with_validInput_shouldCall_present${className}Data() {
        // Given
        val interactor = ${className}Interactor()
        val presenterSpy = ${className}PresenterSpy()
        interactor.presenter = presenterSpy
        
        // When
        ${className}.${className}Data.Request().apply {
            // set request mock data...
            interactor.fetch${className}Data(this)
        }

        // Then
        Assert.assertTrue(
            "When the valid input is passed to ${className}Interactor "
                    + "Then present${className}Data should be called",
            presenterSpy.present${className}DataIsCalled
        )
    }

    private inner class ${className}PresenterSpy : ${className}PresentationLogic {

        internal var present${className}DataIsCalled = false
        internal lateinit var responseCopy: ${className}.${className}Data.Response

        override fun present${className}Data(response: ${className}.${className}Data.Response) {
            present${className}DataIsCalled = true
            responseCopy = response
        }
    }
}