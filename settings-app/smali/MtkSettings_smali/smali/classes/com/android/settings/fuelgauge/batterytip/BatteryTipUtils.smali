.class public Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;
.super Ljava/lang/Object;
.source "BatteryTipUtils.java"


# direct methods
.method public static getActionForBatteryTip(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 112
    const/4 p0, 0x0

    return-object p0

    .line 104
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 105
    new-instance p1, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;

    check-cast p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;-><init>(Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;)V

    return-object p1

    .line 107
    :cond_0
    new-instance p2, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;

    check-cast p0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;)V

    return-object p2

    .line 95
    :pswitch_1
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;-><init>(Lcom/android/settings/SettingsActivity;Landroid/app/Fragment;)V

    return-object p0

    .line 110
    :cond_1
    new-instance p2, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;

    check-cast p0, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;)V

    return-object p2

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getState()I

    move-result p0

    if-ne p0, v2, :cond_3

    .line 99
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenBatterySaverAction;

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/actions/OpenBatterySaverAction;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 101
    :cond_3
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatterySaverAction;

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/actions/BatterySaverAction;-><init>(Landroid/content/Context;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRestrictedAppsList(Landroid/app/AppOpsManager;Landroid/os/UserManager;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager;",
            "Landroid/os/UserManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x46

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object p0

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    .line 63
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 64
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    .line 65
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_2

    .line 66
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$OpEntry;

    .line 67
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v10

    if-eq v10, v1, :cond_0

    .line 68
    goto :goto_2

    .line 70
    :cond_0
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Landroid/os/UserHandle;

    .line 72
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 71
    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 73
    new-instance v9, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-direct {v9}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;-><init>()V

    .line 74
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v9

    .line 75
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setUid(I)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v9

    .line 76
    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->build()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object v9

    .line 73
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 62
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :cond_3
    return-object v0
.end method

.method public static uploadAnomalyPendingIntent(Landroid/content/Context;Landroid/app/StatsManager;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 125
    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/app/StatsManager;->setBroadcastSubscriber(Landroid/app/PendingIntent;JJ)V

    .line 127
    return-void
.end method
