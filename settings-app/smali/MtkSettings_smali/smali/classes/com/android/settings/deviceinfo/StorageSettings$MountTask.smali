.class public Lcom/android/settings/deviceinfo/StorageSettings$MountTask;
.super Landroid/os/AsyncTask;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDescription:Ljava/lang/String;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V
    .locals 1

    .line 374
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mContext:Landroid/content/Context;

    .line 376
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 377
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mVolumeId:Ljava/lang/String;

    .line 378
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mDescription:Ljava/lang/String;

    .line 379
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 1

    .line 384
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->mount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    const/4 p1, 0x0

    return-object p1

    .line 386
    :catch_0
    move-exception p1

    .line 387
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 368
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 5

    .line 393
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 394
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mContext:Landroid/content/Context;

    const v3, 0x7f120d3a    # @string/storage_mount_success '%1$s is mounted'

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mDescription:Ljava/lang/String;

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 395
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 397
    :cond_0
    const-string v2, "StorageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to mount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mContext:Landroid/content/Context;

    const v3, 0x7f120d39    # @string/storage_mount_failure 'Couldn’t mount %1$s'

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->mDescription:Ljava/lang/String;

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 399
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 401
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 368
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
