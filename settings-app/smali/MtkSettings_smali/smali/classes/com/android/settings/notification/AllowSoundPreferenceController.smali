.class public Lcom/android/settings/notification/AllowSoundPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "AllowSoundPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 42
    iput-object p2, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    .line 43
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "allow_sound"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 52
    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 53
    return v1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    const-string v0, "miscellaneous"

    iget-object v2, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_1

    .line 74
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, -0x3e8

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 75
    :goto_0
    iget-object p2, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/notification/AllowSoundPreferenceController;->saveChannel()V

    .line 78
    iget-object p1, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->onImportanceChanged()V

    .line 80
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_3

    .line 62
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/notification/AllowSoundPreferenceController;->isChannelConfigurable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/AllowSoundPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 66
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/16 v3, -0x3e8

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    .line 65
    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 67
    goto :goto_3

    :cond_3
    const-string p1, "AllowSoundPrefContr"

    const-string v0, "tried to updatestate on a null channel?!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_3
    return-void
.end method
