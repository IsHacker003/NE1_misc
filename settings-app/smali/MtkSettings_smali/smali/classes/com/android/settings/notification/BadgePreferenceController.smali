.class public Lcom/android/settings/notification/BadgePreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "BadgePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "badge"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    .line 50
    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 51
    return v1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    .line 54
    return v1

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    .line 59
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 60
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    return v1

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "notification_badging"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    .line 67
    return v1

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_5

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/notification/BadgePreferenceController;->isDefaultChannel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    return v3

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->showBadge:Z

    return v0

    .line 76
    :cond_5
    return v3
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 94
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 95
    iget-object p2, p0, Lcom/android/settings/notification/BadgePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz p2, :cond_0

    .line 96
    iget-object p2, p0, Lcom/android/settings/notification/BadgePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/notification/BadgePreferenceController;->saveChannel()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p2, :cond_1

    .line 99
    iget-object p2, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iput-boolean p1, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->showBadge:Z

    .line 100
    iget-object p2, p0, Lcom/android/settings/notification/BadgePreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/settings/notification/NotificationBackend;->setShowBadge(Ljava/lang/String;IZ)Z

    .line 102
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_2

    .line 81
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/notification/BadgePreferenceController;->isChannelConfigurable()Z

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

    goto :goto_1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->showBadge:Z

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 90
    :cond_2
    :goto_1
    return-void
.end method
