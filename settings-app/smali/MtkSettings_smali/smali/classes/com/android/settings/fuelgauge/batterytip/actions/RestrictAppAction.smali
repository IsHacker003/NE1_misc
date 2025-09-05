.class public Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;
.super Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
.source "RestrictAppAction.java"


# instance fields
.field mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    .line 47
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 48
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    .line 49
    return-void
.end method


# virtual methods
.method public handlePositiveAction(I)V
    .locals 16

    move-object/from16 v0, p0

    .line 56
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->getRestrictAppList()Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    .line 59
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 60
    iget-object v7, v6, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    .line 62
    iget-object v8, v0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v9, v6, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    invoke-virtual {v8, v9, v7, v5}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    .line 64
    iget-object v8, v6, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->anomalyTypes:Landroid/util/ArraySet;

    invoke-static {v8}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    const/16 v9, 0x341

    const/16 v10, 0x552

    if-eqz v8, :cond_0

    .line 66
    iget-object v6, v0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v8, v0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mContext:Landroid/content/Context;

    new-array v5, v5, [Landroid/util/Pair;

    .line 68
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    aput-object v9, v5, v3

    .line 66
    invoke-virtual {v6, v8, v10, v7, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    goto :goto_2

    .line 70
    :cond_0
    iget-object v6, v6, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->anomalyTypes:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 71
    iget-object v11, v0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v12, v0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mContext:Landroid/content/Context;

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/util/Pair;

    .line 73
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    aput-object v14, v13, v3

    const/16 v14, 0x556

    .line 74
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    aput-object v8, v13, v5

    .line 71
    invoke-virtual {v11, v12, v10, v7, v13}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 75
    goto :goto_1

    .line 58
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, v0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    invoke-virtual {v0, v1, v5}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->updateAnomalies(Ljava/util/List;I)V

    .line 80
    return-void
.end method
