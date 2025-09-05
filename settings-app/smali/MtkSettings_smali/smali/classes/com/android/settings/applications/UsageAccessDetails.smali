.class public Lcom/android/settings/applications/UsageAccessDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "UsageAccessDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

.field private mUsageBridge:Lcom/android/settings/applications/AppStateUsageBridge;

.field private mUsageDesc:Landroid/support/v7/preference/Preference;

.field private mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private setHasAccess(Z)V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/UsageAccessDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    .line 112
    nop

    .line 111
    xor-int/lit8 p1, p1, 0x1

    const/16 v3, 0x2b

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 113
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 0

    .line 157
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 162
    const/16 v0, 0xb7

    return v0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 117
    if-eqz p1, :cond_0

    const/16 p1, 0x30f

    goto :goto_0

    .line 118
    :cond_0
    const/16 p1, 0x310

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 121
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 65
    new-instance v0, Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageBridge:Lcom/android/settings/applications/AppStateUsageBridge;

    .line 66
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 67
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 69
    const p1, 0x7f15001a    # @xml/app_ops_permissions_details 'res/xml/app_ops_permissions_details.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/UsageAccessDetails;->addPreferencesFromResource(I)V

    .line 70
    const-string p1, "app_ops_settings_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    .line 71
    const-string p1, "app_ops_settings_description"

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageDesc:Landroid/support/v7/preference/Preference;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    const v0, 0x7f120e78    # @string/usage_access 'Usage access'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(I)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const v0, 0x7f120a1a    # @string/permit_usage_access 'Permit usage access'

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageDesc:Landroid/support/v7/preference/Preference;

    const v0, 0x7f120e79    # @string/usage_access_description 'Usage access allows an app to track what other apps you’re using and how often, as well as your carr ...'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 77
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.USAGE_ACCESS_CONFIG"

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    .line 82
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_2

    .line 92
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {p2}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result p2

    if-eq p1, p2, :cond_1

    .line 93
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object p2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x1080343    # @android:drawable/ic_dialog_close_normal_holo

    .line 95
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x1040014    # @android:string/dialog_alert_title

    .line 96
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f121126    # @string/work_profile_usage_access_warning 'Turning off usage access for this app doesn't prevent your admin from tracking data usage for apps i ...'

    .line 97
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1209fe    # @string/okay 'OK'

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/UsageAccessDetails;->setHasAccess(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->refreshUi()Z

    .line 104
    :cond_1
    return v0

    .line 106
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 86
    const/4 p1, 0x0

    return p1
.end method

.method protected refreshUi()Z
    .locals 5

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    return v1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    .line 130
    return v1

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageBridge:Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateUsageBridge;->getUsageInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    .line 135
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    iget-boolean v1, v1, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->permissionDeclared:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    const/16 v2, 0x80

    iget v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUserId:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_2

    .line 142
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 143
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 145
    if-eqz v1, :cond_2

    const-string v0, "android.settings.metadata.USAGE_ACCESS_REASON"

    .line 146
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const-string v2, "android.settings.metadata.USAGE_ACCESS_REASON"

    .line 148
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
