.class public Lcom/android/settings/notification/DndPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "DndPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "bypass_dnd"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/DndPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 63
    iget-object p1, p0, Lcom/android/settings/notification/DndPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 64
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 65
    iget-object p2, p0, Lcom/android/settings/notification/DndPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/notification/DndPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/notification/DndPreferenceController;->saveChannel()V

    .line 69
    :cond_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/DndPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    .line 54
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 55
    iget-object v0, p0, Lcom/android/settings/notification/DndPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/notification/DndPreferenceController;->isChannelConfigurable()Z

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

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/DndPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 59
    :cond_1
    return-void
.end method
