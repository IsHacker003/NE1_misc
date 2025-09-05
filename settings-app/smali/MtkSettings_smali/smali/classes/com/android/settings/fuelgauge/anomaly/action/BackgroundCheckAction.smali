.class public Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;
.super Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;
.source "BackgroundCheckAction.java"


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 40
    const/16 v0, 0x3fc

    iput v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;->mActionMetricKey:I

    .line 41
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 42
    return-void
.end method


# virtual methods
.method public getActionType()I
    .locals 1

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V
    .locals 3

    .line 46
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    .line 47
    iget p2, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->targetSdkVersion:I

    const/16 v0, 0x1a

    if-ge p2, v0, :cond_0

    .line 48
    iget-object p2, p0, Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v0, 0x3f

    iget v1, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    iget-object p1, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 52
    :cond_0
    return-void
.end method

.method public isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v1, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->targetSdkVersion:I

    iget v2, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    iget-object p1, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->isBackgroundRestrictionEnabled(IILjava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
