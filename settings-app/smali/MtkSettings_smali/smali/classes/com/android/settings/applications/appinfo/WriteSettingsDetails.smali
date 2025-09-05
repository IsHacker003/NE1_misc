.class public Lcom/android/settings/applications/appinfo/WriteSettingsDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "WriteSettingsDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final APP_OPS_OP_CODE:[I


# instance fields
.field private mAppBridge:Lcom/android/settings/applications/AppStateWriteSettingsBridge;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

.field private mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x17

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->APP_OPS_OP_CODE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;)Ljava/lang/CharSequence;
    .locals 0

    .line 162
    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    const p1, 0x7f120144    # @string/app_permission_summary_allowed 'Allowed'

    goto :goto_0

    .line 164
    :cond_0
    const p1, 0x7f120145    # @string/app_permission_summary_not_allowed 'Not allowed'

    .line 162
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 2

    .line 149
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    if-eqz v0, :cond_0

    .line 150
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    .line 158
    move-object p1, v0

    goto :goto_0

    .line 154
    :cond_1
    new-instance v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object p1

    .line 158
    :goto_0
    invoke-static {p0, p1}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private setCanWriteSettings(Z)V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mPackageName:Ljava/lang/String;

    .line 101
    if-eqz p1, :cond_0

    .line 102
    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 100
    :goto_0
    const/16 v3, 0x17

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 103
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 0

    .line 139
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 144
    const/16 v0, 0xdd

    return v0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 3

    .line 106
    if-eqz p1, :cond_0

    const/16 p1, 0x306

    goto :goto_0

    .line 107
    :cond_0
    const/16 p1, 0x307

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 67
    new-instance v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mAppBridge:Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    .line 68
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 70
    const p1, 0x7f1500c9    # @xml/write_system_settings_permissions_details 'res/xml/write_system_settings_permissions_details.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->addPreferencesFromResource(I)V

    .line 71
    const-string p1, "app_ops_settings_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    .line 73
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.USAGE_ACCESS_CONFIG"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mPackageName:Ljava/lang/String;

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mSettingsIntent:Landroid/content/Intent;

    .line 78
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 88
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    .line 89
    invoke-virtual {p2}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 90
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->setCanWriteSettings(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->refreshUi()Z

    .line 93
    :cond_0
    return v0

    .line 95
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 82
    const/4 p1, 0x0

    return p1
.end method

.method protected refreshUi()Z
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mAppBridge:Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-boolean v1, v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->permissionDeclared:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mSettingsIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->mUserId:I

    const/16 v3, 0x80

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 134
    const/4 v0, 0x1

    return v0
.end method
