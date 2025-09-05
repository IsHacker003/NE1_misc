.class public Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;
.super Landroid/app/job/JobService;
.source "AnomalyDetectionJobService.java"


# static fields
.field static final MAX_DELAY_MS:J

.field static final STATSD_UID_FILED:I = 0x1

.field static final UID_NULL:I = -0x1


# instance fields
.field mIsJobCanceled:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->MAX_DELAY_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mLock:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mIsJobCanceled:Z

    return-void
.end method

.method public static synthetic lambda$onStartJob$0(Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;Landroid/app/job/JobParameters;)V
    .locals 22

    move-object/from16 v11, p0

    .line 92
    nop

    .line 93
    nop

    .line 94
    invoke-static/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object v12

    .line 95
    new-instance v13, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    invoke-direct {v13, v11}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-static/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v14

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 98
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v11, v0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/UserManager;

    .line 99
    nop

    .line 100
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object v17

    .line 101
    nop

    .line 102
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v18

    .line 103
    nop

    .line 104
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v19

    .line 106
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->dequeueWork(Landroid/app/job/JobParameters;)Landroid/app/job/JobWorkItem;

    move-result-object v0

    move-object v10, v0

    :goto_0
    if-eqz v10, :cond_0

    .line 107
    nop

    .line 110
    invoke-virtual {v10}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    .line 107
    move-object v0, v11

    move-object v1, v11

    move-object/from16 v2, v16

    move-object v3, v12

    move-object v4, v14

    move-object v5, v13

    move-object/from16 v6, v17

    move-object v7, v15

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v21, v12

    move-object v12, v10

    move-object/from16 v10, v20

    invoke-virtual/range {v0 .. v10}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->saveAnomalyToDatabase(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;Landroid/content/ContentResolver;Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/os/Bundle;)V

    .line 112
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->completeWork(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V

    .line 106
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->dequeueWork(Landroid/app/job/JobParameters;)Landroid/app/job/JobWorkItem;

    move-result-object v10

    move-object/from16 v12, v21

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method public static scheduleAnomalyDetection(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 73
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 74
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    const v2, 0x7f0b000b    # @integer/job_anomaly_detection '102'

    invoke-direct {p0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-wide v1, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->MAX_DELAY_MS:J

    .line 78
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    new-instance v1, Landroid/app/job/JobWorkItem;

    invoke-direct {v1, p1}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    .line 82
    const-string p0, "AnomalyDetectionService"

    const-string p1, "Anomaly detection job service enqueue failed."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method completeWork(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mIsJobCanceled:Z

    if-eqz v1, :cond_0

    .line 235
    monitor-exit v0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p1, p2}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    .line 239
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method dequeueWork(Landroid/app/job/JobParameters;)Landroid/app/job/JobWorkItem;
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mIsJobCanceled:Z

    if-eqz v1, :cond_0

    .line 224
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 228
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method extractUidFromStatsDimensionsValue(Landroid/os/StatsDimensionsValue;)I
    .locals 4

    .line 199
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 200
    return v0

    .line 202
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/os/StatsDimensionsValue;->isValueType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    invoke-virtual {p1}, Landroid/os/StatsDimensionsValue;->getField()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 205
    invoke-virtual {p1}, Landroid/os/StatsDimensionsValue;->getIntValue()I

    move-result p1

    return p1

    .line 207
    :cond_1
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/os/StatsDimensionsValue;->isValueType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    invoke-virtual {p1}, Landroid/os/StatsDimensionsValue;->getTupleValueList()Ljava/util/List;

    move-result-object p1

    .line 209
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 210
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/StatsDimensionsValue;

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->extractUidFromStatsDimensionsValue(Landroid/os/StatsDimensionsValue;)I

    move-result v3

    .line 211
    if-eq v3, v0, :cond_2

    .line 212
    return v3

    .line 209
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_3
    return v0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mIsJobCanceled:Z

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyDetectionJobService$7JxJe3rza0cCkIc77iCS-ZKPfL4;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyDetectionJobService$7JxJe3rza0cCkIc77iCS-ZKPfL4;-><init>(Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 116
    const/4 p1, 0x1

    return p1

    .line 90
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 122
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mIsJobCanceled:Z

    .line 123
    monitor-exit p1

    .line 124
    return v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method saveAnomalyToDatabase(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;Landroid/content/ContentResolver;Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    move-object/from16 v3, p9

    .line 134
    move-object/from16 v4, p10

    const-string v5, "android.app.extra.STATS_DIMENSIONS_VALUE"

    .line 135
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/StatsDimensionsValue;

    .line 136
    const-string v6, "key_anomaly_timestamp"

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 136
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 138
    const-string v6, "android.app.extra.STATS_BROADCAST_SUBSCRIBER_COOKIES"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 140
    new-instance v6, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;

    .line 141
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-direct {v6, v4}, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;-><init>(Ljava/lang/String;)V

    .line 142
    const-string v4, "AnomalyDetectionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extra stats value: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/os/StatsDimensionsValue;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    move-object/from16 v4, p0

    :try_start_0
    invoke-virtual {v4, v5}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->extractUidFromStatsDimensionsValue(Landroid/os/StatsDimensionsValue;)I

    move-result v10

    .line 146
    invoke-interface/range {p8 .. p8}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isSmartBatterySupported()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 148
    const-string v4, "adaptive_battery_management_enabled"

    .line 147
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 151
    :goto_1
    move v2, v5

    goto :goto_3

    .line 147
    :cond_1
    nop

    .line 151
    :goto_2
    move v2, v8

    goto :goto_3

    .line 150
    :cond_2
    const-string v4, "app_auto_restriction_enabled"

    .line 149
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    .line 151
    :goto_3
    invoke-virtual {v1, v10}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {v1, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getAppLongVersionCode(Ljava/lang/String;)J

    move-result-wide v12

    .line 154
    move-object/from16 v7, p6

    invoke-virtual {v1, v7, v10, v6}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideAnomaly(Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;ILcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z

    move-result v7

    const/16 v11, 0x56d

    const/4 v9, 0x2

    if-eqz v7, :cond_4

    .line 155
    const/16 v1, 0x56b

    new-array v2, v9, [Landroid/util/Pair;

    const/16 v7, 0x341

    .line 158
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v6, v6, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    aput-object v6, v2, v8

    .line 160
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 161
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 160
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    aput-object v6, v2, v5

    .line 155
    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    goto :goto_5

    .line 163
    :cond_4
    if-eqz v2, :cond_5

    iget-boolean v2, v6, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->autoRestriction:Z

    if-eqz v2, :cond_5

    .line 165
    invoke-virtual {v1, v10, v4, v5}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    .line 167
    iget-object v1, v6, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    move v7, v9

    move-object/from16 v9, p3

    move v5, v11

    move-object v11, v4

    move-wide/from16 v16, v12

    move v12, v1

    move v13, v2

    invoke-virtual/range {v9 .. v15}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->insertAnomaly(ILjava/lang/String;IIJ)Z

    goto :goto_4

    .line 171
    :cond_5
    move v7, v9

    move v5, v11

    move-wide/from16 v16, v12

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v9, p3

    move-object v11, v4

    invoke-virtual/range {v9 .. v15}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->insertAnomaly(ILjava/lang/String;IIJ)Z

    .line 175
    :goto_4
    const/16 v1, 0x557

    new-array v2, v7, [Landroid/util/Pair;

    const/16 v7, 0x556

    .line 178
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v6, v6, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    aput-object v6, v2, v8

    .line 180
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 181
    move-wide/from16 v6, v16

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 180
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    .line 175
    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_5
    goto :goto_6

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string v1, "AnomalyDetectionService"

    const-string v2, "Parse stats dimensions value error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    :goto_6
    return-void
.end method
