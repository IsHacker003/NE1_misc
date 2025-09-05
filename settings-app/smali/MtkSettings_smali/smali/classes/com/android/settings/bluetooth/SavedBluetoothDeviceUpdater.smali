.class public Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;
.super Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;
.source "SavedBluetoothDeviceUpdater.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 47
    return-void
.end method


# virtual methods
.method public isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 2

    .line 61
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 67
    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 68
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 70
    return v0
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    .line 52
    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 54
    :cond_0
    if-nez p2, :cond_1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;->addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 57
    :cond_1
    :goto_0
    return-void
.end method
