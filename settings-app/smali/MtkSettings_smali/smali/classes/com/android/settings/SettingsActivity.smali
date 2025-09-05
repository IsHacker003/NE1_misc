.class public Lcom/android/settings/SettingsActivity;
.super Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Lcom/android/settings/ButtonBarHandler;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

.field private mFragmentClass:Ljava/lang/String;

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field mIsInDemoMode:Z

.field private mIsShowingDashboard:Z

.field private mNextButton:Landroid/widget/Button;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;-><init>()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    .line 163
    new-instance v0, Lcom/android/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$1;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mIsInDemoMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsActivity;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/SettingsActivity;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->doUpdateTilesList()V

    return-void
.end method

.method private doUpdateTilesList()V
    .locals 15

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 673
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 674
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v2

    .line 675
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    .line 676
    nop

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 678
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    new-instance v6, Landroid/content/ComponentName;

    const-class v7, Lcom/android/settings/Settings$WifiSettingsActivity;

    .line 680
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "android.hardware.wifi"

    .line 681
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    .line 679
    invoke-direct {p0, v5, v6, v7, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_0

    .line 683
    move v6, v7

    goto :goto_0

    .line 679
    :cond_0
    nop

    .line 683
    move v6, v8

    :goto_0
    new-instance v9, Landroid/content/ComponentName;

    const-class v10, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    .line 684
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "android.hardware.bluetooth"

    .line 685
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 683
    invoke-direct {p0, v5, v9, v0, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v6, :cond_1

    goto :goto_1

    .line 691
    :cond_1
    move v0, v7

    goto :goto_2

    .line 683
    :cond_2
    :goto_1
    nop

    .line 691
    move v0, v8

    :goto_2
    new-instance v6, Landroid/content/ComponentName;

    const-class v9, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    .line 692
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v9

    .line 691
    invoke-direct {p0, v5, v6, v9, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    .line 696
    :cond_3
    move v0, v7

    goto :goto_4

    .line 691
    :cond_4
    :goto_3
    nop

    .line 696
    move v0, v8

    :goto_4
    new-instance v6, Landroid/content/ComponentName;

    const-class v9, Lcom/android/settings/Settings$ConnectedDeviceDashboardActivity;

    .line 698
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-static {p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v9

    .line 696
    xor-int/2addr v9, v8

    invoke-direct {p0, v5, v6, v9, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v0, :cond_5

    goto :goto_5

    .line 702
    :cond_5
    move v0, v7

    goto :goto_6

    .line 696
    :cond_6
    :goto_5
    nop

    .line 702
    move v0, v8

    :goto_6
    new-instance v6, Landroid/content/ComponentName;

    const-class v9, Lcom/android/settings/Settings$SimSettingsActivity;

    .line 703
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-static {p0}, Lcom/android/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v9

    .line 702
    invoke-direct {p0, v5, v6, v9, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v0, :cond_7

    goto :goto_7

    .line 707
    :cond_7
    move v0, v7

    goto :goto_8

    .line 702
    :cond_8
    :goto_7
    nop

    .line 707
    move v0, v8

    :goto_8
    new-instance v6, Landroid/content/ComponentName;

    const-class v9, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    .line 708
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    .line 707
    invoke-direct {p0, v5, v6, v9, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v6

    if-nez v6, :cond_a

    if-eqz v0, :cond_9

    goto :goto_9

    .line 711
    :cond_9
    move v0, v7

    goto :goto_a

    .line 707
    :cond_a
    :goto_9
    nop

    .line 711
    move v0, v8

    :goto_a
    const-string v6, "settings_data_usage_v2"

    .line 712
    invoke-static {p0, v6}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 714
    new-instance v9, Landroid/content/ComponentName;

    const-class v10, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    .line 715
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v10

    if-eqz v10, :cond_b

    if-eqz v6, :cond_b

    .line 714
    move v10, v8

    goto :goto_b

    .line 716
    :cond_b
    nop

    .line 714
    move v10, v7

    :goto_b
    invoke-direct {p0, v5, v9, v10, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v9

    if-nez v9, :cond_d

    if-eqz v0, :cond_c

    goto :goto_c

    .line 719
    :cond_c
    move v0, v7

    goto :goto_d

    .line 714
    :cond_d
    :goto_c
    nop

    .line 719
    move v0, v8

    :goto_d
    new-instance v9, Landroid/content/ComponentName;

    const-class v10, Lcom/android/settings/Settings$DataUsageSummaryLegacyActivity;

    .line 720
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v10

    if-eqz v10, :cond_e

    if-nez v6, :cond_e

    .line 719
    move v6, v8

    goto :goto_e

    .line 721
    :cond_e
    nop

    .line 719
    move v6, v7

    :goto_e
    invoke-direct {p0, v5, v9, v6, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v6

    if-nez v6, :cond_10

    if-eqz v0, :cond_f

    goto :goto_f

    .line 724
    :cond_f
    move v0, v7

    goto :goto_10

    .line 719
    :cond_10
    :goto_f
    nop

    .line 724
    move v0, v8

    :goto_10
    new-instance v6, Landroid/content/ComponentName;

    const-class v9, Lcom/android/settings/Settings$UserSettingsActivity;

    .line 725
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 727
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v9

    if-nez v9, :cond_11

    .line 724
    move v9, v8

    goto :goto_11

    .line 727
    :cond_11
    nop

    .line 724
    move v9, v7

    :goto_11
    invoke-direct {p0, v5, v6, v9, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v6

    if-nez v6, :cond_13

    if-eqz v0, :cond_12

    goto :goto_12

    .line 730
    :cond_12
    move v0, v7

    goto :goto_13

    .line 724
    :cond_13
    :goto_12
    nop

    .line 730
    move v0, v8

    :goto_13
    new-instance v6, Landroid/content/ComponentName;

    const-class v9, Lcom/android/settings/Settings$NetworkDashboardActivity;

    .line 731
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-static {p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v9

    .line 730
    xor-int/2addr v9, v8

    invoke-direct {p0, v5, v6, v9, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v6

    if-nez v6, :cond_15

    if-eqz v0, :cond_14

    goto :goto_14

    .line 735
    :cond_14
    move v0, v7

    goto :goto_15

    .line 730
    :cond_15
    :goto_14
    nop

    .line 735
    move v0, v8

    :goto_15
    new-instance v6, Landroid/content/ComponentName;

    const-class v9, Lcom/android/settings/Settings$DateTimeSettingsActivity;

    .line 736
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-static {p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v9

    .line 735
    xor-int/2addr v9, v8

    invoke-direct {p0, v5, v6, v9, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v6

    if-nez v6, :cond_17

    if-eqz v0, :cond_16

    goto :goto_16

    .line 745
    :cond_16
    move v0, v7

    goto :goto_17

    .line 735
    :cond_17
    :goto_16
    nop

    .line 745
    move v0, v8

    :goto_17
    invoke-static {p0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 746
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-nez v6, :cond_18

    invoke-static {p0}, Lcust/settings/CustomizedUtils;->isInDemoMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 748
    move v6, v8

    goto :goto_18

    .line 746
    :cond_18
    nop

    .line 748
    move v6, v7

    :goto_18
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v9

    if-nez v9, :cond_1a

    invoke-virtual {v1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_19

    .line 749
    :cond_19
    move v1, v7

    goto :goto_1a

    .line 748
    :cond_1a
    :goto_19
    nop

    .line 749
    move v1, v8

    :goto_1a
    new-instance v9, Landroid/content/ComponentName;

    const-class v10, Lcom/android/settings/Settings$DevelopmentSettingsDashboardActivity;

    .line 750
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-direct {p0, v5, v9, v6, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v6

    if-nez v6, :cond_1c

    if-eqz v0, :cond_1b

    goto :goto_1b

    .line 755
    :cond_1b
    move v0, v7

    goto :goto_1c

    .line 749
    :cond_1c
    :goto_1b
    nop

    .line 755
    move v0, v8

    :goto_1c
    new-instance v6, Landroid/content/ComponentName;

    const-class v9, Lcom/android/settings/backup/BackupSettingsActivity;

    .line 756
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-direct {p0, v5, v6, v8, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v6

    if-nez v6, :cond_1e

    if-eqz v0, :cond_1d

    goto :goto_1d

    .line 759
    :cond_1d
    move v0, v7

    goto :goto_1e

    .line 755
    :cond_1e
    :goto_1d
    nop

    .line 759
    move v0, v8

    :goto_1e
    new-instance v6, Landroid/content/ComponentName;

    const-class v9, Lcom/android/settings/Settings$WifiDisplaySettingsActivity;

    .line 760
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-static {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isAvailable(Landroid/content/Context;)Z

    move-result v9

    .line 759
    invoke-direct {p0, v5, v6, v9, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v6

    if-nez v6, :cond_20

    if-eqz v0, :cond_1f

    goto :goto_1f

    .line 765
    :cond_1f
    move v0, v7

    goto :goto_20

    .line 759
    :cond_20
    :goto_1f
    nop

    .line 765
    move v0, v8

    .line 766
    :goto_20
    invoke-virtual {v3}, Lcom/android/settings/overlay/FeatureFactory;->getAccountFeatureProvider()Lcom/android/settings/accounts/AccountFeatureProvider;

    move-result-object v3

    .line 767
    invoke-interface {v3, p0}, Lcom/android/settings/accounts/AccountFeatureProvider;->isAboutPhoneV2Enabled(Landroid/content/Context;)Z

    move-result v3

    .line 768
    new-instance v6, Landroid/content/ComponentName;

    const-class v9, Lcom/android/settings/Settings$MyDeviceInfoActivity;

    .line 769
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-direct {p0, v5, v6, v3, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v6

    if-nez v6, :cond_22

    if-eqz v0, :cond_21

    goto :goto_21

    .line 772
    :cond_21
    move v0, v7

    goto :goto_22

    .line 768
    :cond_22
    :goto_21
    nop

    .line 772
    move v0, v8

    :goto_22
    new-instance v6, Landroid/content/ComponentName;

    const-class v9, Lcom/android/settings/Settings$DeviceInfoSettingsActivity;

    .line 773
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    xor-int/2addr v3, v8

    invoke-direct {p0, v5, v6, v3, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v3

    if-nez v3, :cond_24

    if-eqz v0, :cond_23

    goto :goto_23

    .line 778
    :cond_23
    move v0, v7

    goto :goto_24

    .line 772
    :cond_24
    :goto_23
    nop

    .line 778
    move v0, v8

    :goto_24
    invoke-direct {p0, v5}, Lcom/android/settings/SettingsActivity;->handleCustomizedDemoMode(Ljava/lang/StringBuilder;)Z

    move-result v3

    if-nez v3, :cond_26

    if-eqz v0, :cond_25

    goto :goto_25

    .line 781
    :cond_25
    move v0, v7

    goto :goto_26

    .line 778
    :cond_26
    :goto_25
    nop

    .line 781
    move v0, v8

    :goto_26
    if-nez v2, :cond_2e

    .line 784
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v3}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v3

    .line 785
    monitor-enter v3

    .line 786
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 787
    invoke-virtual {v9}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v10

    .line 788
    move v11, v0

    move v0, v7

    :goto_28
    if-ge v0, v10, :cond_2c

    .line 789
    invoke-virtual {v9, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 790
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 791
    sget-object v14, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    invoke-static {v14, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_28

    if-eqz v1, :cond_27

    const-class v14, Lcom/android/settings/Settings$DevelopmentSettingsDashboardActivity;

    .line 793
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    .line 794
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27

    goto :goto_29

    .line 795
    :cond_27
    move v13, v7

    goto :goto_2a

    .line 794
    :cond_28
    :goto_29
    nop

    .line 795
    move v13, v8

    :goto_2a
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2b

    if-nez v13, :cond_2b

    .line 797
    nop

    .line 798
    invoke-direct {p0, v5, v12, v7, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v12

    if-nez v12, :cond_2a

    if-eqz v11, :cond_29

    goto :goto_2b

    .line 788
    :cond_29
    move v11, v7

    goto :goto_2c

    .line 798
    :cond_2a
    :goto_2b
    nop

    .line 788
    move v11, v8

    :cond_2b
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 802
    :cond_2c
    nop

    .line 786
    move v0, v11

    goto :goto_27

    .line 803
    :cond_2d
    monitor-exit v3

    goto :goto_2d

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 807
    :cond_2e
    :goto_2d
    if-eqz v0, :cond_2f

    .line 808
    const-string v0, "SettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabled state changed for some tiles, reloading all categories "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 808
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->updateCategories()V

    goto :goto_2e

    .line 812
    :cond_2f
    const-string v0, "SettingsActivity"

    const-string v1, "No enabled state changed, skipping updateCategory call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :goto_2e
    return-void
.end method

.method private getMetaData()V
    .locals 3

    .line 835
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 837
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 838
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    goto :goto_1

    .line 837
    :cond_1
    :goto_0
    return-void

    .line 839
    :catch_0
    move-exception v0

    .line 841
    const-string v0, "SettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get Metadata for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :goto_1
    return-void
.end method

.method private getMetricsTag()Ljava/lang/String;
    .locals 3

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":settings:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_0
    const-string v1, "com.android.settings."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    const-string v1, "com.android.settings."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 234
    :cond_1
    return-object v0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    return-object p1

    .line 596
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 597
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 599
    :cond_1
    const-string v0, "com.android.settings.RunningServices"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.android.settings.applications.StorageUse"

    .line 600
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 602
    :cond_2
    const-class p1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 605
    :cond_3
    return-object p1
.end method

.method private handleCustomizedDemoMode(Ljava/lang/StringBuilder;)Z
    .locals 11

    .line 890
    invoke-static {p0}, Lcust/settings/CustomizedUtils;->isInDemoMode(Landroid/content/Context;)Z

    move-result v0

    .line 892
    nop

    .line 894
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 896
    sget-object v2, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_BLOCK_FOR_DEMO:[Ljava/lang/String;

    array-length v2, v2

    .line 898
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 900
    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    .line 902
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 903
    return v4

    .line 906
    :cond_0
    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_3

    .line 907
    new-instance v7, Landroid/content/ComponentName;

    sget-object v8, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_BLOCK_FOR_DEMO:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-direct {v7, v1, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-string v8, "SettingsActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "component "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " setTileEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v10, v0, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    xor-int/lit8 v8, v0, 0x1

    invoke-direct {p0, p1, v7, v8, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v6, :cond_1

    goto :goto_1

    .line 906
    :cond_1
    move v6, v4

    goto :goto_2

    .line 910
    :cond_2
    :goto_1
    nop

    .line 906
    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 913
    :cond_3
    return v6
.end method

.method private isLockTaskModePinned()Z
    .locals 2

    .line 875
    nop

    .line 876
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 877
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSettingsRunOnTop()Z
    .locals 2

    .line 881
    nop

    .line 882
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 883
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 884
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 885
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$updateDeviceIndex$0(Lcom/android/settings/SettingsActivity;Lcom/android/settings/search/DeviceIndexFeatureProvider;)V
    .locals 1

    .line 668
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->updateIndex(Landroid/content/Context;Z)V

    return-void
.end method

.method private setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z
    .locals 1

    .line 821
    if-nez p4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    .line 823
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 824
    const/4 p3, 0x0

    .line 826
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;Z)Z

    move-result p3

    .line 827
    if-eqz p3, :cond_1

    .line 828
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :cond_1
    return p3
.end method

.method private setTitleFromBackStack()V
    .locals 2

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 482
    if-nez v0, :cond_1

    .line 483
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-lez v0, :cond_0

    .line 484
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 488
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 492
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    .line 493
    return-void
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 1

    .line 497
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v0

    .line 498
    if-lez v0, :cond_0

    .line 499
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 501
    :cond_0
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 503
    :goto_0
    if-eqz p1, :cond_1

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 506
    :cond_1
    return-void
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 4

    .line 443
    const-string v0, "SettingsActivity"

    const-string v1, "Starting to set activity title"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v0, ":settings:show_fragment_title_resid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 445
    if-lez v0, :cond_1

    .line 446
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 447
    iput v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 449
    const-string v0, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 451
    if-eqz p1, :cond_0

    .line 453
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Landroid/os/UserHandle;

    .line 454
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 453
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/settings/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 456
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 457
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    const-string v0, "SettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    goto :goto_0

    .line 463
    :cond_0
    iget p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 465
    :goto_0
    goto :goto_2

    .line 466
    :cond_1
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 467
    const-string v0, ":settings:show_fragment_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 468
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 469
    iget-object p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 471
    :goto_2
    const-string p1, "SettingsActivity"

    const-string v0, "Done setting title"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 3

    .line 626
    const-string v0, "SettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching to fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 628
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid fragment for this activity: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 631
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object p1

    .line 632
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 633
    const p3, 0x7f0a0201    # @id/main_content

    invoke-virtual {p2, p3, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 634
    if-eqz p7, :cond_2

    .line 635
    iget-object p3, p0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {p3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 637
    :cond_2
    if-eqz p4, :cond_3

    .line 638
    const-string p3, ":settings:prefs"

    invoke-virtual {p2, p3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 640
    :cond_3
    if-lez p5, :cond_4

    .line 641
    invoke-virtual {p2, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 642
    :cond_4
    if-eqz p6, :cond_5

    .line 643
    invoke-virtual {p2, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 645
    :cond_5
    :goto_1
    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 646
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 647
    const-string p2, "SettingsActivity"

    const-string p3, "Executed frag manager pendingTransactions"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-object p1
.end method

.method private updateDeviceIndex()V
    .locals 2

    .line 664
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getDeviceIndexFeatureProvider()Lcom/android/settings/search/DeviceIndexFeatureProvider;

    move-result-object v0

    .line 667
    new-instance v1, Lcom/android/settings/-$$Lambda$SettingsActivity$HXMcoLHGNmdxTucTgqvnp3fY_K8;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/-$$Lambda$SettingsActivity$HXMcoLHGNmdxTucTgqvnp3fY_K8;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/search/DeviceIndexFeatureProvider;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 669
    return-void
.end method

.method private updateTilesList()V
    .locals 1

    .line 655
    new-instance v0, Lcom/android/settings/SettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$6;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 661
    return-void
.end method


# virtual methods
.method public finishPreferencePanel(ILandroid/content/Intent;)V
    .locals 0

    .line 617
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 618
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 619
    return-void
.end method

.method getBitmapFromXmlResource(I)Landroid/graphics/Bitmap;
    .locals 5

    .line 863
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 864
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 865
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 866
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 865
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 867
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 868
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 869
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 871
    return-object v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .line 569
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 570
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 573
    if-eqz v1, :cond_1

    .line 574
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 575
    const-string v3, ":settings:show_fragment"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string v1, ":settings:show_fragment_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 577
    if-eqz v1, :cond_0

    .line 578
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 580
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 582
    :goto_0
    const-string v1, "intent"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 583
    const-string v0, ":settings:show_fragment_args"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 584
    return-object v2

    .line 586
    :cond_1
    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance p1, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object p2

    .line 221
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    .line 220
    return-object p1

    .line 223
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLaunchableInTaskModePinned()Z
    .locals 1

    .line 858
    const/4 v0, 0x0

    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3

    .line 561
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 562
    sget-object v2, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 561
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    :cond_1
    return v0
.end method

.method launchSettingFragment(Ljava/lang/String;ZLandroid/content/Intent;)V
    .locals 8

    .line 427
    iget-boolean p2, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 428
    invoke-direct {p0, p3}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 430
    const-string p2, ":settings:show_fragment_args"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 431
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    .line 433
    goto :goto_0

    .line 435
    :cond_0
    const p1, 0x7f12045b    # @string/dashboard_title 'Settings'

    iput p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 437
    const-class p1, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    .line 440
    :goto_0
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .line 476
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    .line 477
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 239
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 240
    const-string v0, "SettingsActivity"

    const-string v1, "Starting onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->isLockTaskModePinned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->isSettingsRunOnTop()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->isLaunchableInTaskModePinned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    const-string v0, "SettingsActivity"

    const-string v1, "Devices lock task mode pinned."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const-string p1, "SettingsActivity"

    const-string v0, "finish due to monkey user"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 251
    return-void

    .line 254
    :cond_1
    const-string v0, "SettingsActivity"

    const-string v1, "Starting onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 257
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 259
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 262
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetaData()V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 265
    const-string v1, "settings:ui_options"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v3, "settings:ui_options"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/Window;->setUiOptions(I)V

    .line 270
    :cond_2
    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 273
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 275
    const-class v4, Lcom/android/settings/Settings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 280
    instance-of v3, p0, Lcom/android/settings/SubSettings;

    const/4 v4, 0x1

    if-nez v3, :cond_4

    const-string v3, ":settings:show_fragment_as_subsetting"

    .line 281
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 284
    :cond_3
    move v3, v2

    goto :goto_1

    .line 281
    :cond_4
    :goto_0
    nop

    .line 284
    move v3, v4

    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v5, :cond_5

    .line 285
    invoke-static {p0}, Lcust/settings/CustomizedUtils;->isInDemoMode(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mIsInDemoMode:Z

    .line 286
    const-string v5, "SettingsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsShowingDashboard "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mIsInDemoMode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mIsInDemoMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_5
    if-eqz v3, :cond_6

    .line 293
    const v5, 0x7f1301e1    # @style/Theme.SubSettings

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    .line 296
    :cond_6
    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v5, :cond_7

    .line 297
    const v5, 0x7f0d0144    # @layout/settings_main_dashboard 'res/layout/settings_main_dashboard.xml'

    goto :goto_2

    :cond_7
    const v5, 0x7f0d0145    # @layout/settings_main_prefs 'res/layout/settings_main_prefs.xml'

    .line 296
    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setContentView(I)V

    .line 299
    const v5, 0x7f0a0201    # @id/main_content

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 303
    if-eqz p1, :cond_9

    .line 306
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 308
    const-string v1, ":settings:categories"

    .line 309
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 310
    if-eqz p1, :cond_8

    .line 311
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 312
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 313
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    .line 315
    :cond_8
    goto :goto_3

    .line 316
    :cond_9
    invoke-virtual {p0, v1, v3, v0}, Lcom/android/settings/SettingsActivity;->launchSettingFragment(Ljava/lang/String;ZLandroid/content/Intent;)V

    .line 323
    :goto_3
    invoke-static {p0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    .line 324
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    const/16 v3, 0x8

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mIsInDemoMode:Z

    if-nez v1, :cond_b

    .line 326
    const v1, 0x7f0a02d2    # @id/search_bar

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 327
    if-eqz p1, :cond_a

    .line 326
    move v5, v2

    goto :goto_4

    .line 327
    :cond_a
    const/4 v5, 0x4

    .line 326
    :goto_4
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 328
    const v1, 0x7f0a000f    # @id/action_bar

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 329
    const v1, 0x7f0a02cf    # @id/search_action_bar

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar;

    .line 330
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v5

    .line 331
    invoke-interface {v5, p0, v1}, Lcom/android/settings/search/SearchFeatureProvider;->initSearchToolbar(Landroid/app/Activity;Landroid/widget/Toolbar;)V

    .line 332
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 338
    invoke-virtual {v1}, Landroid/widget/Toolbar;->getNavigationView()Landroid/view/View;

    move-result-object v1

    .line 339
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 340
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 341
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 344
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_c

    .line 346
    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 347
    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 348
    iget-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    xor-int/2addr p1, v4

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 350
    :cond_c
    const p1, 0x7f0a036f    # @id/switch_bar

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 351
    iget-object p1, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p1, :cond_d

    .line 352
    iget-object p1, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/settings/widget/SwitchBar;->setMetricsTag(Ljava/lang/String;)V

    .line 356
    :cond_d
    iget-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mIsInDemoMode:Z

    if-eqz p1, :cond_f

    .line 358
    const p1, 0x7f0a02d3    # @id/search_bar_container

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 359
    if-eqz p1, :cond_e

    .line 360
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 362
    :cond_e
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 363
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 364
    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 369
    :cond_f
    const-string p1, "extra_prefs_show_button_bar"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 371
    const p1, 0x7f0a0092    # @id/button_bar

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 372
    if-eqz p1, :cond_14

    .line 373
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 375
    const p1, 0x7f0a0060    # @id/back_button

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 376
    new-instance v1, Lcom/android/settings/SettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$2;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    const v1, 0x7f0a0317    # @id/skip_button

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 383
    new-instance v4, Lcom/android/settings/SettingsActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings/SettingsActivity$3;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    const v4, 0x7f0a0226    # @id/next_button

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 390
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/SettingsActivity$4;

    invoke-direct {v5, p0}, Lcom/android/settings/SettingsActivity$4;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    const-string v4, "extra_prefs_set_next_text"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 399
    const-string v4, "extra_prefs_set_next_text"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 400
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 401
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    .line 403
    :cond_10
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_11
    :goto_5
    const-string v4, "extra_prefs_set_back_text"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 407
    const-string v4, "extra_prefs_set_back_text"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 408
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 409
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 411
    :cond_12
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 414
    :cond_13
    :goto_6
    const-string p1, "extra_prefs_show_skip"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 415
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 423
    :cond_14
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 545
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onPause()V

    .line 546
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    .line 548
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 549
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 201
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 202
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 203
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    .line 204
    instance-of v0, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz v0, :cond_0

    .line 205
    check-cast p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    goto :goto_0

    .line 206
    :cond_0
    const/4 p1, 0x0

    .line 204
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/4 p2, -0x1

    .line 207
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 209
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 214
    const/4 p1, 0x0

    return p1
.end method

.method protected onResume()V
    .locals 4

    .line 526
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onResume()V

    .line 528
    new-instance v0, Lcom/android/settings/SettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$5;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    .line 534
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settingslib.development.DevelopmentSettingsEnabler.SETTINGS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 539
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    .line 540
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateDeviceIndex()V

    .line 541
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 510
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->saveState(Landroid/os/Bundle;)V

    .line 512
    return-void
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 520
    const-string v0, ":settings:categories"

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 522
    :cond_0
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1

    .line 553
    const v0, 0x7f080122    # @drawable/ic_launcher_settings 'res/drawable/ic_launcher_settings.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->getBitmapFromXmlResource(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 554
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/Bitmap;)V

    .line 555
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 556
    return-void
.end method
