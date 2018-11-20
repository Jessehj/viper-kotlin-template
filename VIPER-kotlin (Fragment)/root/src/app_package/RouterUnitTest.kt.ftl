package ${packageName}

import android.content.Intent
import android.support.v7.app.AppCompatActivity
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import java.lang.ref.WeakReference


@RunWith(RobolectricTestRunner::class)
class ${className}RouterUnitTest {

    @Test
    fun test_${className}Router_navigateToNextScene_when_Input_Is() {
        // Given
        // Setup Data

        val router = ${className}Router()
        val fragment = ${className}Fragment()
        val activity = fragment.activity as AppCompatActivity
        fragment.router = router
        router.activity = WeakReference(activity)

        // When
        val nextScene = router.navigateToSomewhere()

        // Then
        Assert.assertEquals(
            "When the some data passed to ${className}Router" +
                    " Then next scene should be ...",
            nextScene, Intent()
        )
    }
}