.class public Lcom/android/settings/location/LocationForWorkPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "LocationForWorkPreferenceController.java"


# instance fields
.field private mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 41
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationBasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 59
    const-string v0, "managed_profile_location_switch"

    .line 60
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 61
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "managed_profile_location_switch"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    .line 45
    const-string v0, "managed_profile_location_switch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 46
    iget-object p1, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result p1

    .line 47
    iget-object v0, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_share_location"

    xor-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 48
    invoke-static {v3}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v3

    .line 47
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz p1, :cond_0

    .line 50
    const p1, 0x7f120db8    # @string/switch_on_text 'On'

    goto :goto_0

    :cond_0
    const p1, 0x7f120db7    # @string/switch_off_text 'Off'

    .line 49
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    .line 51
    const/4 p1, 0x1

    return p1

    .line 53
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onLocationModeChanged(IZ)V
    .locals 2

    .line 77
    iget-object p2, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p2}, Lcom/android/settingslib/RestrictedSwitchPreference;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/location/LocationForWorkPreferenceController;->isAvailable()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 80
    :cond_0
    iget-object p2, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    iget-object v0, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 82
    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 81
    invoke-virtual {p2, v0}, Lcom/android/settings/location/LocationEnabler;->getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    .line 83
    iget-object v0, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationEnabler;->isManagedProfileRestrictedByBase()Z

    move-result v0

    .line 84
    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 85
    iget-object p1, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 86
    iget-object p1, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 88
    :cond_1
    iget-object p2, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p2, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result p1

    .line 89
    iget-object p2, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p2, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 91
    nop

    .line 92
    const p2, 0x7f120db7    # @string/switch_off_text 'Off'

    if-nez p1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 96
    if-eqz v0, :cond_3

    .line 97
    goto :goto_0

    :cond_3
    const p1, 0x7f120db8    # @string/switch_on_text 'On'

    .line 99
    move p2, p1

    :goto_0
    iget-object p1, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    .line 101
    :goto_1
    return-void

    .line 78
    :cond_4
    :goto_2
    return-void
.end method
