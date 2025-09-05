.class public Lcom/android/settings/wifi/ChangeWifiStateDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "ChangeWifiStateDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAppBridge:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;)Ljava/lang/CharSequence;
    .locals 0

    .line 137
    invoke-virtual {p1}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->isPermissible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    const p1, 0x7f120144    # @string/app_permission_summary_allowed 'Allowed'

    goto :goto_0

    .line 139
    :cond_0
    const p1, 0x7f120145    # @string/app_permission_summary_not_allowed 'Not allowed'

    .line 137
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 2

    .line 125
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    if-eqz v0, :cond_0

    .line 126
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    .line 133
    move-object p1, v0

    goto :goto_0

    .line 130
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->getWifiSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    move-result-object p1

    .line 133
    :goto_0
    invoke-static {p0, p1}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->getSummary(Landroid/content/Context;Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private setCanChangeWifiState(Z)V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mPackageName:Ljava/lang/String;

    .line 97
    if-eqz p1, :cond_0

    .line 98
    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 96
    :goto_0
    const/16 v3, 0x47

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 99
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 0

    .line 73
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 78
    const/16 v0, 0x152

    return v0
.end method

.method protected logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 3

    .line 102
    if-eqz p1, :cond_0

    const/16 p1, 0x306

    goto :goto_0

    .line 103
    :cond_0
    const/16 p1, 0x307

    .line 104
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 106
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 57
    new-instance v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mAppBridge:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    .line 58
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 61
    const p1, 0x7f15002e    # @xml/change_wifi_state_details 'res/xml/change_wifi_state_details.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->addPreferencesFromResource(I)V

    .line 62
    const-string p1, "app_ops_settings_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    .line 65
    iget-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const v0, 0x7f12039e    # @string/change_wifi_state_app_detail_switch 'Allow app to control Wi-Fi'

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 84
    iget-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    .line 85
    invoke-virtual {p2}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->isPermissible()Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 86
    iget-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    invoke-virtual {p1}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->isPermissible()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->setCanChangeWifiState(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->refreshUi()Z

    .line 89
    :cond_0
    return v0

    .line 91
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected refreshUi()Z
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mAppBridge:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->getWifiSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->isPermissible()Z

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    iget-boolean v1, v1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->permissionDeclared:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 120
    const/4 v0, 0x1

    return v0

    .line 111
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
