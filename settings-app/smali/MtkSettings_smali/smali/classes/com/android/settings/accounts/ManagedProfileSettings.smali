.class public Lcom/android/settings/accounts/ManagedProfileSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ManagedProfileSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mContactPrefrence:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

.field private mManagedUser:Landroid/os/UserHandle;

.field private mUserManager:Landroid/os/UserManager;

.field private mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/ManagedProfileSettings;)Landroid/os/UserHandle;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/accounts/ManagedProfileSettings;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->updateWorkModePreference()V

    return-void
.end method

.method private getManagedUserFromArgument()Landroid/os/UserHandle;
    .locals 3

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 95
    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method private loadDataAndPopulateUi()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->updateWorkModePreference()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "managed_profile_contact_remote_search"

    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    .line 112
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 111
    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    invoke-virtual {v1, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    .line 116
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 115
    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRemoteContactSearchDisallowed(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 119
    :cond_2
    return-void
.end method

.method private updateWorkModePreference()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    .line 128
    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 130
    const v0, 0x7f121121    # @string/work_mode_on_summary 'Managed by your organization'

    goto :goto_0

    .line 131
    :cond_0
    const v0, 0x7f121120    # @string/work_mode_off_summary 'Apps and notifications are off'

    .line 129
    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 132
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 123
    const/16 v0, 0x191

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const p1, 0x7f15006d    # @xml/managed_profile_settings 'res/xml/managed_profile_settings.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManagedProfileSettings;->addPreferencesFromResource(I)V

    .line 65
    const-string p1, "work_mode"

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManagedProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 66
    iget-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    const-string p1, "contacts_search"

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManagedProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 68
    iget-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContext:Landroid/content/Context;

    .line 70
    const-string p1, "user"

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManagedProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    .line 71
    invoke-direct {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getManagedUserFromArgument()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    .line 72
    iget-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    if-nez p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 75
    :cond_0
    new-instance p1, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/ManagedProfileSettings;Lcom/android/settings/accounts/ManagedProfileSettings$1;)V

    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    .line 76
    iget-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 87
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 138
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 139
    xor-int/2addr p1, v1

    iget-object p2, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, v0}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    .line 140
    return v1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 143
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v1, :cond_1

    .line 144
    move v2, v1

    goto :goto_0

    .line 143
    :cond_1
    nop

    .line 144
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "managed_profile_contact_remote_search"

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    .line 145
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 144
    invoke-static {p1, p2, v2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 146
    return v1

    .line 148
    :cond_2
    return v2
.end method

.method public onResume()V
    .locals 0

    .line 81
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->loadDataAndPopulateUi()V

    .line 83
    return-void
.end method
