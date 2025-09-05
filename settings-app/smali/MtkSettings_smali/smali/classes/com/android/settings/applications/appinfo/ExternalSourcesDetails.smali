.class public Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "ExternalSourcesDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAppBridge:Lcom/android/settings/applications/AppStateInstallAppsBridge;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

.field private mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getPreferenceSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 3

    .line 82
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 83
    const-string v1, "no_install_unknown_sources"

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 85
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    .line 86
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 94
    new-instance v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 95
    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    const p1, 0x7f120144    # @string/app_permission_summary_allowed 'Allowed'

    goto :goto_0

    .line 99
    :cond_0
    const p1, 0x7f120145    # @string/app_permission_summary_not_allowed 'Not allowed'

    .line 97
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 91
    :pswitch_0
    const p1, 0x7f12054d    # @string/disabled 'Disabled'

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 89
    :cond_1
    :pswitch_1
    const p1, 0x7f12054f    # @string/disabled_by_admin 'Disabled by admin'

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCanInstallApps(Z)V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    .line 105
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 103
    :goto_0
    const/16 v3, 0x42

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 106
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 0

    .line 137
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 142
    const/16 v0, 0x328

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 55
    new-instance v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppBridge:Lcom/android/settings/applications/AppStateInstallAppsBridge;

    .line 56
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 57
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mUserManager:Landroid/os/UserManager;

    .line 59
    const p1, 0x7f15005b    # @xml/external_sources_details 'res/xml/external_sources_details.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->addPreferencesFromResource(I)V

    .line 60
    const-string p1, "external_sources_settings_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 61
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 66
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 67
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 68
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result p1

    if-eq p2, p1, :cond_2

    .line 69
    const-class p1, Lcom/android/settings/Settings$ManageAppExternalSourcesActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 71
    if-eqz p2, :cond_0

    const/4 v1, -0x1

    nop

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->setResult(I)V

    .line 73
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->setCanInstallApps(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->refreshUi()Z

    .line 76
    :cond_2
    const/4 p1, 0x1

    return p1

    .line 78
    :cond_3
    return v1
.end method

.method protected refreshUi()Z
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_install_unknown_sources"

    .line 114
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 113
    invoke-virtual {v0, v2, v3}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const v3, 0x7f12054d    # @string/disabled 'Disabled'

    invoke-virtual {v0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 118
    return v2

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v3, "no_install_unknown_sources"

    invoke-virtual {v0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    return v2

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mAppBridge:Lcom/android/settings/applications/AppStateInstallAppsBridge;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    .line 126
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isPotentialAppSource()Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 129
    return v2

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 132
    return v2

    .line 111
    :cond_4
    :goto_0
    return v1
.end method
