.class public Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;
    }
.end annotation


# static fields
.field private static final ITEMS_NO_SHOW_SHARED:[I

.field private static final ITEMS_SHOW_SHARED:[I


# instance fields
.field private mCurrentUser:Landroid/content/pm/UserInfo;

.field private mExplore:Landroid/support/v7/preference/Preference;

.field private mHeaderPoolIndex:I

.field private mHeaderPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mItemPoolIndex:I

.field private mItemPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

.field private mNeedsUpdate:Z

.field private final mReceiver:Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private mSystemSize:J

.field private mTotalSize:J

.field private mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .line 99
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f120d0e    # @string/storage_detail_apps 'Apps'
        0x7f120d17    # @string/storage_detail_system 'System'
    .end array-data

    :array_1
    .array-data 4
        0x7f120d0e    # @string/storage_detail_apps 'Apps'
        0x7f120d15    # @string/storage_detail_images 'Images'
        0x7f120d18    # @string/storage_detail_videos 'Videos'
        0x7f120d0f    # @string/storage_detail_audio 'Audio'
        0x7f120d17    # @string/storage_detail_system 'System'
        0x7f120d16    # @string/storage_detail_other 'Other'
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 122
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    .line 123
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    .line 548
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 696
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setRetainInstance(Z)V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updateDetails(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->update()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method private addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 2

    .line 275
    iget v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    goto :goto_0

    .line 278
    :cond_0
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 279
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :goto_0
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 283
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 284
    iget p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 285
    return-object v0
.end method

.method private addDetailItems(Landroid/support/v7/preference/PreferenceGroup;ZI)V
    .locals 3

    .line 289
    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    .line 290
    :goto_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 291
    aget v1, p2, v0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, p3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 293
    :cond_1
    return-void
.end method

.method private addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V
    .locals 4

    .line 296
    const v0, 0x7f120d17    # @string/storage_detail_system 'System'

    if-ne p2, v0, :cond_1

    .line 297
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 298
    const-string p1, "PrivateVolumeSettings"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skipping System storage because its size is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void

    .line 301
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p4, v0, :cond_1

    .line 303
    return-void

    .line 307
    :cond_1
    iget v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 308
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    goto :goto_0

    .line 310
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->buildItem()Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    :goto_0
    if-eqz p3, :cond_3

    .line 314
    invoke-virtual {v0, p3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    goto :goto_1

    .line 317
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 318
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 320
    :goto_1
    const p2, 0x7f1208d2    # @string/memory_calculating_size 'Calculating…'

    invoke-virtual {v0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 321
    iput p4, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 322
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 323
    iget p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 324
    return-void
.end method

.method private addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 269
    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 270
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 271
    return-void
.end method

.method private buildAction(I)Landroid/support/v7/preference/Preference;
    .locals 2

    .line 333
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 334
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 335
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 336
    return-object v0
.end method

.method private buildItem()Lcom/android/settings/deviceinfo/StorageItemPreference;
    .locals 2

    .line 327
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    .line 328
    const v1, 0x7f0800a5    # @drawable/empty_icon 'res/drawable/empty_icon.xml'

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 329
    return-object v0
.end method

.method private getIntentForStorage(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 539
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    nop

    .line 541
    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "vnd.android.document/root"

    .line 540
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    const-string p1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    return-object v0
.end method

.method private isVolumeValid()Z
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 133
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 132
    :goto_0
    return v1
.end method

.method private setTitle()V
    .locals 3

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method

.method static setVolumeSize(Landroid/os/Bundle;J)V
    .locals 1

    .line 340
    const-string v0, "volume_size"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 341
    return-void
.end method

.method private static varargs totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J
    .locals 5

    .line 682
    nop

    .line 683
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    .line 684
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 685
    array-length p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, p2, v2

    .line 686
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 687
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 685
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 691
    :cond_1
    const-string p0, "PrivateVolumeSettings"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MeasurementDetails mediaSize array does not have key for user "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_2
    return-wide v0
.end method

.method private update()V
    .locals 12

    .line 197
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 199
    return-void

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setTitle()V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 212
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 214
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 215
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 216
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v3, v4, :cond_1

    .line 217
    move v6, v4

    goto :goto_0

    .line 216
    :cond_1
    nop

    .line 217
    move v6, v5

    :goto_0
    iget-object v7, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 219
    move v7, v4

    goto :goto_1

    .line 217
    :cond_2
    nop

    .line 219
    move v7, v5

    :goto_1
    iput v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    .line 220
    iput v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    .line 222
    nop

    .line 224
    move v8, v5

    move v9, v8

    :goto_2
    if-ge v8, v3, :cond_5

    .line 225
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 226
    iget-object v11, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    invoke-static {v11, v10}, Lcom/android/settings/Utils;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 227
    if-eqz v6, :cond_3

    .line 228
    iget-object v11, v10, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v1, v11}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v11

    goto :goto_3

    .line 229
    :cond_3
    move-object v11, v1

    :goto_3
    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v11, v7, v10}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addDetailItems(Landroid/support/v7/preference/PreferenceGroup;ZI)V

    .line 230
    add-int/lit8 v9, v9, 0x1

    .line 224
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 235
    :cond_5
    sub-int v6, v3, v9

    if-lez v6, :cond_7

    .line 236
    const v6, 0x7f120d3e    # @string/storage_other_users 'Other users'

    .line 237
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 236
    invoke-direct {p0, v1, v6}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v6

    .line 238
    move v8, v5

    :goto_4
    if-ge v8, v3, :cond_7

    .line 239
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 240
    iget-object v10, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    invoke-static {v10, v9}, Lcom/android/settings/Utils;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 241
    iget-object v10, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6, v5, v10, v9}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 238
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 246
    :cond_7
    const v2, 0x7f120d10    # @string/storage_detail_cached 'Cached data'

    const/4 v3, 0x0

    const/16 v6, -0x2710

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/support/v7/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 248
    if-eqz v7, :cond_8

    .line 249
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)V

    .line 252
    :cond_8
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v1

    .line 253
    iget-wide v6, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    sub-long/2addr v6, v1

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v6, v7, v5}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v3, 0x7f120d45    # @string/storage_size_large '^1<small><small> ^2</small></small>'

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/CharSequence;

    iget-object v9, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v9, v8, v5

    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v1, v8, v4

    invoke-static {v3, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v2, 0x7f120d53    # @string/storage_volume_used 'Used of %1$s'

    new-array v3, v4, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    .line 261
    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 260
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setPercent(JJ)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->forceMeasure()V

    .line 265
    iput-boolean v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    .line 266
    return-void
.end method

.method private updateDetails(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 28

    move-object/from16 v1, p0

    .line 556
    move-object/from16 v2, p1

    .line 557
    nop

    .line 558
    nop

    .line 559
    nop

    .line 561
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-wide v6, v3

    move-wide v8, v6

    move-wide v10, v8

    move v3, v5

    move-object v4, v0

    :goto_0
    iget v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    if-ge v3, v0, :cond_2

    .line 562
    iget-object v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 563
    iget v13, v12, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 566
    :try_start_0
    invoke-virtual {v12}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    goto :goto_1

    .line 567
    :catch_0
    move-exception v0

    .line 568
    nop

    .line 570
    move v0, v5

    :goto_1
    if-eqz v0, :cond_1

    const/4 v15, 0x2

    const/4 v14, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    .line 610
    :pswitch_0
    new-array v0, v14, [Ljava/lang/String;

    sget-object v14, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v14, v0, v5

    invoke-static {v2, v13, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v13

    .line 612
    invoke-direct {v1, v12, v13, v14}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 613
    add-long/2addr v6, v13

    .line 616
    goto/16 :goto_2

    .line 572
    :pswitch_1
    iget-wide v13, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    invoke-direct {v1, v12, v13, v14}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 573
    iget-wide v12, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    add-long/2addr v6, v12

    .line 576
    goto/16 :goto_2

    .line 628
    :pswitch_2
    new-array v0, v14, [Ljava/lang/String;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v4, v0, v5

    invoke-static {v2, v13, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v14

    .line 630
    iget-object v0, v2, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v16

    .line 631
    add-long/2addr v10, v14

    .line 632
    add-long v8, v8, v16

    .line 633
    add-long v16, v16, v14

    add-long v6, v6, v16

    .line 641
    nop

    .line 642
    nop

    .line 561
    move-object v4, v12

    goto/16 :goto_2

    .line 602
    :pswitch_3
    new-array v0, v15, [Ljava/lang/String;

    sget-object v15, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v15, v0, v5

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v15, v0, v14

    invoke-static {v2, v13, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v13

    .line 604
    invoke-direct {v1, v12, v13, v14}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 605
    add-long/2addr v6, v13

    .line 608
    goto/16 :goto_2

    .line 644
    :pswitch_4
    iget-wide v13, v2, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    invoke-direct {v1, v12, v13, v14}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 645
    iget-wide v12, v2, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    add-long/2addr v6, v12

    .line 649
    goto/16 :goto_2

    .line 618
    :pswitch_5
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sget-object v18, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v18, v0, v5

    sget-object v18, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v18, v0, v14

    sget-object v14, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v14, v0, v15

    sget-object v14, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    const/4 v15, 0x3

    aput-object v14, v0, v15

    sget-object v14, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    const/4 v15, 0x4

    aput-object v14, v0, v15

    invoke-static {v2, v13, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v13

    .line 622
    invoke-direct {v1, v12, v13, v14}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 623
    add-long/2addr v6, v13

    .line 626
    goto :goto_2

    .line 580
    :pswitch_6
    iget-object v0, v2, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v19

    .line 581
    new-array v0, v15, [Ljava/lang/String;

    sget-object v21, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v21, v0, v5

    sget-object v21, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v21, v0, v14

    invoke-static {v2, v13, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v21

    new-array v0, v14, [Ljava/lang/String;

    sget-object v23, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v23, v0, v5

    .line 582
    invoke-static {v2, v13, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v23

    add-long v21, v21, v23

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sget-object v18, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v18, v0, v5

    sget-object v18, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v18, v0, v14

    sget-object v14, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v14, v0, v15

    sget-object v14, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    const/4 v15, 0x3

    aput-object v14, v0, v15

    sget-object v14, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    const/4 v15, 0x4

    aput-object v14, v0, v15

    .line 583
    invoke-static {v2, v13, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->totalValues(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;I[Ljava/lang/String;)J

    move-result-wide v13

    add-long v21, v21, v13

    .line 586
    cmp-long v0, v19, v21

    if-ltz v0, :cond_0

    .line 588
    sub-long v19, v19, v21

    .line 591
    :cond_0
    move-wide/from16 v13, v19

    invoke-direct {v1, v12, v13, v14}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 592
    add-long/2addr v6, v13

    .line 600
    goto :goto_2

    .line 651
    :cond_1
    iget-object v0, v2, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v13

    .line 652
    invoke-direct {v1, v12, v13, v14}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 561
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 664
    :cond_2
    if-eqz v4, :cond_3

    .line 665
    iget-wide v12, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    iget-wide v14, v2, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    sub-long/2addr v12, v14

    .line 666
    sub-long v14, v12, v6

    .line 667
    add-long v16, v8, v10

    move-object/from16 v25, v4

    add-long v3, v16, v14

    .line 668
    const-string v0, "PrivateVolumeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v26, v3

    const-string v3, "Other items: \n\tmTotalSize: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " availSize: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " usedSize: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\n\taccountedSize: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " unaccountedSize size: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\n\ttotalMiscSize: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " totalDownloadsSize: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\n\tdetails: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    move-object/from16 v4, v25

    move-wide/from16 v2, v26

    invoke-direct {v1, v4, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 675
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f120d0e
        :pswitch_6    # @string/storage_detail_apps 'Apps'
        :pswitch_5    # @string/storage_detail_audio 'Audio'
        :pswitch_4    # @string/storage_detail_cached 'Cached data'
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f120d15
        :pswitch_3    # @string/storage_detail_images 'Images'
        :pswitch_2    # @string/storage_detail_other 'Other'
        :pswitch_1    # @string/storage_detail_system 'System'
        :pswitch_0    # @string/storage_detail_videos 'Videos'
    .end packed-switch
.end method

.method private updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V
    .locals 2

    .line 678
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 679
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 142
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 151
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    .line 152
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 157
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "volume_size"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    .line 159
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    .line 163
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 164
    iput-wide v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mTotalSize:J

    .line 165
    iput-wide v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 171
    new-instance v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    .line 172
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result p1

    if-nez p1, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 176
    return-void

    .line 179
    :cond_1
    const p1, 0x7f15004e    # @xml/device_info_storage_volume 'res/xml/device_info_storage_volume.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreferencesFromResource(I)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 182
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    .line 183
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    .line 185
    const p1, 0x7f120d2d    # @string/storage_menu_explore 'Explore'

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->buildAction(I)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/support/v7/preference/Preference;

    .line 187
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setHasOptionsMenu(Z)V

    .line 190
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 379
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 380
    const v0, 0x7f0e0005    # @menu/storage_volume 'res/menu/storage_volume.xml'

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 381
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 371
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 372
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->onDestroy()V

    .line 375
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 424
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 425
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 461
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 433
    :pswitch_1
    const-string p1, "android.os.storage.extra.VOLUME_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    .line 435
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const v0, 0x7f120d38    # @string/storage_menu_unmount 'Eject'

    .line 436
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 438
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 439
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 440
    return v3

    .line 427
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->show(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V

    .line 428
    return v3

    .line 430
    :pswitch_3
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 431
    return v3

    .line 451
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    .line 454
    return v3

    .line 456
    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    .line 459
    return v3

    .line 442
    :pswitch_6
    const-string p1, "android.os.storage.extra.VOLUME_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    .line 444
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const v0, 0x7f120d2f    # @string/storage_menu_format 'Format'

    .line 445
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 447
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 448
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 449
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0336
        :pswitch_6    # @id/storage_format
        :pswitch_5    # @id/storage_free
        :pswitch_4    # @id/storage_migrate
        :pswitch_3    # @id/storage_mount
        :pswitch_0    # @id/storage_next_button
        :pswitch_2    # @id/storage_rename
        :pswitch_1    # @id/storage_unmount
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .line 365
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 366
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 367
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    .line 468
    instance-of v0, p1, Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    .line 469
    move-object v0, p1

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget v0, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 472
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    goto :goto_1

    .line 473
    :catch_0
    move-exception v1

    .line 474
    const/4 v1, 0x0

    .line 476
    :goto_1
    const/4 v2, 0x0

    .line 477
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const v4, 0x7f120d2d    # @string/storage_menu_explore 'Explore'

    if-eq v1, v4, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_2

    .line 499
    :pswitch_0
    const-string v1, "com.android.providers.media.documents"

    const-string v2, "videos_root"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getIntentForStorage(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 500
    goto/16 :goto_2

    .line 505
    :pswitch_1
    invoke-static {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->show(Landroid/app/Fragment;)V

    .line 506
    return v3

    .line 510
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, p1, v1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/storage/VolumeInfo;I)V

    .line 512
    return v3

    .line 496
    :pswitch_3
    const-string v1, "com.android.providers.media.documents"

    const-string v2, "images_root"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getIntentForStorage(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 497
    goto :goto_2

    .line 516
    :pswitch_4
    invoke-static {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->show(Landroid/app/Fragment;)V

    .line 517
    return v3

    .line 502
    :pswitch_5
    const-string v1, "com.android.providers.media.documents"

    const-string v2, "audio_root"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getIntentForStorage(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 503
    goto :goto_2

    .line 479
    :pswitch_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 480
    const-string v2, "classname"

    const-class v4, Lcom/android/settings/Settings$StorageUseActivity;

    .line 481
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 480
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v2, "volumeUuid"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v2, "volumeName"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v2, "storageType"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v4, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 488
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 489
    invoke-virtual {v2, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f120158    # @string/apps_storage 'Apps storage'

    .line 490
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 492
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v2

    .line 494
    goto :goto_2

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v2

    .line 522
    nop

    .line 529
    :goto_2
    if-eqz v2, :cond_2

    .line 530
    const-string p1, "android.intent.extra.USER_ID"

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 532
    invoke-static {p0, v2}, Lcom/android/settings/Utils;->launchIntent(Landroid/app/Fragment;Landroid/content/Intent;)V

    .line 533
    return v3

    .line 535
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1

    .line 524
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 525
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x7f120d0e
        :pswitch_6    # @string/storage_detail_apps 'Apps'
        :pswitch_5    # @string/storage_detail_audio 'Audio'
        :pswitch_4    # @string/storage_detail_cached 'Cached data'
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f120d15
        :pswitch_3    # @string/storage_detail_images 'Images'
        :pswitch_2    # @string/storage_detail_other 'Other'
        :pswitch_1    # @string/storage_detail_system 'System'
        :pswitch_0    # @string/storage_detail_videos 'Videos'
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    .line 385
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 387
    :cond_0
    const v0, 0x7f0a033b    # @id/storage_rename

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 388
    const v1, 0x7f0a0339    # @id/storage_mount

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 389
    const v2, 0x7f0a033c    # @id/storage_unmount

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 390
    const v3, 0x7f0a0336    # @id/storage_format

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 391
    const v4, 0x7f0a0338    # @id/storage_migrate

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 392
    const v5, 0x7f0a0337    # @id/storage_free

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 396
    const-string v5, "private"

    iget-object v6, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 397
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 398
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 399
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 400
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050044    # @bool/config_storage_manager_settings_enabled 'false'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 404
    :cond_1
    iget-object v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    if-ne v5, v6, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_0
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 405
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v7

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 406
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 407
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 408
    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 411
    :goto_2
    const p1, 0x7f120d31    # @string/storage_menu_format_public 'Format as portable'

    invoke-interface {v3, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 415
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object p1

    .line 416
    if-eqz p1, :cond_4

    .line 417
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 418
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    .line 416
    :cond_4
    move v6, v7

    :goto_3
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 419
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 345
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 348
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 349
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 351
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 356
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mNeedsUpdate:Z

    if-eqz v0, :cond_1

    .line 357
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->update()V

    goto :goto_0

    .line 359
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setTitle()V

    .line 361
    :goto_0
    return-void
.end method
