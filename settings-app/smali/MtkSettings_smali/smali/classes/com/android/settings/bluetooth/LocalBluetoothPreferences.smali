.class final Lcom/android/settings/bluetooth/LocalBluetoothPreferences;
.super Ljava/lang/Object;
.source "LocalBluetoothPreferences.java"


# direct methods
.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 53
    const-string v0, "bluetooth_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static persistDiscoverableEndTimestamp(Landroid/content/Context;J)V
    .locals 1

    .line 144
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 145
    const-string v0, "discoverable_end_timestamp"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    return-void
.end method

.method static persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 135
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 136
    const-string v0, "last_selected_device"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    const-string p1, "last_selected_device_time"

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 138
    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    return-void
.end method

.method static shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    .line 63
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 64
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    const-string p0, "LocalBluetoothPreferences"

    const-string p1, "manager == null - do not show dialog."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v1

    .line 70
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 71
    return v3

    .line 75
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    const/4 v4, 0x5

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    .line 77
    const-string p0, "LocalBluetoothPreferences"

    const-string p1, "in appliance mode - do not show dialog."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v1

    .line 81
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 82
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 85
    const-string v6, "discoverable_end_timestamp"

    const-wide/16 v7, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 87
    const-wide/32 v11, 0xea60

    add-long/2addr v9, v11

    cmp-long v6, v9, v4

    if-lez v6, :cond_3

    .line 89
    return v3

    .line 93
    :cond_3
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 96
    return v3

    .line 98
    :cond_4
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getDiscoveryEndMillis()J

    move-result-wide v9

    add-long/2addr v9, v11

    cmp-long v0, v9, v4

    if-lez v0, :cond_5

    .line 100
    return v3

    .line 105
    :cond_5
    if-eqz p1, :cond_6

    .line 106
    const-string v0, "last_selected_device"

    const/4 v6, 0x0

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 110
    const-string p1, "last_selected_device_time"

    invoke-interface {v2, p1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 112
    add-long/2addr v6, v11

    cmp-long p1, v6, v4

    if-lez p1, :cond_6

    .line 114
    return v3

    .line 120
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 122
    const p1, 0x104015e    # @android:string/config_timeZoneRulesUpdaterPackage

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 124
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 125
    const-string p0, "LocalBluetoothPreferences"

    const-string p1, "showing dialog for packaged keyboard"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v3

    .line 130
    :cond_7
    const-string p0, "LocalBluetoothPreferences"

    const-string p1, "Found no reason to show the dialog - do not show dialog."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v1
.end method
