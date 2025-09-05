.class public Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;
.super Ljava/lang/Object;
.source "WakeLockAnomalyDetector.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/anomaly/checker/AnomalyDetector;


# instance fields
.field private mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mWakeLockThresholdMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 50
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;)V

    .line 51
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 58
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 59
    iput-object p3, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    .line 60
    iget-wide p1, p2, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->wakeLockThreshold:J

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mWakeLockThresholdMs:J

    .line 61
    return-void
.end method


# virtual methods
.method public detectAnomalies(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 75
    iget-object v5, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    move-object/from16 v6, p2

    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v5

    .line 78
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_4

    .line 79
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BatterySipper;

    .line 80
    iget-object v10, v9, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 81
    if-eqz v10, :cond_1

    iget-object v11, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 82
    invoke-virtual {v11, v9}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, -0x1

    if-eq v5, v9, :cond_0

    .line 83
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    if-eq v5, v9, :cond_0

    .line 84
    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {v0, v10, v3, v4}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->getCurrentDurationMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v11

    .line 88
    invoke-virtual {v0, v10, v3, v4}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->getBackgroundTotalDurationMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v13

    .line 90
    move v15, v8

    iget-wide v7, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mWakeLockThresholdMs:J

    cmp-long v7, v13, v7

    if-lez v7, :cond_2

    const-wide/16 v7, 0x0

    cmp-long v7, v11, v7

    if-eqz v7, :cond_2

    .line 91
    iget-object v7, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 92
    iget-object v8, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 95
    new-instance v9, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    invoke-direct {v9}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;-><init>()V

    .line 96
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setUid(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v9

    .line 97
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setType(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v9

    .line 98
    invoke-virtual {v9, v8}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setDisplayName(Ljava/lang/CharSequence;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v8

    .line 99
    invoke-virtual {v8, v7}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v7

    .line 100
    invoke-virtual {v7, v13, v14}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setWakeLockTimeMs(J)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v7

    .line 101
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->build()Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object v7

    .line 103
    iget-object v8, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    invoke-virtual {v8, v7}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getAnomalyAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 104
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 78
    :cond_1
    :goto_1
    move v15, v8

    :cond_2
    const/4 v10, 0x0

    :cond_3
    :goto_2
    add-int/lit8 v8, v15, 0x1

    goto :goto_0

    .line 108
    :cond_4
    return-object v2
.end method

.method getBackgroundTotalDurationMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 0

    .line 120
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p1

    .line 121
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 123
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide p1

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    :goto_1
    return-wide p1
.end method

.method getCurrentDurationMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 0

    .line 113
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p1

    .line 115
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method
