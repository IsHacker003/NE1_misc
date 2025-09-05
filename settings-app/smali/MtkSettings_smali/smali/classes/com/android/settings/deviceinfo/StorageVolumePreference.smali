.class public Lcom/android/settings/deviceinfo/StorageVolumePreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageVolumePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColor:I

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mUnmountListener:Landroid/view/View$OnClickListener;

.field private mUsedPercent:I

.field private final mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;IJ)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 57
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 148
    new-instance v4, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;

    invoke-direct {v4, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreference;)V

    iput-object v4, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    .line 59
    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 60
    iput-object v3, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 61
    move/from16 v4, p3

    iput v4, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    .line 63
    const v4, 0x7f0d015b    # @layout/storage_volume 'res/layout/storage_volume.xml'

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setLayoutResource(I)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setKey(Ljava/lang/String;)V

    .line 66
    iget-object v4, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v3}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    const-string v4, "private"

    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    const v4, 0x7f08018a    # @drawable/ic_storage 'res/drawable/ic_storage.xml'

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 72
    :cond_0
    const v4, 0x7f080187    # @drawable/ic_sim_sd 'res/drawable-xhdpi/ic_sim_sd.png'

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 75
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v5

    .line 79
    nop

    .line 80
    nop

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    if-ne v0, v6, :cond_1

    .line 82
    const-class v0, Landroid/app/usage/StorageStatsManager;

    .line 83
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    .line 85
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    sub-long v13, v9, v11

    .line 90
    goto :goto_2

    .line 88
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-wide/from16 v9, p4

    .line 89
    :goto_1
    sget-object v11, Lcom/android/settings/deviceinfo/StorageVolumePreference;->TAG:Ljava/lang/String;

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    move-wide v11, v7

    move-wide v13, v11

    :goto_2
    goto :goto_4

    .line 94
    :cond_1
    cmp-long v0, p4, v7

    if-gtz v0, :cond_2

    .line 95
    invoke-virtual {v5}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v9

    goto :goto_3

    .line 97
    :cond_2
    move-wide/from16 v9, p4

    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v11

    .line 98
    sub-long v13, v9, v11

    .line 101
    :goto_4
    invoke-static {v2, v13, v14}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v2, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    .line 103
    const v7, 0x7f120d51    # @string/storage_volume_summary '%1$s used of %2$s'

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v0, v8, v16

    aput-object v15, v8, v6

    invoke-virtual {v2, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    const-wide/16 v6, 0x0

    cmp-long v0, v9, v6

    if-lez v0, :cond_3

    .line 105
    const-wide/16 v6, 0x64

    mul-long/2addr v13, v6

    div-long/2addr v13, v9

    long-to-int v0, v13

    iput v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 108
    :cond_3
    iget-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v5}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v5

    cmp-long v0, v11, v5

    if-gez v0, :cond_4

    .line 109
    const v0, 0x1010543    # @android:attr/colorError

    invoke-static {v2, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    .line 110
    const v0, 0x7f0801ae    # @drawable/ic_warning_24dp 'res/drawable/ic_warning_24dp.xml'

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    move-object v4, v0

    :cond_4
    goto :goto_5

    .line 114
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getStateDescription()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setSummary(I)V

    .line 115
    iput v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 118
    :goto_5
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 119
    iget v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 120
    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_6

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 124
    const v0, 0x7f0d00f9    # @layout/preference_storage_action 'res/layout/preference_storage_action.xml'

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setWidgetLayoutResource(I)V

    .line 126
    :cond_6
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageVolumePreference;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    .line 130
    const v0, 0x7f0a03ae    # @id/unmount

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 131
    if-eqz v0, :cond_0

    .line 132
    const-string v1, "#8a000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :cond_0
    const v0, 0x102000d    # @android:id/progress

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 137
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 138
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    iget v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 140
    iget v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 142
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 145
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 146
    return-void
.end method
