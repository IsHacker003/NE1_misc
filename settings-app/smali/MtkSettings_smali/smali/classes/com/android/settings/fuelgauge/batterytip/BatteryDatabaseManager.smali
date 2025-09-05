.class public Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;
.super Ljava/lang/Object;
.source "BatteryDatabaseManager.java"


# static fields
.field private static sSingleton:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;


# instance fields
.field private mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    .line 87
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    .line 57
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;
    .locals 1

    .line 60
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    .line 63
    :cond_0
    sget-object p0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->sSingleton:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized deleteAllAnomaliesBeforeTimeStamp(J)V
    .locals 6

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 129
    :try_start_1
    const-string v2, "anomaly"

    const-string v3, "time_stamp_ms < ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 130
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    .line 129
    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    if-eqz v0, :cond_0

    :try_start_2
    invoke-static {v1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 132
    :cond_0
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 128
    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    :goto_0
    if-eqz v0, :cond_1

    :try_start_4
    invoke-static {v1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 127
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertAnomaly(ILjava/lang/String;IIJ)Z
    .locals 4

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 81
    const-string v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string p1, "package_name"

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string p1, "anomaly_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string p1, "anomaly_state"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    const-string p1, "time_stamp_ms"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const-string p1, "anomaly"

    const/4 p2, 0x4

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 p3, -0x1

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 87
    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-static {v1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    :cond_1
    monitor-exit p0

    return p1

    .line 87
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 79
    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    :goto_1
    if-eqz v0, :cond_2

    :try_start_4
    invoke-static {v1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 78
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized queryAllAnomalies(JI)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    monitor-enter p0

    .line 94
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v2, v1, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 96
    const/4 v11, 0x0

    :try_start_1
    const-string v3, "package_name"

    const-string v4, "anomaly_type"

    const-string v5, "uid"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 98
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 100
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x1

    .line 101
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 103
    const-string v4, "anomaly"

    const-string v6, "time_stamp_ms > ? AND anomaly_state = ? "

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "time_stamp_ms DESC"

    move-object v3, v2

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 105
    :goto_0
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    const-string v4, "uid"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 108
    new-instance v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-direct {v5}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;-><init>()V

    .line 109
    invoke-virtual {v5, v4}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setUid(I)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v5

    const-string v6, "package_name"

    .line 111
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v5

    .line 112
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v12, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    const-string v5, "anomaly_type"

    .line 115
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 114
    invoke-virtual {v4, v5}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->addAnomalyType(I)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    if-eqz v3, :cond_2

    :try_start_3
    invoke-static {v11, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 119
    :cond_2
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 120
    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->build()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    if-eqz v2, :cond_4

    :try_start_4
    invoke-static {v11, v2}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 124
    :cond_4
    monitor-exit p0

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    move-object v4, v11

    goto :goto_2

    .line 103
    :catch_0
    move-exception v0

    move-object v4, v0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 117
    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v3, :cond_5

    :try_start_6
    invoke-static {v4, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 122
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 95
    :catch_1
    move-exception v0

    move-object v11, v0

    :try_start_7
    throw v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 122
    :goto_3
    if-eqz v2, :cond_6

    :try_start_8
    invoke-static {v11, v2}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_6
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 93
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateAnomalies(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 141
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 143
    new-array v1, v0, [Ljava/lang/String;

    .line 144
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 145
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->mDatabaseHelper:Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 148
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 149
    const-string v4, "anomaly_state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string p2, "anomaly"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package_name IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    .line 151
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v6, "?"

    invoke-static {p1, v6}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 150
    invoke-static {v5, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, v3, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    if-eqz v0, :cond_2

    :try_start_2
    invoke-static {v2, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 147
    :catch_0
    move-exception p1

    move-object v2, p1

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    :goto_1
    if-eqz v0, :cond_1

    :try_start_4
    invoke-static {v2, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 154
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    .line 140
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
