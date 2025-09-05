.class public Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;
.super Ljava/lang/Object;
.source "LowBatteryDetector.java"


# instance fields
.field private mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field private mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWarningLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    .line 40
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 41
    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mPowerManager:Landroid/os/PowerManager;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0056    # @android:integer/config_lowMemoryKillerMinFreeKbytesAbsolute

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mWarningLevel:I

    .line 44
    return-void
.end method


# virtual methods
.method public detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 8

    .line 48
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget v1, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    iget v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mWarningLevel:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-boolean v1, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-wide v1, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget v6, v6, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->lowBatteryHour:I

    int-to-long v6, v6

    .line 51
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-gez v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    move v1, v4

    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    nop

    .line 53
    move v1, v3

    :goto_1
    const/4 v2, 0x2

    .line 54
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v5, v5, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->lowBatteryEnabled:Z

    if-eqz v5, :cond_4

    .line 55
    if-eqz v0, :cond_2

    .line 57
    nop

    .line 64
    move v2, v3

    goto :goto_2

    .line 58
    :cond_2
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v3, v3, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testLowBatteryTip:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-boolean v3, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 60
    :cond_3
    nop

    .line 64
    move v2, v4

    :cond_4
    :goto_2
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;-><init>(IZLjava/lang/CharSequence;)V

    return-object v1
.end method
