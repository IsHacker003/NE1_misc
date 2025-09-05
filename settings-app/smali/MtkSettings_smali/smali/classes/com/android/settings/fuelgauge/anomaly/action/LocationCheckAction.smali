.class public Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;
.super Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;
.source "LocationCheckAction.java"


# instance fields
.field private final mRuntimePermissionPresenter:Landroid/content/pm/permission/RuntimePermissionPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-static {p1}, Landroid/content/pm/permission/RuntimePermissionPresenter;->getInstance(Landroid/content/Context;)Landroid/content/pm/permission/RuntimePermissionPresenter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;-><init>(Landroid/content/Context;Landroid/content/pm/permission/RuntimePermissionPresenter;)V

    .line 39
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/permission/RuntimePermissionPresenter;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;->mRuntimePermissionPresenter:Landroid/content/pm/permission/RuntimePermissionPresenter;

    .line 45
    const/16 p1, 0x3fd

    iput p1, p0, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;->mActionMetricKey:I

    .line 46
    return-void
.end method

.method private isPermissionGranted(Lcom/android/settings/fuelgauge/anomaly/Anomaly;Ljava/lang/String;)Z
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    iget-object p1, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, p2, v2, v1, p1}, Landroid/support/v4/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getActionType()I
    .locals 1

    .line 65
    const/4 v0, 0x2

    return v0
.end method

.method public handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V
    .locals 2

    .line 50
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    .line 51
    iget-object p2, p0, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;->mRuntimePermissionPresenter:Landroid/content/pm/permission/RuntimePermissionPresenter;

    iget-object v0, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;->mRuntimePermissionPresenter:Landroid/content/pm/permission/RuntimePermissionPresenter;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/permission/RuntimePermissionPresenter;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z
    .locals 1

    .line 59
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;->isPermissionGranted(Lcom/android/settings/fuelgauge/anomaly/Anomaly;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/anomaly/action/LocationCheckAction;->isPermissionGranted(Lcom/android/settings/fuelgauge/anomaly/Anomaly;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 59
    :goto_1
    return p1
.end method
