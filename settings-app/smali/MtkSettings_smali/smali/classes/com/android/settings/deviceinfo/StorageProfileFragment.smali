.class public Lcom/android/settings/deviceinfo/StorageProfileFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "StorageProfileFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/dashboard/DashboardFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/util/SparseArray<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

.field private mUserId:I

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 103
    new-instance v8, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    new-instance v6, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {v6, v1}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    const/4 v7, 0x1

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Z)V

    iput-object v8, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    .line 110
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "StorageProfileFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 86
    const/16 v0, 0x34d

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 96
    const v0, 0x7f1500a1    # @xml/storage_profile_fragment 'res/xml/storage_profile_fragment.xml'

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 66
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 67
    invoke-static {v0, p1}, Lcom/android/settings/Utils;->maybeInitializeVolume(Landroid/os/storage/StorageManager;Landroid/os/Bundle;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 68
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 70
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    .line 74
    const-string v0, "userId"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mUserId:I

    .line 75
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setUserId(Landroid/os/UserHandle;)V

    .line 76
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;>;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 117
    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;

    const-class p2, Landroid/os/UserManager;

    .line 118
    invoke-virtual {v1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/UserManager;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v3, p2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    new-instance v4, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v4, v1}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 121
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-direct {v5, p2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;-><init>(Landroid/content/Context;Landroid/os/UserManager;Ljava/lang/String;Lcom/android/settingslib/applications/StorageStatsSource;Lcom/android/settingslib/wrapper/PackageManagerWrapper;)V

    .line 117
    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    .line 127
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mUserId:I

    invoke-virtual {p1, p2, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->onLoadFinished(Landroid/util/SparseArray;I)V

    .line 128
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->onLoadFinished(Landroid/content/Loader;Landroid/util/SparseArray;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;>;)V"
        }
    .end annotation

    .line 132
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 80
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageProfileFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 82
    return-void
.end method

.method setPreferenceController(Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageProfileFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    .line 137
    return-void
.end method
