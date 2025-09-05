.class public Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "StorageItemPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final AUDIO_KEY:Ljava/lang/String; = "pref_music_audio"

.field static final FILES_KEY:Ljava/lang/String; = "pref_files"

.field static final GAME_KEY:Ljava/lang/String; = "pref_games"

.field static final MOVIES_KEY:Ljava/lang/String; = "pref_movies"

.field static final OTHER_APPS_KEY:Ljava/lang/String; = "pref_other_apps"

.field static final PHOTO_KEY:Ljava/lang/String; = "pref_photos_videos"

.field static final SYSTEM_KEY:Ljava/lang/String; = "pref_system"


# instance fields
.field private mAppPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private final mFragment:Landroid/app/Fragment;

.field private mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mIsWorkProfile:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private final mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

.field private mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mTotalSize:J

.field private mUsedBytes:J

.field private mUserId:I

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 101
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 102
    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 103
    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    .line 104
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 105
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Z)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)V

    .line 115
    iput-boolean p5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsWorkProfile:Z

    .line 116
    return-void
.end method

.method private static applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 226
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010429    # @android:attr/colorControlNormal

    aput v2, v0, v1

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 228
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 229
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 230
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    return-object p1
.end method

.method private getAppsIntent()Landroid/content/Intent;
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    .line 351
    const/4 v0, 0x0

    return-object v0

    .line 353
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 354
    const-string v1, "classname"

    const-class v2, Lcom/android/settings/Settings$StorageUseActivity;

    .line 355
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v1, "volumeUuid"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "volumeName"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 359
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f120158    # @string/apps_storage 'Apps storage'

    .line 360
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 361
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 362
    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 358
    return-object v0
.end method

.method private getAudioIntent()Landroid/content/Intent;
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x0

    return-object v0

    .line 335
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 336
    const-string v1, "classname"

    const-class v2, Lcom/android/settings/Settings$StorageUseActivity;

    .line 337
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v1, "volumeUuid"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v1, "volumeName"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v1, "storageType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 342
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f120d3c    # @string/storage_music_audio 'Music & audio'

    .line 343
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 344
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 345
    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 341
    return-object v0
.end method

.method private getFilesIntent()Landroid/content/Intent;
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v1}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getGamesIntent()Landroid/content/Intent;
    .locals 3

    .line 367
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 368
    const-string v1, "classname"

    const-class v2, Lcom/android/settings/Settings$GamesStorageActivity;

    .line 369
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 371
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 372
    const v2, 0x7f1206a8    # @string/game_storage_settings 'Games'

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 373
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 374
    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 370
    return-object v0
.end method

.method private getMoviesIntent()Landroid/content/Intent;
    .locals 3

    .line 379
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 380
    const-string v1, "classname"

    const-class v2, Lcom/android/settings/Settings$MoviesStorageActivity;

    .line 381
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 383
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 384
    const v2, 0x7f120d3b    # @string/storage_movies_tv 'Movie & TV apps'

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 385
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 386
    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 382
    return-object v0
.end method

.method private getPhotosIntent()Landroid/content/Intent;
    .locals 3

    .line 316
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 317
    const-string v1, "classname"

    const-class v2, Lcom/android/settings/Settings$PhotosStorageActivity;

    .line 318
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v1, "storageType"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 322
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 323
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 324
    const v2, 0x7f120d40    # @string/storage_photos_videos 'Photos & videos'

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 325
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 326
    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 322
    return-object v0
.end method

.method private getWorkAnnotatedBundle(I)Landroid/os/Bundle;
    .locals 2

    .line 391
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    add-int/2addr v1, p1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 392
    const-string p1, "workProfileOnly"

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsWorkProfile:Z

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    const-string p1, "workId"

    iget v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    return-object v0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 3

    .line 403
    :try_start_0
    const-string v0, "android.intent.extra.USER_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 405
    if-ne v0, v1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    goto :goto_1

    .line 410
    :catch_0
    move-exception v0

    .line 411
    const-string v0, "StorageItemPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No activity found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_1
    return-void
.end method

.method private setFilesPreferenceVisibility()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v1}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 196
    :goto_1
    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 202
    :cond_3
    :goto_2
    return-void
.end method

.method private tintPreference(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 236
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 237
    const-string v0, "pref_photos_videos"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 238
    const-string v0, "pref_music_audio"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 239
    const-string v0, "pref_games"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 240
    const-string v0, "pref_movies"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 241
    const-string v0, "pref_other_apps"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 242
    const-string v0, "pref_system"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 243
    const-string v0, "pref_files"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 245
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setFilesPreferenceVisibility()V

    .line 246
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    .line 125
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 126
    return v0

    .line 129
    :cond_0
    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 131
    return v0

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "pref_other_apps"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "pref_system"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_2
    const-string v4, "pref_movies"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v4, "pref_music_audio"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_1

    :sswitch_4
    const-string v4, "pref_photos_videos"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :sswitch_5
    const-string v4, "pref_games"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_6
    const-string v4, "pref_files"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 160
    :pswitch_0
    new-instance p1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "SystemInfo"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 163
    return v5

    .line 155
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getFilesIntent()Landroid/content/Intent;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mContext:Landroid/content/Context;

    const/16 v4, 0x349

    new-array v0, v0, [Landroid/util/Pair;

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 158
    goto :goto_2

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_3

    .line 150
    goto :goto_2

    .line 152
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getAppsIntent()Landroid/content/Intent;

    move-result-object v1

    .line 153
    goto :goto_2

    .line 144
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getMoviesIntent()Landroid/content/Intent;

    move-result-object v1

    .line 145
    goto :goto_2

    .line 141
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getGamesIntent()Landroid/content/Intent;

    move-result-object v1

    .line 142
    goto :goto_2

    .line 138
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getAudioIntent()Landroid/content/Intent;

    move-result-object v1

    .line 139
    goto :goto_2

    .line 135
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getPhotosIntent()Landroid/content/Intent;

    move-result-object v1

    .line 136
    nop

    .line 166
    :goto_2
    if-eqz v1, :cond_4

    .line 167
    const-string p1, "android.intent.extra.USER_ID"

    iget v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchIntent(Landroid/content/Intent;)V

    .line 170
    return v5

    .line 173
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x61e7a6a5 -> :sswitch_6
        -0x61dd2e5b -> :sswitch_5
        -0x58bcf846 -> :sswitch_4
        0x10e4e120 -> :sswitch_3
        0x313de4df -> :sswitch_2
        0x3c06afcb -> :sswitch_1
        0x4534fddd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 1

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public onLoadFinished(Landroid/util/SparseArray;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;I)V"
        }
    .end annotation

    .line 250
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 254
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    iget-object v3, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v3, v3, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    add-long/2addr v1, v3

    iget-object v3, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v3, v3, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    iget-object v3, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v3, v3, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 263
    iget-object v0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v0, v0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    iget-object v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    sub-long/2addr v0, v2

    iget-object v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    sub-long/2addr v0, v2

    iget-object v2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    sub-long/2addr v0, v2

    iget-object p2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, p2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->appBytes:J

    sub-long/2addr v0, v2

    .line 269
    iget-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 271
    iget-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz p2, :cond_1

    .line 274
    const-wide/16 v0, 0x0

    .line 275
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 276
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 277
    iget-wide v3, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    add-long/2addr v3, v5

    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    add-long/2addr v3, v5

    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    add-long/2addr v3, v5

    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 283
    iget-object v3, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v3, v3, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    iget-object v2, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v5, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->appBytes:J

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 275
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 287
    :cond_0
    const-wide/32 p1, 0x40000000

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUsedBytes:J

    sub-long/2addr v2, v0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 288
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 290
    :cond_1
    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    .line 297
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    .line 298
    return-void
.end method

.method public setUsedSize(J)V
    .locals 0

    .line 293
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUsedBytes:J

    .line 294
    return-void
.end method

.method public setUserId(Landroid/os/UserHandle;)V
    .locals 0

    .line 208
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    .line 210
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroid/support/v7/preference/Preference;)V

    .line 211
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroid/support/v7/preference/Preference;)V

    .line 212
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroid/support/v7/preference/Preference;)V

    .line 213
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroid/support/v7/preference/Preference;)V

    .line 214
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroid/support/v7/preference/Preference;)V

    .line 215
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroid/support/v7/preference/Preference;)V

    .line 216
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroid/support/v7/preference/Preference;)V

    .line 217
    return-void
.end method

.method public setVolume(Landroid/os/storage/VolumeInfo;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 186
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setFilesPreferenceVisibility()V

    .line 187
    return-void
.end method
