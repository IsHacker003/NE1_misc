.class public Lcom/android/settings/notification/LightsPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "LightsPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 38
    return-void
.end method


# virtual methods
.method canPulseLight()Z
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/settings/notification/LightsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    const v1, 0x112007f    # @android:bool/config_localDisplaysPrivate

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    return v1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/LightsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "notification_light_pulse"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "lights"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 47
    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    return v1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/LightsPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    .line 51
    return v1

    .line 53
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/LightsPreferenceController;->checkCanBeVisible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/notification/LightsPreferenceController;->canPulseLight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/notification/LightsPreferenceController;->isDefaultChannel()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    nop

    .line 53
    :cond_2
    return v1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/android/settings/notification/LightsPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_0

    .line 70
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 71
    iget-object p2, p0, Lcom/android/settings/notification/LightsPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/notification/LightsPreferenceController;->saveChannel()V

    .line 74
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/LightsPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    .line 60
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 61
    iget-object v0, p0, Lcom/android/settings/notification/LightsPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/notification/LightsPreferenceController;->isChannelConfigurable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/LightsPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 65
    :cond_1
    return-void
.end method
