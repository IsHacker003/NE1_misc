.class public Lcom/android/settings/deviceinfo/StorageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;,
        Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;,
        Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;,
        Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;,
        Lcom/android/settings/deviceinfo/StorageSettings$MountTask;
    }
.end annotation


# static fields
.field static final COLOR_PRIVATE:[I

.field static final COLOR_PUBLIC:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static sTotalInternalStorage:J


# instance fields
.field private mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mHasLaunchedPrivateVolumeSettings:Z

.field private mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 78
    const-string v0, "#ff9e9e9e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    .line 80
    const/4 v0, 0x5

    new-array v0, v0, [I

    const-string v1, "#ff26a69a"

    .line 81
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "#ffab47bc"

    .line 82
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "#fff2a600"

    .line 83
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const-string v1, "#ffec407a"

    .line 84
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const-string v1, "#ffc0ca33"

    .line 85
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    .line 591
    sget-object v0, Lcom/android/settings/deviceinfo/-$$Lambda$StorageSettings$pjFUgWj2HWW95DLVydfI8EgfTdg;->INSTANCE:Lcom/android/settings/deviceinfo/-$$Lambda$StorageSettings$pjFUgWj2HWW95DLVydfI8EgfTdg;

    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 595
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mHasLaunchedPrivateVolumeSettings:Z

    .line 130
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageSettings$1;-><init>(Lcom/android/settings/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Landroid/os/storage/VolumeInfo;)Z
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->isInteresting(Landroid/os/storage/VolumeInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StorageSettings;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->refresh()V

    return-void
.end method

.method static handlePublicVolumeClick(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z
    .locals 3

    .line 351
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 352
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 354
    return v2

    .line 356
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 357
    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    .line 359
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 p1, -0x1

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x2a

    .line 361
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 362
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 364
    return v2
.end method

.method private static isInteresting(Landroid/os/storage/VolumeInfo;)Z
    .locals 0

    .line 145
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 150
    const/4 p0, 0x0

    return p0

    .line 148
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$static$0(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 2

    .line 592
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/deviceinfo/StorageSettings$1;)V

    return-object v0
.end method

.method private declared-synchronized refresh()V
    .locals 19

    move-object/from16 v1, p0

    monitor-enter p0

    .line 155
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 158
    iget-object v0, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 159
    iget-object v0, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 161
    iget-object v0, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v2, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 163
    nop

    .line 165
    new-instance v0, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    iget-object v2, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct {v0, v2}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    .line 166
    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v0

    .line 167
    iget-wide v9, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    .line 168
    iget-wide v2, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-wide v4, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long v11, v2, v4

    .line 170
    iget-object v0, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 171
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 174
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v4, :cond_0

    .line 178
    nop

    .line 180
    :try_start_1
    sget-wide v6, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    invoke-static {v5, v6, v7}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getTotalSize(Landroid/os/storage/VolumeInfo;J)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    goto :goto_1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    :try_start_2
    const-string v4, "StorageSettings"

    const-string v6, "refresh failed to getTotalSize"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    move-wide v6, v2

    :goto_1
    sget-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    add-int/lit8 v16, v15, 0x1

    sget-object v2, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PRIVATE:[I

    array-length v2, v2

    rem-int/2addr v15, v2

    aget v0, v0, v15

    .line 187
    iget-object v15, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    new-instance v4, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    move-object v2, v4

    move-object v3, v8

    move-object v14, v4

    move-object v4, v5

    move v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;IJ)V

    invoke-virtual {v15, v14}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 189
    nop

    .line 193
    move/from16 v15, v16

    goto :goto_2

    .line 189
    :cond_0
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iget-object v0, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    new-instance v14, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    sget v6, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    const-wide/16 v17, 0x0

    move-object v2, v14

    move-object v3, v8

    move-object v4, v5

    move v5, v6

    move-wide/from16 v6, v17

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;IJ)V

    invoke-virtual {v0, v14}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 193
    :cond_1
    :goto_2
    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const v6, 0x7f080187    # @drawable/ic_sim_sd 'res/drawable-xhdpi/ic_sim_sd.png'

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeRecord;

    .line 198
    invoke-virtual {v5}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v7

    if-ne v7, v4, :cond_3

    iget-object v7, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 199
    invoke-virtual {v5}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v7

    if-nez v7, :cond_3

    .line 201
    invoke-virtual {v8, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 202
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 203
    sget v7, Lcom/android/settings/deviceinfo/StorageSettings;->COLOR_PUBLIC:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 205
    new-instance v7, Landroid/support/v7/preference/Preference;

    invoke-direct {v7, v8}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {v5}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v5}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    const v5, 0x1040205    # @android:string/ext_media_unmounting_notification_message

    invoke-virtual {v7, v5}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 209
    invoke-virtual {v7, v6}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v5, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 212
    :cond_3
    goto :goto_3

    .line 215
    :cond_4
    iget-object v0, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v0

    .line 216
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    .line 217
    iget v7, v5, Landroid/os/storage/DiskInfo;->volumeCount:I

    if-nez v7, :cond_5

    iget-wide v13, v5, Landroid/os/storage/DiskInfo;->size:J

    cmp-long v7, v13, v2

    if-lez v7, :cond_5

    .line 218
    new-instance v7, Landroid/support/v7/preference/Preference;

    invoke-direct {v7, v8}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 219
    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    const v5, 0x104020b    # @android:string/factory_reset_message

    invoke-virtual {v7, v5}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 222
    invoke-virtual {v7, v6}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 223
    iget-object v5, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 225
    :cond_5
    goto :goto_4

    .line 227
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v11, v12, v2}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 228
    iget-object v2, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v3, 0x7f120d45    # @string/storage_size_large '^1<small><small> ^2</small></small>'

    invoke-virtual {v1, v3}, Lcom/android/settings/deviceinfo/StorageSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/CharSequence;

    iget-object v7, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v7, v6, v11

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v0, v6, v4

    invoke-static {v3, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v2, 0x7f120d54    # @string/storage_volume_used_total 'Total used of %1$s'

    new-array v3, v4, [Ljava/lang/Object;

    .line 231
    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    .line 230
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 235
    :cond_7
    iget-object v0, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 239
    :cond_8
    iget-object v0, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-ne v0, v5, :cond_a

    iget-object v0, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 240
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 242
    iget-boolean v0, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mHasLaunchedPrivateVolumeSettings:Z

    if-nez v0, :cond_a

    .line 243
    iput-boolean v4, v1, Lcom/android/settings/deviceinfo/StorageSettings;->mHasLaunchedPrivateVolumeSettings:Z

    .line 244
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    const-string v2, "android.os.storage.extra.VOLUME_ID"

    const-string v3, "private"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 247
    const-string v0, "StorageSettings"

    const-string v2, "Monkey test running so finishing storage manager dashboard settings"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 250
    :cond_9
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 251
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 252
    invoke-virtual {v2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v2, 0x7f120d42    # @string/storage_settings 'Storage'

    .line 253
    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 257
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageSettings;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    :cond_a
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 105
    const v0, 0x7f1206ea    # @string/help_uri_storage ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 100
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 114
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 116
    sget-wide v0, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    .line 120
    :cond_0
    const p1, 0x7f15004d    # @xml/device_info_storage 'res/xml/device_info_storage.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings;->addPreferencesFromResource(I)V

    .line 122
    const-string p1, "storage_internal"

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 123
    const-string p1, "storage_external"

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 125
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    .line 127
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings;->setHasOptionsMenu(Z)V

    .line 128
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 271
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 272
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 273
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    .line 277
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 278
    instance-of p1, p1, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    .line 280
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    .line 282
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 283
    return v0

    .line 286
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    if-nez v2, :cond_1

    .line 287
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->show(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 288
    return v1

    .line 289
    :cond_1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 290
    const v0, 0x7f120d19    # @string/storage_dialog_unmountable 'This ^1 is corrupted. \n\nTo use this ^1, you have to set it up first.'

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 291
    return v1

    .line 294
    :cond_2
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 295
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 296
    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v2, "private"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 299
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 300
    const-string p1, "StorageSettings"

    const-string v0, "Monkey test running so finishing storage manager dashboard settings"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    :cond_3
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 303
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const v2, 0x7f120d42    # @string/storage_settings 'Storage'

    .line 304
    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 306
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 307
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    .line 312
    :cond_4
    sget-wide v2, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    invoke-static {p1, v2, v3}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getTotalSize(Landroid/os/storage/VolumeInfo;J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setVolumeSize(Landroid/os/Bundle;J)V

    .line 314
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .line 315
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/4 v2, -0x1

    .line 316
    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 318
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 319
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 322
    :goto_0
    return v1

    .line 324
    :cond_5
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-nez v1, :cond_6

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/StorageSettings;->handlePublicVolumeClick(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z

    move-result p1

    return p1

    .line 328
    :cond_6
    nop

    .line 346
    return v0

    .line 328
    :cond_7
    const-string p1, "disk:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 330
    const p1, 0x7f120d1b    # @string/storage_dialog_unsupported 'This device doesn’t support this ^1. \n\nTo use this ^1 with this device, you have to set it up first.'

    invoke-static {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 331
    return v1

    .line 335
    :cond_8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 336
    const-string v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    .line 338
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v2, 0x7f120d2e    # @string/storage_menu_forget 'Forget'

    .line 339
    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 341
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 342
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 343
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 264
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 265
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 266
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->refresh()V

    .line 267
    return-void
.end method
