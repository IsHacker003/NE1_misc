.class public Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;
.super Ljava/lang/Object;
.source "StorageManagerVolumeProvider.java"

# interfaces
.implements Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;


# instance fields
.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 35
    return-void
.end method


# virtual methods
.method public findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    return-object p1
.end method

.method public getFreeBytes(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getTotalBytes(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getVolumes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
