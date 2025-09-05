.class public abstract Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# instance fields
.field mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

.field final mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field mScanEnabled:Z

.field mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

.field mShowDevicesWithoutNames:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 79
    sget-object p1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 80
    return-void
.end method


# virtual methods
.method addCachedDevices()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 139
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 141
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 142
    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public addDeviceCategory(Landroid/support/v7/preference/PreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 267
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 268
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 269
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 270
    if-eqz p4, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    .line 273
    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->setEnabled(Z)V

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 275
    return-void
.end method

.method createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    if-nez v0, :cond_0

    .line 186
    const-string p1, "DeviceListPreferenceFragment"

    const-string v0, "Trying to create a device preference before the list group/category exists!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 191
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 194
    if-nez v1, :cond_1

    .line 195
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mShowDevicesWithoutNames:Z

    invoke-direct {v1, v2, p1, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Z)V

    .line 197
    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setKey(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->rebind()V

    .line 205
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method disableScanning()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanEnabled:Z

    .line 241
    return-void
.end method

.method enableScanning()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 234
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanEnabled:Z

    .line 235
    return-void
.end method

.method public abstract getDeviceListKey()Ljava/lang/String;
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .line 211
    return-void
.end method

.method abstract initPreferencesFromPreferenceScreen()V
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 280
    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    .line 283
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    .line 252
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 277
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 95
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_0

    .line 96
    const-string p1, "DeviceListPreferenceFragment"

    const-string v0, "Bluetooth is not supported on this device"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 100
    const-string p1, "persist.bluetooth.showdeviceswithoutnames"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mShowDevicesWithoutNames:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->initPreferencesFromPreferenceScreen()V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getDeviceListKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 106
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    .line 169
    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceAdded, Device name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already have preference"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " create new preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 182
    :cond_2
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 225
    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 228
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .line 164
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onClicked()V

    .line 165
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 147
    const-string v0, "bt_scan"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 148
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 149
    return v1

    .line 152
    :cond_0
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v0, :cond_1

    .line 153
    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 154
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 157
    return v1

    .line 160
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onScanningStateChanged(Z)V
    .locals 3

    .line 245
    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanningStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanEnabled:Z

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 249
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 113
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onStart()V

    .line 114
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 118
    return-void

    .line 114
    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onStop()V

    .line 123
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 130
    return-void

    .line 124
    :cond_1
    :goto_0
    return-void
.end method

.method removeAllDevices()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 135
    return-void
.end method

.method final setFilter(I)V
    .locals 0

    .line 87
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 88
    return-void
.end method

.method final setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 84
    return-void
.end method

.method updateFooterPreference(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 215
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 217
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 219
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 217
    const v0, 0x7f1202b4    # @string/bluetooth_footer_mac_message 'Phone's Bluetooth address: %1$s'

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method
