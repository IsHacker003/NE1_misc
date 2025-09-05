.class public Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;
.super Landroid/os/AsyncTask;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartitionTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$StorageEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field public mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

.field private final mLock:Ljava/lang/Object;

.field private volatile mPrivateBench:J

.field private volatile mProgress:I

.field private final mStorageEventListener:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$StorageEventListener;

.field private storage:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 81
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$StorageEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$StorageEventListener;-><init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$1;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mStorageEventListener:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$StorageEventListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;)Ljava/lang/Object;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;[Ljava/lang/Object;)V
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 6

    .line 103
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 105
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mStorage:Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->storage:Landroid/os/storage/StorageManager;

    .line 106
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->storage:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mStorageEventListener:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 109
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->access$200(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->storage:Landroid/os/storage/StorageManager;

    iget-object v2, p1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->partitionPrivate(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/16 v4, 0x28

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->publishProgress([Ljava/lang/Object;)V

    .line 113
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    const-string v3, "StorageSettings"

    const-string v4, "wait for volume mount"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mLock:Ljava/lang/Object;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 116
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    const/16 v2, 0x19

    :try_start_2
    invoke-virtual {p1, v0, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->findFirstVolume(II)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 119
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 120
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->storage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/storage/StorageManager;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 132
    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    const-string v3, "run"

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    .line 137
    iget-object p1, p1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->storage:Landroid/os/storage/StorageManager;

    .line 138
    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object p1

    const-string v2, "primary_physical"

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    const-string p1, "StorageSettings"

    const-string v2, "Just formatted primary physical; silently moving storage to new emulated volume"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->storage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SilentObserver;

    invoke-direct {v2, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SilentObserver;-><init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$1;)V

    invoke-virtual {p1, v0, v2}, Landroid/os/storage/StorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    :cond_0
    goto :goto_0

    .line 116
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->storage:Landroid/os/storage/StorageManager;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 148
    :goto_0
    return-object v1

    .line 149
    :catch_0
    move-exception p1

    .line 150
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 169
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->storage:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mStorageEventListener:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 171
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    return-void

    .line 175
    :cond_0
    if-eqz p1, :cond_1

    .line 176
    const-string v1, "StorageSettings"

    const-string v2, "Failed to partition"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 178
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    .line 179
    return-void

    .line 182
    :cond_1
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->access$200(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 214
    const-string p1, "StorageSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New volume took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms to run benchmark"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_3

    const-string p1, "sys.debug.storage_slow"

    const/4 v0, 0x0

    .line 216
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 219
    :cond_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->onFormatFinished()V

    goto :goto_1

    .line 217
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->onFormatFinishedSlow()V

    goto :goto_1

    .line 222
    :cond_4
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->onFormatFinished()V

    .line 224
    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1

    .line 156
    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    .line 157
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setCurrentProgress(I)V

    .line 158
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setActivity(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V
    .locals 1

    .line 161
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 162
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setCurrentProgress(I)V

    .line 163
    return-void
.end method
