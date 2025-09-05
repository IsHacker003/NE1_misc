.class public Lcom/android/settings/applications/appinfo/DrawOverlayDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "DrawOverlayDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final APP_OPS_OP_CODE:[I


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mOverlayBridge:Lcom/android/settings/applications/AppStateOverlayBridge;

.field private mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchPref:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x18

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->APP_OPS_OP_CODE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;)Ljava/lang/CharSequence;
    .locals 0

    .line 179
    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 180
    const p1, 0x7f120144    # @string/app_permission_summary_allowed 'Allowed'

    goto :goto_0

    :cond_0
    const p1, 0x7f120145    # @string/app_permission_summary_not_allowed 'Not allowed'

    .line 179
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 2

    .line 166
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    if-eqz v0, :cond_0

    .line 167
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    .line 175
    move-object p1, v0

    goto :goto_0

    .line 171
    :cond_1
    new-instance v0, Lcom/android/settings/applications/AppStateOverlayBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/settings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object p1

    .line 175
    :goto_0
    invoke-static {p0, p1}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private setCanDrawOverlay(Z)V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    .line 126
    if-eqz p1, :cond_0

    .line 127
    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 125
    :goto_0
    const/16 v3, 0x18

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 128
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 0

    .line 156
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 161
    const/16 v0, 0xdd

    return v0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 132
    if-eqz p1, :cond_0

    const/16 p1, 0x302

    goto :goto_0

    .line 133
    :cond_0
    const/16 p1, 0x303

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 136
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 71
    new-instance v0, Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayBridge:Lcom/android/settings/applications/AppStateOverlayBridge;

    .line 72
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 75
    const p1, 0x7f150055    # @xml/draw_overlay_permissions_details 'res/xml/draw_overlay_permissions_details.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->addPreferencesFromResource(I)V

    .line 76
    const-string p1, "app_ops_settings_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    .line 79
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSettingsIntent:Landroid/content/Intent;

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->onDestroy()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayBridge:Lcom/android/settings/applications/AppStateOverlayBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateOverlayBridge;->release()V

    .line 104
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 93
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->onPause()V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 96
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 98
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 114
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {p2}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 115
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->setCanDrawOverlay(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->refreshUi()Z

    .line 118
    :cond_0
    return v0

    .line 120
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 108
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 87
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->onResume()V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 89
    return-void
.end method

.method protected refreshUi()Z
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayBridge:Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    .line 143
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-boolean v1, v1, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->permissionDeclared:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-boolean v1, v1, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->controlEnabled:Z

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSettingsIntent:Landroid/content/Intent;

    const/16 v3, 0x80

    iget v4, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mUserId:I

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 151
    return v2
.end method
