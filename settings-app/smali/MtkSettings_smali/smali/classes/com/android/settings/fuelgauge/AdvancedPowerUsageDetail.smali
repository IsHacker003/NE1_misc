.class public Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AdvancedPowerUsageDetail.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settings/fuelgauge/ButtonActionDialogFragment$AppButtonsDialogListener;
.implements Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment$AnomalyDialogListener;
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/dashboard/DashboardFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
        ">;>;",
        "Lcom/android/settings/fuelgauge/ButtonActionDialogFragment$AppButtonsDialogListener;",
        "Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment$AnomalyDialogListener;",
        "Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;"
    }
.end annotation


# instance fields
.field private mAnomalies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;"
        }
    .end annotation
.end field

.field mAnomalySummaryPreferenceController:Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;

.field private mAppButtonsPreferenceController:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

.field mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

.field mBackgroundPreference:Landroid/support/v7/preference/Preference;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field mForegroundPreference:Landroid/support/v7/preference/Preference;

.field mHeaderPreference:Lcom/android/settings/applications/LayoutPreference;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static getUserIdToLaunchAdvancePowerUsageDetail(Lcom/android/internal/os/BatterySipper;)I
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_0

    .line 169
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    return p0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/settings/core/InstrumentedPreferenceFragment;",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            "I",
            "Lcom/android/settings/fuelgauge/BatteryEntry;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;)V"
        }
    .end annotation

    .line 177
    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;Ljava/util/List;)V

    .line 179
    return-void
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/lang/String;)V
    .locals 5

    .line 183
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 185
    const-string v2, "extra_package_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v2, "extra_power_usage_percent"

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :try_start_0
    const-string v2, "extra_uid"

    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    const-string v2, "AdvancedPowerDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    :goto_0
    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    .line 194
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const p2, 0x7f1201ed    # @string/battery_details_title 'Battery usage'

    .line 195
    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 197
    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 199
    return-void
.end method

.method static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/settings/fuelgauge/BatteryUtils;",
            "Lcom/android/settings/core/InstrumentedPreferenceFragment;",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            "I",
            "Lcom/android/settings/fuelgauge/BatteryEntry;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-virtual {p3}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    .line 128
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 129
    iget-object v0, p5, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    .line 130
    iget-object v1, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 131
    iget-object v2, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    .line 133
    move v2, v5

    goto :goto_0

    .line 131
    :cond_0
    nop

    .line 133
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1, v5, v1, p4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v5

    goto :goto_1

    .line 134
    :cond_1
    iget-wide v5, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 135
    :goto_1
    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1, p4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v1

    goto :goto_2

    .line 136
    :cond_2
    const-wide/16 v1, 0x0

    .line 138
    :goto_2
    iget-object p1, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 140
    const-string p1, "extra_label"

    invoke-virtual {p5}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string p1, "extra_icon_id"

    iget p4, p5, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    const-string p1, "extra_package_name"

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 145
    :cond_3
    const-string p1, "extra_package_name"

    iget-object p4, p5, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    if-eqz p4, :cond_4

    .line 146
    iget-object p4, p5, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    goto :goto_3

    .line 147
    :cond_4
    iget-object p4, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    aget-object p4, p4, v4

    .line 145
    :goto_3
    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_4
    const-string p1, "extra_uid"

    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result p4

    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    const-string p1, "extra_background_time"

    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 152
    const-string p1, "extra_foreground_time"

    invoke-virtual {p3, p1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 153
    const-string p1, "extra_power_usage_percent"

    invoke-virtual {p3, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string p1, "extra_power_usage_amount"

    iget-wide p4, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    double-to-int p4, p4

    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string p1, "extra_anomaly_list"

    invoke-virtual {p3, p1, p7}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 157
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    .line 158
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const p1, 0x7f1201ed    # @string/battery_details_title 'Battery usage'

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 160
    invoke-virtual {p0, p3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 161
    invoke-virtual {p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    new-instance p1, Landroid/os/UserHandle;

    .line 162
    invoke-static {v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getUserIdToLaunchAdvancePowerUsageDetail(Lcom/android/internal/os/BatterySipper;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 164
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 13
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

    .line 324
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 326
    const-string v1, "extra_uid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 327
    const-string v2, "extra_package_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 329
    new-instance v0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    invoke-direct {v0, p1, p0, v1, v4}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    .line 331
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-direct {v0, v1, p0, v4}, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;)V

    .line 332
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v12, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUserManager:Landroid/os/UserManager;

    iget-object v8, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, v12

    move-object v2, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Landroid/content/pm/PackageManager;II)V

    iput-object v12, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 337
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    return-object v11
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 314
    const-string v0, "AdvancedPowerDetail"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 309
    const/16 v0, 0x35

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 319
    const v0, 0x7f150081    # @xml/power_usage_detail 'res/xml/power_usage_detail.xml'

    return v0
.end method

.method public handleDialogClick(I)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->handleDialogClick(I)V

    .line 355
    :cond_0
    return-void
.end method

.method initAnomalyInfo()V
    .locals 3

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_anomaly_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAnomalies:Ljava/util/List;

    .line 240
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAnomalies:Ljava/util/List;

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAnomalies:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAnomalySummaryPreferenceController:Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAnomalies:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->updateAnomalySummaryPreference(Ljava/util/List;)V

    .line 245
    :cond_1
    :goto_0
    return-void
.end method

.method initHeader()V
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mHeaderPreference:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a0136    # @id/entity_header

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 252
    nop

    .line 253
    invoke-static {v1, p0, v0}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 255
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 258
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v4, :cond_1

    .line 259
    const-string v4, "extra_label"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    .line 261
    const-string v4, "extra_icon_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 262
    if-nez v3, :cond_0

    .line 263
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    goto :goto_0

    .line 265
    :cond_0
    const-string v3, "extra_icon_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    .line 267
    :goto_0
    goto :goto_2

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 269
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;

    .line 270
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;

    .line 271
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    .line 272
    if-eqz v2, :cond_2

    .line 273
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/settings/Utils;->getInstallationStatus(Landroid/content/pm/ApplicationInfo;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 274
    :goto_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;

    .line 275
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    .line 278
    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 279
    return-void
.end method

.method initPreference()V
    .locals 10

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 286
    const-string v2, "extra_foreground_time"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 287
    const-string v4, "extra_background_time"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 288
    const-string v6, "extra_power_usage_percent"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    const-string v6, "extra_power_usage_amount"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mForegroundPreference:Landroid/support/v7/preference/Preference;

    .line 291
    const v6, 0x7f12023e    # @string/battery_used_for 'Used for ^1'

    invoke-virtual {p0, v6}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/CharSequence;

    long-to-double v2, v2

    .line 292
    const/4 v9, 0x0

    invoke-static {v1, v2, v3, v9}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v8, v9

    .line 291
    invoke-static {v6, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 290
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundPreference:Landroid/support/v7/preference/Preference;

    .line 294
    const v2, 0x7f1201d8    # @string/battery_active_for 'Active for ^1'

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/CharSequence;

    long-to-double v4, v4

    .line 295
    invoke-static {v1, v4, v5, v9}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v3, v9

    .line 294
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 296
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 344
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->handleActivityResult(IILandroid/content/Intent;)V

    .line 348
    :cond_0
    return-void
.end method

.method public onAnomalyHandled(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)V
    .locals 0

    .line 359
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAnomalySummaryPreferenceController:Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->hideHighUsagePreference()V

    .line 360
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 203
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/app/Activity;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 206
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 207
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUserManager:Landroid/os/UserManager;

    .line 208
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 210
    return-void
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 1

    .line 382
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    .line 383
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 382
    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;)V

    .line 384
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 214
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    .line 217
    new-instance p1, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-direct {p1, v0, p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAnomalySummaryPreferenceController:Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;

    .line 219
    const-string p1, "app_usage_foreground"

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mForegroundPreference:Landroid/support/v7/preference/Preference;

    .line 220
    const-string p1, "app_usage_background"

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundPreference:Landroid/support/v7/preference/Preference;

    .line 221
    const-string p1, "header_view"

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mHeaderPreference:Lcom/android/settings/applications/LayoutPreference;

    .line 223
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initAnomalyInfo()V

    .line 227
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;>;"
        }
    .end annotation

    .line 364
    new-instance p1, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;)V"
        }
    .end annotation

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object p1

    .line 370
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v1, 0x35

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->logAnomalies(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Ljava/util/List;I)V

    .line 372
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAnomalySummaryPreferenceController:Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->updateAnomalySummaryPreference(Ljava/util/List;)V

    .line 373
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;>;)V"
        }
    .end annotation

    .line 378
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 300
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "high_usage"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAnomalySummaryPreferenceController:Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 302
    const/4 p1, 0x1

    return p1

    .line 304
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 231
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initHeader()V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initPreference()V

    .line 235
    return-void
.end method
