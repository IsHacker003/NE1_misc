.class public Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "StorageAsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;,
        Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Landroid/util/SparseArray<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private mSeenPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

.field private mUserManager:Landroid/os/UserManager;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Ljava/lang/String;Lcom/android/settingslib/applications/StorageStatsSource;Lcom/android/settingslib/wrapper/PackageManagerWrapper;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUserManager:Landroid/os/UserManager;

    .line 61
    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    .line 63
    iput-object p5, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 64
    return-void
.end method

.method private getStorageResultForUser(I)Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
    .locals 14

    .line 92
    const-string v0, "StorageAsyncLoader"

    const-string v1, "Loading apps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 94
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 95
    new-instance v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    invoke-direct {v2}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;-><init>()V

    .line 96
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v1, v4, :cond_3

    .line 98
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 102
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/settingslib/applications/StorageStatsSource;->getStatsForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    nop

    .line 109
    invoke-interface {v6}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getDataBytes()J

    move-result-wide v7

    .line 110
    iget-object v9, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v10, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    iget v11, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v10, v11}, Lcom/android/settingslib/applications/StorageStatsSource;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v9

    .line 111
    invoke-interface {v6}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCacheBytes()J

    move-result-wide v11

    .line 112
    nop

    .line 117
    cmp-long v13, v9, v11

    if-gez v13, :cond_0

    .line 118
    sub-long/2addr v7, v11

    add-long/2addr v7, v9

    .line 123
    :cond_0
    iget-object v9, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mSeenPackages:Landroid/util/ArraySet;

    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 124
    invoke-interface {v6}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCodeBytes()J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 125
    iget-object v6, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mSeenPackages:Landroid/util/ArraySet;

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->category:I

    packed-switch v6, :pswitch_data_0

    .line 143
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x2000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 144
    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    .line 145
    goto :goto_1

    .line 139
    :pswitch_0
    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    .line 140
    goto :goto_1

    .line 136
    :pswitch_1
    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    .line 137
    goto :goto_1

    .line 133
    :pswitch_2
    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    .line 134
    goto :goto_1

    .line 130
    :pswitch_3
    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    .line 131
    goto :goto_1

    .line 147
    :cond_2
    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    goto :goto_1

    .line 103
    :catch_0
    move-exception v5

    .line 105
    const-string v6, "StorageAsyncLoader"

    const-string v7, "App unexpectedly not found"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    nop

    .line 97
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_3
    const-string v0, "StorageAsyncLoader"

    const-string v1, "Loading external stats"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    .line 155
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 154
    invoke-virtual {v0, v1, p1}, Lcom/android/settingslib/applications/StorageStatsSource;->getExternalStorageStats(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-result-object p1

    iput-object p1, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    goto :goto_2

    .line 156
    :catch_1
    move-exception p1

    .line 157
    const-string v0, "StorageAsyncLoader"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :goto_2
    const-string p1, "StorageAsyncLoader"

    const-string v0, "Obtaining result completed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadApps()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mSeenPackages:Landroid/util/ArraySet;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 76
    new-instance v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$1;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$1;-><init>(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 85
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 86
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getStorageResultForUser(I)Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-object v0
.end method


# virtual methods
.method public loadInBackground()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->loadApps()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->loadInBackground()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method protected onDiscardResult(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    .line 165
    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->onDiscardResult(Landroid/util/SparseArray;)V

    return-void
.end method
