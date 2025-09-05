.class public Lcom/android/settings/users/AddUserWhenLockedPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AddUserWhenLockedPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mPrefKey:Ljava/lang/String;

.field private mShouldUpdateUserList:Z

.field private final mUserCaps:Lcom/android/settings/users/UserCapabilities;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mPrefKey:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    .line 42
    if-eqz p3, :cond_0

    .line 43
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {v0}, Lcom/android/settings/users/UserCapabilities;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    .line 80
    invoke-virtual {v0}, Lcom/android/settings/users/UserCapabilities;->disallowAddUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {v0}, Lcom/android/settings/users/UserCapabilities;->disallowAddUserSetByAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 1

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mShouldUpdateUserList:Z

    .line 68
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 59
    check-cast p2, Ljava/lang/Boolean;

    .line 60
    iget-object p1, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "add_users_when_locked"

    .line 61
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 60
    move p2, v1

    goto :goto_0

    .line 61
    :cond_0
    const/4 p2, 0x0

    .line 60
    :goto_0
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 62
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 72
    iget-boolean v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mShouldUpdateUserList:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-object v1, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    .line 75
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 49
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 51
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "add_users_when_locked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 52
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 53
    nop

    .line 54
    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {v0}, Lcom/android/settings/users/UserCapabilities;->disallowAddUser()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {v0}, Lcom/android/settings/users/UserCapabilities;->getEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 53
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 55
    return-void
.end method
