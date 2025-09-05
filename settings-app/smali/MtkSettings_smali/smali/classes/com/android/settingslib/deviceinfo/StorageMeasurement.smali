.class public Lcom/android/settingslib/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;,
        Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;,
        Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private final mStats:Landroid/app/usage/StorageStatsManager;

.field private final mUser:Landroid/os/UserManager;

.field private final mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    .line 107
    iget-object p1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mUser:Landroid/os/UserManager;

    .line 108
    iget-object p1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/StorageStatsManager;

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mStats:Landroid/app/usage/StorageStatsManager;

    .line 110
    iput-object p2, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 111
    iput-object p3, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/android/settingslib/deviceinfo/StorageMeasurement;)Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->measureExactStorage()Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settingslib/deviceinfo/StorageMeasurement;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private static addValue(Landroid/util/SparseLongArray;IJ)V
    .locals 2

    .line 232
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 233
    return-void
.end method

.method private measureExactStorage()Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    .locals 12

    .line 148
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mUser:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 152
    new-instance v3, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v3}, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    .line 153
    iget-object v4, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v4, :cond_0

    return-object v3

    .line 155
    :cond_0
    iget-object v4, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 157
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    .line 158
    return-object v3

    .line 162
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v5, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v5, v5, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 163
    iget-object v4, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v5, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v5, v5, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 168
    nop

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 171
    const-string v6, "StorageMeasurement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Measured total storage in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v1, v4, v1

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 175
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 176
    iget-object v7, v3, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    :try_start_1
    iget-object v7, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v8, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    iget-object v8, v8, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget v9, v2, Landroid/content/pm/UserInfo;->id:I

    .line 181
    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 180
    invoke-virtual {v7, v8, v9}, Landroid/app/usage/StorageStatsManager;->queryExternalStatsForUser(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    nop

    .line 187
    iget-object v8, v3, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v9, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7}, Landroid/app/usage/ExternalStorageStats;->getTotalBytes()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 190
    sget-object v8, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/app/usage/ExternalStorageStats;->getAudioBytes()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v8, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/app/usage/ExternalStorageStats;->getVideoBytes()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v8, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/app/usage/ExternalStorageStats;->getImageBytes()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v7}, Landroid/app/usage/ExternalStorageStats;->getTotalBytes()J

    move-result-wide v8

    invoke-virtual {v7}, Landroid/app/usage/ExternalStorageStats;->getAudioBytes()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 195
    invoke-virtual {v7}, Landroid/app/usage/ExternalStorageStats;->getVideoBytes()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v7}, Landroid/app/usage/ExternalStorageStats;->getImageBytes()J

    move-result-wide v6

    sub-long/2addr v8, v6

    .line 196
    iget-object v6, v3, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v2, v8, v9}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 197
    goto :goto_0

    .line 182
    :catch_0
    move-exception v2

    .line 183
    const-string v6, "StorageMeasurement"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    goto :goto_0

    .line 200
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 201
    const-string v6, "StorageMeasurement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Measured shared storage in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v1, v4

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v4, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 207
    :try_start_2
    iget-object v5, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v6, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v6, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/usage/StorageStatsManager;->queryStatsForUser(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 211
    nop

    .line 214
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 215
    iget-object v6, v3, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 218
    :cond_3
    iget-object v6, v3, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 219
    iget-object v6, v3, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v7

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-static {v6, v4, v7, v8}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 221
    iget-wide v6, v3, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v4

    add-long/2addr v6, v4

    iput-wide v6, v3, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    .line 222
    goto :goto_1

    .line 208
    :catch_1
    move-exception v4

    .line 209
    const-string v5, "StorageMeasurement"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    goto :goto_1

    .line 225
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 226
    const-string v0, "StorageMeasurement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Measured private storage in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v1

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-object v3

    .line 164
    :catch_2
    move-exception v0

    .line 166
    const-string v1, "StorageMeasurement"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    return-object v3
.end method


# virtual methods
.method public forceMeasure()V
    .locals 0

    .line 121
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->measure()V

    .line 122
    return-void
.end method

.method public measure()V
    .locals 2

    .line 125
    new-instance v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;-><init>(Lcom/android/settingslib/deviceinfo/StorageMeasurement;Lcom/android/settingslib/deviceinfo/StorageMeasurement$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 126
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 130
    return-void
.end method

.method public setReceiver(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 118
    :cond_1
    return-void
.end method
