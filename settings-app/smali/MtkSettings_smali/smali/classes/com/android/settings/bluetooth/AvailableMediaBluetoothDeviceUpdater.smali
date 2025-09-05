.class public Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;
.super Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;
.source "AvailableMediaBluetoothDeviceUpdater.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mActivating:Z

.field private final mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    .line 38
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->mActivating:Z

    .line 44
    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->mAudioManager:Landroid/media/AudioManager;

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 38
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->mActivating:Z

    .line 52
    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    return-void
.end method


# virtual methods
.method public isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 85
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    nop

    .line 95
    move v1, v2

    :goto_1
    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->isDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 108
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isA2dpDevice()Z

    move-result v0

    .line 109
    goto :goto_2

    .line 111
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHfpDevice()Z

    move-result v0

    .line 119
    :cond_2
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->mActivating:Z

    .line 132
    :cond_0
    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->forceUpdate()V

    .line 59
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 135
    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 136
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 137
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->mActivating:Z

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setActive()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->mActivating:Z

    .line 139
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->mActivating:Z

    return p1

    .line 141
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->mActivating:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    .line 69
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 75
    :cond_1
    if-nez p2, :cond_2

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 78
    :cond_2
    :goto_0
    return-void
.end method
