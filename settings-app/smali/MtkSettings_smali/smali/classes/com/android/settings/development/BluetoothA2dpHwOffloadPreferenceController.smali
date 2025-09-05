.class public Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BluetoothA2dpHwOffloadPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 41
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "bluetooth_disable_a2dp_hw_offload"

    return-object v0
.end method

.method public onA2dpHwDialogConfirmed()V
    .locals 2

    .line 84
    const-string v0, "persist.bluetooth.a2dp_offload.disabled"

    .line 85
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    const-string v1, "persist.bluetooth.a2dp_offload.disabled"

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 72
    const-string v0, "ro.bluetooth.a2dp_offload.supported"

    .line 73
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 76
    const-string v0, "persist.bluetooth.a2dp_offload.disabled"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 79
    const-string v0, "persist.bluetooth.a2dp_offload.disabled"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1, p0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;)V

    .line 51
    const/4 p1, 0x0

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 57
    const-string p1, "ro.bluetooth.a2dp_offload.supported"

    .line 58
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    const-string p1, "persist.bluetooth.a2dp_offload.disabled"

    .line 61
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 62
    iget-object v0, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 67
    :goto_0
    return-void
.end method
