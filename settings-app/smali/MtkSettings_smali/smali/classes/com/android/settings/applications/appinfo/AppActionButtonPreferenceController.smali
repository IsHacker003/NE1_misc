.class public Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppActionButtonPreferenceController.java"

# interfaces
.implements Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;


# static fields
.field private static final KEY_ACTION_BUTTONS:Ljava/lang/String; = "action_buttons"

.field private static final TAG:Ljava/lang/String; = "AppActionButtonControl"


# instance fields
.field mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

.field private final mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;)V
    .locals 1

    .line 88
    const-string v0, "action_buttons"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mHomePackages:Ljava/util/HashSet;

    .line 76
    new-instance v0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController$1;-><init>(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 90
    iput-object p3, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPackageName:Ljava/lang/String;

    .line 91
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    iput p2, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mUserId:I

    .line 92
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 93
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->updateForceStopButton(Z)V

    return-void
.end method

.method public static synthetic lambda$initUninstallButtons$0(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;Landroid/view/View;)V
    .locals 0

    .line 223
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->handleUninstallButtonClick()V

    return-void
.end method

.method public static synthetic lambda$updateForceStopButton$1(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;Landroid/view/View;)V
    .locals 0

    .line 285
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->handleForceStopButtonClick()V

    return-void
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 319
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 322
    :catch_0
    move-exception p1

    .line 327
    :cond_1
    return v0
.end method

.method private updateForceStopButton(Z)V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    .line 282
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    .line 283
    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object p1

    .line 285
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/settings/applications/appinfo/-$$Lambda$AppActionButtonPreferenceController$oIXjjHquqzr1XuPAGEk55khGTJ0;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/-$$Lambda$AppActionButtonPreferenceController$oIXjjHquqzr1XuPAGEk55khGTJ0;-><init>(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;)V

    .line 284
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    .line 286
    return-void
.end method


# virtual methods
.method checkForceStop(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)V
    .locals 10

    .line 289
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 291
    const-string p1, "AppActionButtonControl"

    const-string p2, "User can\'t force stop device admin"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0, v1}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->updateForceStopButton(Z)V

    goto/16 :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 294
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 293
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->isPackageStateProtected(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    const-string p1, "AppActionButtonControl"

    const-string p2, "User can\'t force stop protected packages"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0, v1}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->updateForceStopButton(Z)V

    goto/16 :goto_0

    .line 297
    :cond_1
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p2}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 298
    invoke-direct {p0, v1}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->updateForceStopButton(Z)V

    .line 299
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Visible(Z)Lcom/android/settings/widget/ActionButtonPreference;

    goto :goto_0

    .line 300
    :cond_2
    iget-object p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x200000

    and-int/2addr p2, v0

    const/4 v0, 0x1

    if-nez p2, :cond_3

    .line 303
    const-string p1, "AppActionButtonControl"

    const-string p2, "App is not explicitly stopped"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->updateForceStopButton(Z)V

    goto :goto_0

    .line 306
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string p2, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    .line 307
    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 308
    const-string p2, "android.intent.extra.PACKAGES"

    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-virtual {v2, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string p2, "android.intent.extra.UID"

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    const-string p2, "android.intent.extra.user_handle"

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v2, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string p2, "AppActionButtonControl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending broadcast to query restart status for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 316
    :goto_0
    return-void
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 105
    const-string v0, "action_buttons"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ActionButtonPreference;

    .line 106
    const v0, 0x7f12068e    # @string/force_stop 'Force stop'

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object p1

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object p1

    .line 108
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    .line 109
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0
.end method

.method handleDisableable(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)Z
    .locals 5

    .line 246
    nop

    .line 250
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mHomePackages:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f12054c    # @string/disable_text 'Disable'

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    .line 251
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v0, v4, p2}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, v0}, Lcust/settings/CustomizedUtils;->isInDisableAppList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 258
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    .line 259
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object p1

    .line 260
    invoke-virtual {p1, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    goto :goto_1

    .line 262
    :cond_1
    iget-object p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean p2, p2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    .line 264
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    .line 265
    invoke-virtual {p2, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object p2

    .line 266
    invoke-virtual {p2, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 267
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    invoke-interface {p2}, Lcom/android/settings/applications/ApplicationFeatureProvider;->getKeepEnabledPackages()Ljava/util/Set;

    move-result-object p2

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 268
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 276
    xor-int/2addr v1, p1

    goto :goto_2

    .line 270
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    const p2, 0x7f1205cb    # @string/enable_text 'Enable'

    .line 271
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object p1

    .line 272
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 273
    goto :goto_2

    .line 253
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    .line 254
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object p1

    .line 255
    invoke-virtual {p1, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 276
    :goto_1
    move v1, v3

    :goto_2
    return v1
.end method

.method initUninstallButtonForUserApp()Z
    .locals 4

    .line 229
    nop

    .line 230
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 231
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 232
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 235
    nop

    .line 240
    :goto_0
    move v0, v2

    goto :goto_1

    .line 236
    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    nop

    .line 238
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Visible(Z)Lcom/android/settings/widget/ActionButtonPreference;

    goto :goto_0

    .line 240
    :cond_1
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    const v3, 0x7f120e3c    # @string/uninstall_text 'Uninstall'

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 241
    return v0
.end method

.method initUninstallButtons(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)V
    .locals 7

    .line 150
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 152
    move v0, v1

    goto :goto_0

    .line 150
    :cond_0
    nop

    .line 152
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->handleDisableable(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->initUninstallButtonForUserApp()Z

    move-result v3

    .line 159
    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    nop

    .line 166
    move v3, v2

    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->isProfileOrDeviceOwner(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 167
    nop

    .line 171
    move v3, v2

    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 172
    nop

    .line 176
    move v3, v2

    :cond_4
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 177
    nop

    .line 186
    move v3, v2

    :cond_5
    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mHomePackages:Ljava/util/HashSet;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 187
    if-eqz v0, :cond_6

    .line 188
    nop

    .line 204
    move p2, v2

    goto :goto_3

    .line 190
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 192
    if-nez v0, :cond_8

    .line 195
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    if-le p2, v1, :cond_7

    goto :goto_2

    .line 204
    :cond_7
    move v1, v2

    :goto_2
    move p2, v1

    goto :goto_3

    .line 199
    :cond_8
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 204
    xor-int/2addr p2, v1

    goto :goto_3

    :cond_9
    move p2, v3

    :goto_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_control_apps"

    iget v3, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mUserId:I

    invoke-static {v0, v1, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 206
    nop

    .line 210
    move p2, v2

    :cond_a
    :try_start_0
    const-string v0, "webviewupdate"

    .line 212
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    .line 213
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, p1}, Landroid/webkit/IWebViewUpdateService;->isFallbackPackage(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_b

    .line 214
    nop

    .line 218
    move p2, v2

    .line 220
    :cond_b
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 221
    if-eqz p2, :cond_c

    .line 223
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    new-instance p2, Lcom/android/settings/applications/appinfo/-$$Lambda$AppActionButtonPreferenceController$Ww2IUjWxdICZ6sY_1SuD__XEpOY;

    invoke-direct {p2, p0}, Lcom/android/settings/applications/appinfo/-$$Lambda$AppActionButtonPreferenceController$Ww2IUjWxdICZ6sY_1SuD__XEpOY;-><init>(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    .line 225
    :cond_c
    return-void

    .line 216
    :catch_0
    move-exception p1

    .line 217
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public refreshUi()V
    .locals 7

    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 128
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 129
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 130
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 131
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 132
    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 136
    if-eqz v4, :cond_3

    .line 137
    const-string v6, "android.app.home.alternate"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-direct {p0, v4, v5}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 139
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->checkForceStop(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)V

    .line 145
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->initUninstallButtons(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)V

    .line 146
    return-void
.end method
