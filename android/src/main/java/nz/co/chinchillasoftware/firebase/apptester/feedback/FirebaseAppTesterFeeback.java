package nz.co.chinchillasoftware.firebase.apptester.feedback;

import android.util.Log;

import com.google.firebase.appdistribution.FirebaseAppDistribution;
import com.google.firebase.appdistribution.InterruptionLevel;

public class FirebaseAppTesterFeeback {
    FirebaseAppDistribution firebaseAppDistribution = FirebaseAppDistribution.getInstance();

    public String activate() {
        Log.i("Activate", "Activate");

        firebaseAppDistribution.showFeedbackNotification(
            // Text providing notice to your testers about collection and
            // processing of their feedback data
            R.string.additionalFormText,
            // The level of interruption for the notification
            InterruptionLevel.HIGH);

        return "OK";
    }
}
