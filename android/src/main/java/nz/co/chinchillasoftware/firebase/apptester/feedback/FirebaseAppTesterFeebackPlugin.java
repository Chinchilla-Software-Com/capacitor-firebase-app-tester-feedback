package nz.co.chinchillasoftware.firebase.apptester.feedback;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "FirebaseAppTesterFeeback")
public class FirebaseAppTesterFeebackPlugin extends Plugin {

    private FirebaseAppTesterFeeback implementation = new FirebaseAppTesterFeeback();

    @PluginMethod
    public void activate(PluginCall call) {
        JSObject ret = new JSObject();
        ret.put("state", implementation.activate());
        call.resolve(ret);
    }
}
