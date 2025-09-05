.class public Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;
.super Ljava/lang/Object;
.source "SmartBatteryDetector.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/content/ContentResolver;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    .line 35
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->mContentResolver:Landroid/content/ContentResolver;

    .line 36
    return-void
.end method


# virtual methods
.method public detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "adaptive_battery_management_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testSmartBatteryTip:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    move v2, v1

    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    nop

    .line 45
    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x2

    .line 46
    :goto_2
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;-><init>(I)V

    return-object v0
.end method
