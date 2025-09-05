.class public Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;
.super Ljava/lang/Object;
.source "WakeupAlarmAnomalyDetector.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/anomaly/checker/AnomalyDetector;


# instance fields
.field private mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mContext:Landroid/content/Context;

.field private mWakeupAlarmThreshold:J

.field private mWakeupBlacklistedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;)V

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 62
    iput-object p3, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    .line 63
    iget-wide v0, p2, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->wakeupAlarmThreshold:J

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mWakeupAlarmThreshold:J

    .line 64
    iget-object p1, p2, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->wakeupBlacklistedTags:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mWakeupBlacklistedTags:Ljava/util/Set;

    .line 65
    return-void
.end method


# virtual methods
.method public detectAnomalies(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Ljava/util/List;
    .locals 12
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

    .line 76
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v2, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateRunningTimeBasedOnStatsType(Lcom/android/internal/os/BatteryStatsHelper;I)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double/2addr v4, v6

    .line 81
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result p1

    .line 83
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, v4, v6

    if-ltz p2, :cond_2

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_0
    if-ge v3, p2, :cond_2

    .line 85
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 86
    iget-object v6, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 87
    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 88
    invoke-virtual {v7, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 89
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 90
    goto :goto_1

    .line 93
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->getWakeupAlarmCountFromUid(Landroid/os/BatteryStats$Uid;)I

    move-result v2

    int-to-double v7, v2

    div-double/2addr v7, v4

    double-to-int v2, v7

    .line 95
    int-to-long v7, v2

    iget-wide v9, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mWakeupAlarmThreshold:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 96
    iget-object v7, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 97
    iget-object v8, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 99
    iget-object v9, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v9, v7}, Lcom/android/settings/fuelgauge/BatteryUtils;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v9

    .line 101
    new-instance v10, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    invoke-direct {v10}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;-><init>()V

    .line 102
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setUid(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v10

    .line 103
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setType(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v10

    .line 104
    invoke-virtual {v10, v8}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setDisplayName(Ljava/lang/CharSequence;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v8

    .line 105
    invoke-virtual {v8, v7}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v8

    .line 106
    invoke-virtual {v8, v9}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setTargetSdkVersion(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 109
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    .line 108
    invoke-virtual {v10, v9, v6, v7}, Lcom/android/settings/fuelgauge/BatteryUtils;->isBackgroundRestrictionEnabled(IILjava/lang/String;)Z

    move-result v6

    .line 107
    invoke-virtual {v8, v6}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setBackgroundRestrictionEnabled(Z)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v6

    .line 110
    invoke-virtual {v6, v2}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setWakeupAlarmCount(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->build()Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object v2

    .line 113
    iget-object v6, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    invoke-virtual {v6, v2}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getAnomalyAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 114
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 120
    :cond_2
    return-object v1
.end method

.method getWakeupAlarmCountFromUid(Landroid/os/BatteryStats$Uid;)I
    .locals 7

    .line 125
    nop

    .line 126
    nop

    .line 127
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 129
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg;

    .line 130
    nop

    .line 131
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 133
    iget-object v5, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mWakeupBlacklistedTags:Ljava/util/Set;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mWakeupBlacklistedTags:Ljava/util/Set;

    .line 134
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    goto :goto_1

    .line 137
    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Counter;

    invoke-virtual {v4, v1}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v4

    .line 138
    add-int/2addr v2, v4

    .line 139
    goto :goto_1

    .line 128
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 142
    :cond_2
    return v2
.end method
