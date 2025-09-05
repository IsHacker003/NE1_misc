.class public final Lcom/android/settings/bluetooth/DevicePickerFragment;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mProgressCategory:Lcom/android/settings/ProgressCategory;

.field private mScanAllowed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 199
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 188
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDeviceListKey()Ljava/lang/String;
    .locals 1

    .line 193
    const-string v0, "bt_device_list"

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 178
    const-string v0, "DevicePickerFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 80
    const/16 v0, 0x19

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 183
    const v0, 0x7f15004f    # @xml/device_picker 'res/xml/device_picker.xml'

    return v0
.end method

.method initPreferencesFromPreferenceScreen()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 66
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->setFilter(I)V

    .line 68
    const-string v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    .line 69
    const-string v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    .line 70
    const-string v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    .line 71
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1

    .line 169
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 171
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->enableScanning()V

    .line 174
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f12052c    # @string/device_picker 'Choose Bluetooth device'

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    const-string p1, "user"

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 88
    const-string v0, "no_config_bluetooth"

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScanAllowed:Z

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->setHasOptionsMenu(Z)V

    .line 91
    const-string p1, "bt_device_list"

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ProgressCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    .line 92
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 130
    :cond_1
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1

    .line 155
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    const/16 v0, 0xc

    if-ne p2, v0, :cond_1

    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0

    .line 162
    :cond_1
    const/16 p1, 0xa

    if-ne p2, p1, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->enableScanning()V

    .line 165
    :cond_2
    :goto_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->disableScanning()V

    .line 135
    nop

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_1

    .line 139
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    .line 144
    :goto_1
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1

    .line 148
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 149
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScanEnabled:Z

    or-int/2addr p1, v0

    .line 150
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 151
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    .line 98
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setNoDeviceFoundAdded(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->removeAllDevices()V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addCachedDevices()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 102
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScanAllowed:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->enableScanning()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->disableScanning()V

    .line 112
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    .line 113
    return-void
.end method
