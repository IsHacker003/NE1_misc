.class public Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "DisableAutomaticUpdatesPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final DISABLE_UPDATES_SETTING:I = 0x1

.field static final ENABLE_UPDATES_SETTING:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "ota_disable_automatic_update"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 70
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 71
    iget-object v0, p0, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ota_disable_automatic_update"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    iget-object v0, p0, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 74
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 53
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 54
    iget-object p2, p0, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "ota_disable_automatic_update"

    .line 56
    nop

    .line 54
    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 57
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 62
    iget-object p1, p0, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ota_disable_automatic_update"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 65
    iget-object v0, p0, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 66
    return-void
.end method
