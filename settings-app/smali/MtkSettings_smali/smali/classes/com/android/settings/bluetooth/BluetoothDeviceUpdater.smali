.class public abstract Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;
.super Ljava/lang/Object;
.source "BluetoothDeviceUpdater.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# instance fields
.field protected final mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

.field final mDeviceProfilesListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

.field protected mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field protected final mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field protected mPrefContext:Landroid/content/Context;

.field protected final mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowDeviceWithoutNames:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V
    .locals 0

    .line 70
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 71
    return-void
.end method

.method constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDeviceUpdater$9cHgqnTeqRHSfH6f9TvykmwcB28;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDeviceUpdater$9cHgqnTeqRHSfH6f9TvykmwcB28;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mDeviceProfilesListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    .line 76
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 77
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    .line 78
    const-string p1, "persist.bluetooth.showdeviceswithoutnames"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mShowDeviceWithoutNames:Z

    .line 80
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    .line 81
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 82
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->launchDeviceDetails(Landroid/support/v7/preference/Preference;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 4

    .line 196
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPrefContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mShowDeviceWithoutNames:Z

    invoke-direct {v1, v2, p1, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Z)V

    .line 201
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mDeviceProfilesListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    .line 202
    instance-of p1, p0, Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    if-eqz p1, :cond_0

    .line 203
    move-object p1, p0

    check-cast p1, Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    invoke-interface {p1, v1}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceAdded(Landroid/support/v7/preference/Preference;)V

    .line 209
    :cond_1
    return-void
.end method

.method public forceUpdate()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 108
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public isDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 3

    .line 249
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 250
    return v0

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method public abstract isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
.end method

.method protected launchDeviceDetails(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 227
    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 228
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 229
    if-nez p1, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 233
    const-string v1, "device_address"

    .line 234
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    .line 237
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 238
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const v0, 0x7f120526    # @string/device_details_title 'Device details'

    .line 239
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 240
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 242
    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 145
    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    .line 149
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    .line 117
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 141
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 125
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 138
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 133
    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    .line 154
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    .line 120
    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    .line 160
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .line 165
    return-void
.end method

.method public registerCallback()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    .line 92
    return-void
.end method

.method protected removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 215
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 216
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    invoke-interface {v0, v1}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceRemoved(Landroid/support/v7/preference/Preference;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_0
    return-void
.end method

.method public setPrefContext(Landroid/content/Context;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPrefContext:Landroid/content/Context;

    .line 172
    return-void
.end method

.method public unregisterCallback()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 101
    return-void
.end method

.method protected update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 190
    :goto_0
    return-void
.end method
