.class public abstract Lcom/android/settings/deviceinfo/MigrateEstimateTask;
.super Landroid/os/AsyncTask;
.source "MigrateEstimateTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSizeBytes:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    .line 52
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/content/Intent;)V
    .locals 3

    .line 56
    const-string v0, "size_bytes"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    .line 57
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 11

    .line 65
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 66
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 70
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 71
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/StorageStatsManager;

    .line 73
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .line 74
    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .line 76
    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 77
    const-string p1, "StorageSettings"

    const-string v0, "Failed to find current primary storage"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 82
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v0

    .line 83
    const-string v4, "StorageSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Measuring size of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const-wide/16 v6, 0x0

    .line 86
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 87
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    .line 88
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 87
    invoke-virtual {v1, v0, v8}, Landroid/app/usage/StorageStatsManager;->queryExternalStatsForUser(Ljava/util/UUID;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v8

    .line 89
    invoke-virtual {v8}, Landroid/app/usage/ExternalStorageStats;->getTotalBytes()J

    move-result-wide v9

    add-long/2addr v6, v9

    .line 90
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_2

    .line 91
    invoke-virtual {v8}, Landroid/app/usage/ExternalStorageStats;->getObbBytes()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 93
    :cond_2
    goto :goto_0

    .line 94
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 95
    :catch_0
    move-exception p1

    .line 96
    const-string v0, "StorageSettings"

    const-string v1, "Failed to measure"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v0, v1, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 6

    .line 103
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    .line 104
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/32 v4, 0xa00000

    div-long/2addr v0, v4

    .line 105
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 107
    iget-object p1, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->mSizeBytes:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->onPostExecute(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method public abstract onPostExecute(Ljava/lang/String;Ljava/lang/String;)V
.end method
