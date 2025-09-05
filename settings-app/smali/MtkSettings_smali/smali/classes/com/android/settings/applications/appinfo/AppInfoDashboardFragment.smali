.class public Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AppInfoDashboardFragment.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;,
        Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;,
        Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;
    }
.end annotation


# static fields
.field static final REQUEST_UNINSTALL:I = 0x0

.field static final UNINSTALL_ALL_USERS_MENU:I = 0x1

.field static final UNINSTALL_UPDATES:I = 0x2


# instance fields
.field private mAppActionButtonPreferenceController:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

.field private mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mAppsControlDisallowedBySystem:Z

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFinishing:Z

.field private mInitialized:Z

.field private mInstantAppButtonPreferenceController:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

.field private mListeningToPackageRemove:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageName:Ljava/lang/String;

.field final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mUpdatedSysApp:Z

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    .line 830
    new-instance v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$4;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;ZZ)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->onPackageRemoved()V

    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 4

    .line 537
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x327

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 540
    const-string v1, "AppInfoDashboard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 543
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 544
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    .line 545
    if-eqz p1, :cond_0

    .line 546
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 548
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppActionButtonPreferenceController:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->checkForceStop(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)V

    .line 549
    return-void
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    return-object v0

    .line 686
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 687
    if-eqz v0, :cond_1

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    .line 688
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 689
    if-nez v0, :cond_2

    .line 690
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 691
    :goto_1
    if-eqz v0, :cond_3

    .line 692
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    .line 695
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private isDisabledUntilUsed()Z
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSingleUser()Z
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    .line 633
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method private onPackageRemoved()V
    .locals 2

    .line 637
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->finishActivity(I)V

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 639
    return-void
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 1

    .line 730
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 731
    const-string v0, "chg"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 732
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/SettingsActivity;

    .line 733
    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    .line 734
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    .line 735
    return-void
.end method

.method public static startAppInfoFragment(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Landroid/os/Bundle;",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ")V"
        }
    .end annotation

    .line 554
    if-nez p2, :cond_0

    .line 555
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 557
    :cond_0
    const-string v0, "package"

    iget-object v1, p4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v0, "uid"

    iget-object p4, p4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    new-instance p4, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p3}, Lcom/android/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 560
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 561
    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 562
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 p1, 0x1

    .line 563
    invoke-virtual {p0, p3, p1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroid/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 564
    invoke-virtual {p3}, Lcom/android/settings/SettingsPreferenceFragment;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 566
    return-void
.end method

.method private stopListeningToPackageRemove()V
    .locals 2

    .line 823
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    .line 824
    return-void

    .line 826
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mListeningToPackageRemove:Z

    .line 827
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 828
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4

    .line 525
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->stopListeningToPackageRemove()V

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 528
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 529
    const-string p1, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 530
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/util/Pair;

    .line 530
    const/16 v3, 0x368

    invoke-virtual {p1, p2, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 532
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 533
    iput-boolean p3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDisableAfterUninstall:Z

    .line 534
    return-void
.end method


# virtual methods
.method addToCallbackList(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;)V
    .locals 1

    .line 290
    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    return-void
.end method

.method createDialog(II)Landroid/app/AlertDialog;
    .locals 4

    .line 474
    const p2, 0x7f120116    # @string/app_disable_dlg_positive 'Disable app'

    const v0, 0x7f120117    # @string/app_disable_dlg_text 'If you disable this app, Android and other apps may no longer function as intended.'

    const/4 v1, 0x0

    const v2, 0x7f120573    # @string/dlg_cancel 'Cancel'

    packed-switch p1, :pswitch_data_0

    .line 521
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInstantAppButtonPreferenceController:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    invoke-virtual {p2, p1}, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 494
    :pswitch_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$2;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 496
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 506
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 507
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 494
    return-object p1

    .line 476
    :pswitch_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 478
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 491
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 492
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 476
    return-object p1

    .line 509
    :pswitch_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f120690    # @string/force_stop_dlg_title 'Force stop?'

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f12068f    # @string/force_stop_dlg_text 'If you force stop an app, it may misbehave.'

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f120579    # @string/dlg_ok 'OK'

    new-instance v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$3;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 512
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 518
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 519
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 509
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->retrieveAppEntry()V

    .line 254
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 255
    const/4 p1, 0x0

    return-object p1

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    .line 263
    new-instance v3, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;

    invoke-direct {v3, p1, p0, v0, v2}, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v3, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    invoke-direct {v3, p1, p0, v0}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppActionButtonPreferenceController:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    .line 267
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppActionButtonPreferenceController:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 270
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    check-cast v4, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    goto :goto_0

    .line 275
    :cond_1
    new-instance v3, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    invoke-direct {v3, p1, p0, v0, v2}, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInstantAppButtonPreferenceController:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    .line 277
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInstantAppButtonPreferenceController:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v3, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    invoke-direct {v3, p1, p0, v0, v2}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v3, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-direct {v3, p1, p0, v2}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v2, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;

    invoke-direct {v2, p1, v0}, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v2, Lcom/android/settings/applications/appinfo/DefaultBrowserShortcutPreferenceController;

    invoke-direct {v2, p1, v0}, Lcom/android/settings/applications/appinfo/DefaultBrowserShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v2, Lcom/android/settings/applications/appinfo/DefaultPhoneShortcutPreferenceController;

    invoke-direct {v2, p1, v0}, Lcom/android/settings/applications/appinfo/DefaultPhoneShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v2, Lcom/android/settings/applications/appinfo/DefaultEmergencyShortcutPreferenceController;

    invoke-direct {v2, p1, v0}, Lcom/android/settings/applications/appinfo/DefaultEmergencyShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v2, Lcom/android/settings/applications/appinfo/DefaultSmsShortcutPreferenceController;

    invoke-direct {v2, p1, v0}, Lcom/android/settings/applications/appinfo/DefaultSmsShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    return-object v1
.end method

.method ensurePackageInfoAvailable(Landroid/app/Activity;)Z
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 325
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    .line 326
    const-string v0, "AppInfoDashboard"

    const-string v1, "Package info not available. Is this package already uninstalled?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 328
    const/4 p1, 0x0

    return p1

    .line 330
    :cond_0
    return v1
.end method

.method getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 248
    const-string v0, "AppInfoDashboard"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 224
    const/16 v0, 0x14

    return v0
.end method

.method getNumberOfUserWithPackageInstalled(Ljava/lang/String;)I
    .locals 6

    .line 643
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 644
    nop

    .line 646
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 649
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 651
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 652
    add-int/lit8 v1, v1, 0x1

    .line 656
    :cond_0
    goto :goto_1

    .line 654
    :catch_0
    move-exception v3

    .line 655
    const-string v3, "AppInfoDashboard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :goto_1
    goto :goto_0

    .line 659
    :cond_1
    return v1
.end method

.method getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 243
    const v0, 0x7f150016    # @xml/app_info_settings 'res/xml/app_info_settings.xml'

    return v0
.end method

.method handleForceStopButtonClick()V
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 618
    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    .line 619
    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_1

    .line 622
    nop

    .line 623
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 622
    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 625
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->showDialogInner(II)V

    .line 628
    :goto_0
    return-void
.end method

.method handleUninstallButtonClick()V
    .locals 6

    .line 569
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 570
    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    .line 571
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 574
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 575
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->stopListeningToPackageRemove()V

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 577
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 578
    const-string v4, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v5, 0x369

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v4, v0, v5, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 582
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 583
    return-void

    .line 585
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    invoke-static {v2, v0, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 587
    iget-boolean v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedBySystem:Z

    if-nez v4, :cond_3

    .line 588
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    invoke-static {v4, v0, v5}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 589
    :cond_2
    move v4, v3

    goto :goto_1

    .line 588
    :cond_3
    :goto_0
    nop

    .line 589
    move v4, v1

    :goto_1
    if-eqz v2, :cond_4

    if-nez v4, :cond_4

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    .line 591
    :cond_4
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_7

    .line 592
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isDisabledUntilUsed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 596
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isSingleUser()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 597
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->showDialogInner(II)V

    goto :goto_2

    .line 599
    :cond_5
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->showDialogInner(II)V

    goto :goto_2

    .line 602
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 603
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v4, 0x36b

    new-array v5, v3, [Landroid/util/Pair;

    .line 602
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 605
    new-instance v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Landroid/content/pm/ApplicationInfo;I)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    .line 607
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 609
    :cond_7
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800000

    and-int/2addr v2, v4

    if-nez v2, :cond_8

    .line 610
    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 612
    :cond_8
    invoke-direct {p0, v0, v3, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 614
    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 376
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 377
    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 395
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    move-result p1

    if-nez p1, :cond_0

    .line 396
    invoke-direct {p0, p2, p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startListeningToPackageRemove()V

    goto :goto_0

    .line 380
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 382
    iget-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDisableAfterUninstall:Z

    if-eqz p1, :cond_1

    .line 383
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDisableAfterUninstall:Z

    .line 384
    new-instance p3, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x3

    invoke-direct {p3, p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Landroid/content/pm/ApplicationInfo;I)V

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v0, p2, p1

    .line 386
    invoke-virtual {p3, p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    move-result p1

    if-nez p1, :cond_2

    .line 389
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->onPackageRemoved()V

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startListeningToPackageRemove()V

    .line 393
    nop

    .line 402
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAllSizesComputed()V
    .locals 0

    .line 761
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 7

    .line 156
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 158
    const-class v0, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 160
    const-class v0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 161
    const-class v0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;

    .line 163
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, p0}, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 165
    const-class v1, Lcom/android/settings/applications/appinfo/AppInstallerPreferenceCategoryController;

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppInstallerPreferenceCategoryController;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/appinfo/AppInstallerPreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 166
    const-class v0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 167
    const-class v0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 168
    const-class v0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 169
    const-class v0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 170
    const-class v0, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;

    .line 171
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p0}, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 173
    const-class v0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 174
    const-class v0, Lcom/android/settings/applications/appinfo/AppVersionPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/AppVersionPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/appinfo/AppVersionPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 175
    const-class v0, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 177
    const-class v0, Lcom/android/settings/applications/appinfo/WriteSystemSettingsPreferenceController;

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/WriteSystemSettingsPreferenceController;

    .line 179
    invoke-virtual {v0, p0}, Lcom/android/settings/applications/appinfo/WriteSystemSettingsPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 181
    const-class v1, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;

    .line 182
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;

    .line 183
    invoke-virtual {v1, p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 185
    const-class v3, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;

    .line 186
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;

    .line 187
    invoke-virtual {v3, p1}, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v3, p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 189
    const-class v5, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;

    .line 190
    invoke-virtual {p0, v5}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;

    .line 191
    invoke-virtual {v5, p1}, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v5, p0}, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 194
    const-class p1, Lcom/android/settings/applications/appinfo/AdvancedAppInfoPreferenceCategoryController;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appinfo/AdvancedAppInfoPreferenceCategoryController;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object v0, v6, v4

    aput-object v1, v6, v2

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/appinfo/AdvancedAppInfoPreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 196
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 200
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 201
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 203
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 204
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    .line 205
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPm:Landroid/content/pm/PackageManager;

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->ensurePackageInfoAvailable(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 208
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startListeningToPackageRemove()V

    .line 213
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setHasOptionsMenu(Z)V

    .line 214
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 335
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 336
    const/4 p2, 0x0

    const/4 v0, 0x2

    const v1, 0x7f12011b    # @string/app_factory_reset 'Uninstall updates'

    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 337
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 338
    const/4 v0, 0x1

    const v1, 0x7f120e3a    # @string/uninstall_all_users_text 'Uninstall for all users'

    invoke-interface {p1, p2, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 339
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 340
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->stopListeningToPackageRemove()V

    .line 219
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    .line 220
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 766
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 771
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 363
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 371
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 368
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 369
    return v1

    .line 365
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 366
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 756
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .line 775
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    .line 778
    :cond_0
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 310
    const-string p1, "AppInfoDashboard"

    const-string v0, "Package change irrelevant, skipping"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    .line 314
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 344
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 345
    return-void

    .line 347
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 348
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->shouldShowUninstallForAll(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 349
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    .line 350
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050007    # @bool/config_disable_uninstall_update 'false'

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 353
    iget-boolean v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedBySystem:Z

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 355
    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/RestrictedLockUtils;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 359
    :cond_3
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 751
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 229
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 231
    const-string v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 233
    const-string v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedBySystem:Z

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    .line 239
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    .line 746
    return-void
.end method

.method refreshUi()Z
    .locals 6

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->retrieveAppEntry()V

    .line 431
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 432
    return v1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    .line 436
    return v1

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 442
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;

    .line 443
    invoke-interface {v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;->refreshUi()V

    .line 444
    goto :goto_0

    .line 446
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInitialized:Z

    const/high16 v2, 0x800000

    const/4 v3, 0x1

    if-nez v0, :cond_4

    .line 448
    iput-boolean v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInitialized:Z

    .line 449
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    move v1, v3

    nop

    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mShowUninstalled:Z

    goto :goto_1

    .line 454
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v5, 0x400200

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 458
    iget-boolean v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mShowUninstalled:Z

    if-nez v4, :cond_6

    .line 462
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    move v1, v3

    nop

    :cond_5
    return v1

    .line 466
    :cond_6
    nop

    .line 469
    :goto_1
    return v3

    .line 464
    :catch_0
    move-exception v0

    .line 465
    return v1
.end method

.method retrieveAppEntry()V
    .locals 4

    .line 700
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 701
    if-nez v0, :cond_0

    .line 702
    return-void

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    if-nez v1, :cond_1

    .line 705
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 706
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 708
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    .line 709
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 710
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_2

    .line 713
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v2, 0x401240

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    .line 720
    const-string v1, "AppInfoDashboard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when retrieving package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 721
    :goto_0
    goto :goto_1

    .line 723
    :cond_2
    const-string v0, "AppInfoDashboard"

    const-string v1, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 726
    :goto_1
    return-void
.end method

.method shouldShowUninstallForAll(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 4

    .line 406
    nop

    .line 407
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 408
    goto :goto_1

    .line 409
    :cond_0
    if-nez p1, :cond_1

    .line 410
    goto :goto_1

    .line 411
    :cond_1
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 412
    goto :goto_1

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 415
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_4

    .line 416
    goto :goto_1

    .line 417
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_5

    .line 418
    goto :goto_1

    .line 419
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getNumberOfUserWithPackageInstalled(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v3, :cond_6

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    .line 421
    goto :goto_1

    .line 422
    :cond_6
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 423
    goto :goto_1

    .line 425
    :cond_7
    move v2, v1

    goto :goto_1

    .line 414
    :cond_8
    :goto_0
    nop

    .line 425
    :goto_1
    return v2
.end method

.method showDialogInner(II)V
    .locals 3

    .line 738
    invoke-static {p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;

    move-result-object p2

    .line 739
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 740
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method startListeningToPackageRemove()V
    .locals 3

    .line 813
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mListeningToPackageRemove:Z

    if-eqz v0, :cond_0

    .line 814
    return-void

    .line 816
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mListeningToPackageRemove:Z

    .line 817
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 818
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 820
    return-void
.end method
