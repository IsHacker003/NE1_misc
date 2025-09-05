.class public Lcom/android/settings/fuelgauge/BatteryUtils;
.super Ljava/lang/Object;
.source "BatteryUtils.java"


# static fields
.field private static sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 105
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 106
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 108
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;
    .locals 1

    .line 95
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isDataCorrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 98
    :cond_1
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-object p0
.end method

.method private getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .locals 4

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    .line 155
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v0

    .line 158
    const-string p2, "BatteryUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string p1, "BatteryUtils"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background time(us): "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method private getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .locals 4

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    .line 165
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;IJ)J

    move-result-wide v2

    .line 166
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getForegroundServiceTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide p1

    add-long/2addr v2, p1

    .line 165
    return-wide v2
.end method

.method private getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .locals 2

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    .line 150
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;IJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;IJ)J
    .locals 11

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 132
    const-string v2, "BatteryUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    nop

    .line 135
    array-length v2, v0

    const-wide/16 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v5, v0, v1

    .line 136
    invoke-virtual {p1, v5, p3, p4, p2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v6

    .line 137
    const-string v8, "BatteryUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " time(us): "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    add-long/2addr v3, v6

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    const-string p2, "BatteryUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foreground time(us): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    nop

    .line 145
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide p1

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 144
    invoke-static {p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method private hasLauncherEntry([Ljava/lang/String;)Z
    .locals 5

    .line 573
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 574
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const v2, 0x1c0200

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 587
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 588
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 589
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 590
    const/4 p1, 0x1

    return p1

    .line 587
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 594
    :cond_1
    return v2
.end method

.method private isDataCorrupted()Z
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isExcessiveBackgroundAnomaly(Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z
    .locals 1

    .line 547
    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSystemApp(Landroid/content/pm/PackageManager;[Ljava/lang/String;)Z
    .locals 8

    .line 557
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 559
    :try_start_0
    invoke-virtual {p1, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 561
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 562
    return v3

    .line 566
    :cond_0
    goto :goto_1

    .line 564
    :catch_0
    move-exception v4

    .line 565
    const-string v5, "BatteryUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    :cond_1
    return v1
.end method

.method private isSystemUid(I)Z
    .locals 1

    .line 552
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 553
    if-ltz p1, :cond_0

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static logRuntime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void
.end method


# virtual methods
.method public calculateBatteryPercent(DDDI)D
    .locals 3

    .line 269
    const-wide/16 v0, 0x0

    cmpl-double v2, p3, v0

    if-nez v2, :cond_0

    .line 270
    return-wide v0

    .line 273
    :cond_0
    sub-double/2addr p3, p5

    div-double/2addr p1, p3

    int-to-double p3, p7

    mul-double/2addr p1, p3

    return-wide p1
.end method

.method public calculateLastFullChargeTime(Lcom/android/internal/os/BatteryStatsHelper;J)J
    .locals 2

    .line 360
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v0

    sub-long/2addr p2, v0

    return-wide p2
.end method

.method public calculateRunningTimeBasedOnStatsType(Lcom/android/internal/os/BatteryStatsHelper;I)J
    .locals 2

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 285
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    .line 288
    nop

    .line 289
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide p1

    .line 288
    invoke-static {p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public calculateScreenUsageTime(Lcom/android/internal/os/BatteryStatsHelper;)J
    .locals 2

    .line 371
    nop

    .line 372
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 371
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->findBatterySipperByType(Ljava/util/List;Lcom/android/internal/os/BatterySipper$DrainType;)Lcom/android/internal/os/BatterySipper;

    move-result-object p1

    .line 373
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public findBatterySipperByType(Ljava/util/List;Lcom/android/internal/os/BatterySipper$DrainType;)Lcom/android/internal/os/BatterySipper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Lcom/android/internal/os/BatterySipper$DrainType;",
            ")",
            "Lcom/android/internal/os/BatterySipper;"
        }
    .end annotation

    .line 470
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 471
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 472
    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, p2, :cond_0

    .line 473
    return-object v2

    .line 470
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAppLongVersionCode(Ljava/lang/String;)J
    .locals 4

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 605
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 606
    :catch_0
    move-exception v0

    .line 607
    const-string v1, "BatteryUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getBatteryInfo(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 19

    move-object/from16 v0, p0

    .line 435
    move-object/from16 v1, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 438
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v8

    .line 441
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 440
    invoke-static {v4, v5}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v11

    .line 442
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v9

    .line 447
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    .line 448
    invoke-interface {v4, v5}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 449
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settings/fuelgauge/Estimate;

    move-result-object v4

    goto :goto_0

    .line 451
    :cond_0
    new-instance v4, Lcom/android/settings/fuelgauge/Estimate;

    .line 452
    invoke-virtual {v9, v11, v12}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v14

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/android/settings/fuelgauge/Estimate;-><init>(JZJ)V

    .line 457
    :goto_0
    move-object v10, v4

    const-string v4, "BatteryInfoLoader post query"

    invoke-static {v1, v4, v2, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 458
    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settings/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    .line 460
    const-string v4, "BatteryInfoLoader.loadInBackground"

    invoke-static {v1, v4, v2, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 462
    return-object v0
.end method

.method getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .locals 1

    .line 485
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p1

    .line 486
    if-eqz p1, :cond_0

    .line 487
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1

    .line 490
    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method getForegroundServiceTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .locals 1

    .line 495
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p1

    .line 496
    if-eqz p1, :cond_0

    .line 497
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p1

    return-wide p1

    .line 500
    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object p1, p1, v0

    :goto_0
    return-object p1
.end method

.method public getPackageUid(Ljava/lang/String;)I
    .locals 3

    .line 389
    const/4 v0, -0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    .line 391
    :catch_0
    move-exception p1

    .line 392
    return v0
.end method

.method public getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J
    .locals 2

    .line 112
    const-wide/16 v0, 0x0

    if-nez p2, :cond_0

    .line 113
    return-wide v0

    .line 116
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 127
    return-wide v0

    .line 124
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v0

    .line 125
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide p1

    add-long/2addr v0, p1

    .line 124
    return-wide v0

    .line 122
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide p1

    return-wide p1

    .line 120
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide p1

    return-wide p1

    .line 118
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide p1

    return-wide p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSummaryResIdFromAnomalyType(I)I
    .locals 3

    .line 398
    packed-switch p1, :pswitch_data_0

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect anomaly type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :pswitch_0
    const p1, 0x7f1201cf    # @string/battery_abnormal_location_summary 'Requesting location frequently'

    return p1

    .line 402
    :pswitch_1
    const p1, 0x7f1201d1    # @string/battery_abnormal_wakeup_alarm_summary 'Waking up device in background'

    return p1

    .line 400
    :pswitch_2
    const p1, 0x7f1201d0    # @string/battery_abnormal_wakelock_summary 'Keeping device awake'

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTargetSdkVersion(Ljava/lang/String;)I
    .locals 4

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 318
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    const-string v1, "BatteryUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    const/4 p1, -0x1

    return p1
.end method

.method public initBatteryStatsHelper(Lcom/android/internal/os/BatteryStatsHelper;Landroid/os/Bundle;Landroid/os/UserManager;)V
    .locals 0

    .line 428
    invoke-virtual {p1, p2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 429
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 430
    invoke-virtual {p3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    .line 431
    return-void
.end method

.method public isBackgroundRestrictionEnabled(IILjava/lang/String;)Z
    .locals 2

    .line 331
    const/4 v0, 0x1

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    .line 332
    return v0

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x3f

    .line 335
    invoke-virtual {p1, v1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    .line 336
    if-eq p1, v0, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    nop

    :cond_2
    :goto_0
    return v0
.end method

.method public isForceAppStandbyEnabled(ILjava/lang/String;)Z
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public isPreOApp(Ljava/lang/String;)Z
    .locals 5

    .line 505
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 508
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x1a

    if-ge v1, p1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 509
    :catch_0
    move-exception v1

    .line 510
    const-string v2, "BatteryUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    return v0
.end method

.method public isPreOApp([Ljava/lang/String;)Z
    .locals 4

    .line 517
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 518
    return v1

    .line 521
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 522
    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->isPreOApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 523
    const/4 p1, 0x1

    return p1

    .line 521
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    :cond_2
    return v1
.end method

.method public removeHiddenBatterySippers(Ljava/util/List;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)D"
        }
    .end annotation

    .line 178
    nop

    .line 179
    nop

    .line 180
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 181
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    .line 182
    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 184
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    .line 191
    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v1, v5

    .line 195
    :cond_0
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_1

    .line 196
    nop

    .line 180
    move-object v3, v4

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V

    .line 202
    return-wide v1
.end method

.method public setForceAppStandby(ILjava/lang/String;I)V
    .locals 2

    .line 412
    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->isPreOApp(Ljava/lang/String;)Z

    move-result v0

    .line 413
    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 419
    return-void
.end method

.method public shouldHideAnomaly(Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;ILcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z
    .locals 3

    .line 535
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 538
    return v2

    .line 541
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->isSystemUid(I)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1, v0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 542
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isSystemApp(Landroid/content/pm/PackageManager;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->hasLauncherEntry([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 543
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->isExcessiveBackgroundAnomaly(Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isPreOApp([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    nop

    .line 541
    :cond_3
    :goto_0
    return v2
.end method

.method public shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z
    .locals 4

    .line 242
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 244
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 252
    invoke-interface {v0, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isTypeService(Lcom/android/internal/os/BatterySipper;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 253
    invoke-interface {v0, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 244
    :goto_1
    return p1
.end method

.method smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Lcom/android/internal/os/BatterySipper;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 211
    move-object/from16 v1, p2

    .line 212
    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    .line 213
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v8, v4

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_1

    .line 214
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatterySipper;

    iget-object v10, v10, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 215
    if-eqz v10, :cond_0

    .line 216
    move-object/from16 v11, p0

    invoke-virtual {v11, v6, v10, v6}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v12

    .line 218
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-virtual {v2, v10, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 219
    add-long/2addr v8, v12

    goto :goto_1

    .line 213
    :cond_0
    move-object/from16 v11, p0

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 223
    :cond_1
    const-wide/32 v10, 0x927c0

    cmp-long v3, v8, v10

    if-ltz v3, :cond_3

    .line 224
    if-nez v1, :cond_2

    .line 225
    const-string v0, "BatteryUtils"

    const-string v1, "screen sipper is null even when app screen time is not zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .line 229
    :cond_2
    iget-wide v10, v1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 230
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v6, v1, :cond_3

    .line 231
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    .line 232
    iget-wide v12, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-virtual {v2, v7, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v14

    long-to-double v14, v14

    mul-double/2addr v14, v10

    long-to-double v4, v8

    div-double/2addr v14, v4

    add-double/2addr v12, v14

    iput-wide v12, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 230
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v4, 0x0

    goto :goto_2

    .line 236
    :cond_3
    return-void
.end method

.method public sortUsageList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)V"
        }
    .end annotation

    .line 343
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryUtils$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryUtils$1;-><init>(Lcom/android/settings/fuelgauge/BatteryUtils;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 349
    return-void
.end method
