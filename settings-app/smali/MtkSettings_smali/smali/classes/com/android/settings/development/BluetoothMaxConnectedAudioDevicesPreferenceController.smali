.class public Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BluetoothMaxConnectedAudioDevicesPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final MAX_CONNECTED_AUDIO_DEVICES_PROPERTY:Ljava/lang/String; = "persist.bluetooth.maxconnectedaudiodevices"


# instance fields
.field private final mDefaultMaxConnectedAudioDevices:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    iget-object p1, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0014    # @android:integer/config_bluetooth_max_connected_audio_devices

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mDefaultMaxConnectedAudioDevices:I

    .line 46
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 5

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 56
    iget-object p1, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    .line 57
    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 58
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mDefaultMaxConnectedAudioDevices:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 59
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "bluetooth_max_connected_audio_devices"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 102
    const-string v0, "persist.bluetooth.maxconnectedaudiodevices"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 104
    return-void
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    .line 96
    iget-object v0, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 97
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 64
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 65
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 66
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 68
    const-string p2, ""

    .line 70
    :cond_0
    const-string v0, "persist.bluetooth.maxconnectedaudiodevices"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 72
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    .line 77
    check-cast p1, Landroid/support/v7/preference/ListPreference;

    .line 78
    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 79
    const-string v1, "persist.bluetooth.maxconnectedaudiodevices"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    nop

    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 82
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 83
    if-gez v1, :cond_0

    .line 85
    const-string v1, "persist.bluetooth.maxconnectedaudiodevices"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    goto :goto_0

    .line 89
    :cond_0
    move v3, v1

    :cond_1
    :goto_0
    invoke-virtual {p1, v3}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 90
    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method
