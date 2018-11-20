package ${packageName}

import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner


@RunWith(RobolectricTestRunner::class)
class ${className}ActivityUnitTest {

    @Test
    fun onCreate_shouldCall_fetch${className}Data() {
        // Given
        val interactorSpy = ${className}InteractorSpy()

        // It must have called the onCreate earlier,
        // we are injecting the mock and calling the fetchData to test our condition
        val activity = ${className}Activity()
        activity.interactor = interactorSpy

        // When
        activity.fetch${className}Data()

        // Then
        Assert.assertTrue(interactorSpy.fetch${className}DataIsCalled)
    }

    @Test
    fun onCreate_Calls_fetch${className}Data_withCorrectData() {
        // Given
        val interactorSpy = ${className}InteractorSpy()
        val activity = ${className}Activity()
        activity.interactor = interactorSpy

        // When
        activity.fetch${className}Data()

        // Then
        // Assert.assertNotNull(interactorSpy.requestCopy.context)
    }

    private inner class ${className}InteractorSpy : ${className}BusinessLogic {

        internal var fetch${className}DataIsCalled = false
        internal lateinit var requestCopy: ${className}.${className}Data.Request

        override fun fetch${className}Data(request: ${className}.${className}Data.Request) {
            fetch${className}DataIsCalled = true
            requestCopy = request
        }
    }
}