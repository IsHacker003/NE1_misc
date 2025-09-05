.class public Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "TetheringHardwareAccelPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final SETTING_VALUE_OFF:I = 0x1

.field static final SETTING_VALUE_ON:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "tethering_hardware_offload"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 68
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 69
    iget-object v0, p0, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tether_offload_disabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    iget-object v0, p0, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 72
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 51
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 52
    iget-object p2, p0, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "tether_offload_disabled"

    .line 54
    nop

    .line 52
    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 55
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 60
    iget-object p1, p0, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tether_offload_disabled"

    .line 60
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 64
    return-void
.end method
