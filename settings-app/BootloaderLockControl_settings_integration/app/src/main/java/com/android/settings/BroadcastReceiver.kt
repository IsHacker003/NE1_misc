package com.android.settings

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent


class Dialer : BroadcastReceiver() {
    override fun onReceive(context: Context?, intent: Intent?) {
        val i : Intent = Intent(context, BootloaderLockControl::class.java)
        i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        context!!.startActivity(i);
    }
}
