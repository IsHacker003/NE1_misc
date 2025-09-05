.class public Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;
.super Ljava/lang/Object;
.source "CachedStorageValuesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;
    }
.end annotation


# static fields
.field public static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "CachedStorageValues"


# instance fields
.field private final mClobberThreshold:Ljava/lang/Long;

.field protected mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "CachedStorageValues"

    .line 57
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 58
    new-instance v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    .line 59
    iput p2, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    .line 60
    nop

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "storage_settings_clobber_threshold"

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 64
    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 61
    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClobberThreshold:Ljava/lang/Long;

    .line 65
    return-void
.end method

.method private isDataValid()Z
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "user_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 157
    iget v1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 158
    return v2

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_query_timestamp"

    const-wide v3, 0x7fffffffffffffffL

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 162
    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;->getCurrentTime()J

    move-result-wide v3

    .line 163
    sub-long/2addr v3, v0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClobberThreshold:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-gez v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2
.end method


# virtual methods
.method public cacheResult(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "free_bytes"

    iget-wide v2, p1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    .line 137
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "total_bytes"

    iget-wide v2, p1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    .line 138
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "game_apps_size"

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    .line 139
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "music_apps_size"

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    .line 140
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "video_apps_size"

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    .line 141
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "photo_apps_size"

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    .line 142
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "other_apps_size"

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    .line 143
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "cache_apps_size"

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->cacheSize:J

    .line 144
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "external_total_bytes"

    iget-object v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v1, v1, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    .line 145
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "external_audio_bytes"

    iget-object v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v1, v1, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    .line 146
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "external_video_bytes"

    iget-object v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v1, v1, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    .line 147
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "external_image_bytes"

    iget-object v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v1, v1, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    .line 148
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "external_apps_bytes"

    iget-object p2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v1, p2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->appBytes:J

    .line 149
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "user_id"

    iget v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    .line 150
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "last_query_timestamp"

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    .line 151
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;->getCurrentTime()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 152
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    return-void
.end method

.method public getCachedAppsStorageResult()Landroid/util/SparseArray;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    .line 81
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->isDataValid()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 82
    return-object v2

    .line 84
    :cond_0
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "game_apps_size"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 85
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "music_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 86
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "video_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 87
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "photo_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 88
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "other_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 89
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cache_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 90
    const-wide/16 v16, 0x0

    cmp-long v1, v6, v16

    if-ltz v1, :cond_4

    cmp-long v1, v8, v16

    if-ltz v1, :cond_4

    cmp-long v1, v10, v16

    if-ltz v1, :cond_4

    cmp-long v1, v12, v16

    if-ltz v1, :cond_4

    cmp-long v1, v14, v16

    if-ltz v1, :cond_4

    cmp-long v1, v2, v16

    if-gez v1, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-wide/from16 v18, v2

    const-string v2, "external_total_bytes"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    .line 100
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "external_audio_bytes"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v23

    .line 101
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "external_video_bytes"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v25

    .line 102
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "external_image_bytes"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v27

    .line 103
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "external_apps_bytes"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v29

    .line 104
    cmp-long v1, v21, v16

    if-ltz v1, :cond_3

    cmp-long v1, v23, v16

    if-ltz v1, :cond_3

    cmp-long v1, v25, v16

    if-ltz v1, :cond_3

    cmp-long v1, v27, v16

    if-ltz v1, :cond_3

    cmp-long v1, v29, v16

    if-gez v1, :cond_2

    goto :goto_0

    .line 112
    :cond_2
    new-instance v1, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-object/from16 v20, v1

    invoke-direct/range {v20 .. v30}, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;-><init>(JJJJJ)V

    .line 119
    new-instance v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    invoke-direct {v2}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;-><init>()V

    .line 121
    iput-wide v6, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    .line 122
    iput-wide v8, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    .line 123
    iput-wide v10, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    .line 124
    iput-wide v12, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    .line 125
    iput-wide v14, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    .line 126
    move-wide/from16 v3, v18

    iput-wide v3, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->cacheSize:J

    .line 127
    iput-object v1, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    .line 128
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 129
    iget v0, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 130
    return-object v1

    .line 109
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCachedPrivateStorageInfo()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 9

    .line 68
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->isDataValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    return-object v1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "free_bytes"

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "total_bytes"

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 73
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_2

    cmp-long v0, v2, v7

    if-gez v0, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-direct {v0, v5, v6, v2, v3}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;-><init>(JJ)V

    return-object v0

    .line 74
    :cond_2
    :goto_0
    return-object v1
.end method
