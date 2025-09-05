.class public Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;
.super Ljava/lang/Object;
.source "BluetoothScanAnomalyDetector.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/anomaly/checker/AnomalyDetector;


# instance fields
.field private mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mBluetoothScanningThreshold:J

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 50
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;)V

    .line 51
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 58
    iget-wide p1, p2, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->bluetoothScanThreshold:J

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mBluetoothScanningThreshold:J

    .line 59
    iput-object p3, p0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    .line 60
    return-void
.end method


# virtual methods
.method public detectAnomalies(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Ljava/util/List;
    .locals 11
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

    .line 71
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object p1

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v1, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result p2

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 77
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 78
    iget-object v6, v5, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 79
    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 80
    invoke-virtual {v7, v5}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, -0x1

    if-eq p2, v5, :cond_0

    .line 81
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-eq p2, v5, :cond_0

    .line 82
    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {p0, v6, v1, v2}, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->getBluetoothUnoptimizedBgTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v7

    .line 86
    iget-wide v9, p0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mBluetoothScanningThreshold:J

    cmp-long v5, v7, v9

    if-lez v5, :cond_1

    .line 87
    iget-object v5, p0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v5

    .line 88
    iget-object v9, p0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mContext:Landroid/content/Context;

    invoke-static {v9, v5}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 91
    new-instance v10, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    invoke-direct {v10}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;-><init>()V

    .line 92
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-virtual {v10, v6}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setUid(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v6

    const/4 v10, 0x2

    .line 93
    invoke-virtual {v6, v10}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setType(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v6

    .line 94
    invoke-virtual {v6, v9}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setDisplayName(Ljava/lang/CharSequence;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v6

    .line 95
    invoke-virtual {v6, v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    .line 96
    invoke-virtual {v5, v7, v8}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setBluetoothScanningTimeMs(J)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    .line 97
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->build()Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object v5

    .line 99
    iget-object v6, p0, Lcom/android/settings/fuelgauge/anomaly/checker/BluetoothScanAnomalyDetector;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    invoke-virtual {v6, v5}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getAnomalyAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    :cond_2
    return-object v0
.end method

.method public getBluetoothUnoptimizedBgTimeMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 0

    .line 110
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p1

    .line 112
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method
