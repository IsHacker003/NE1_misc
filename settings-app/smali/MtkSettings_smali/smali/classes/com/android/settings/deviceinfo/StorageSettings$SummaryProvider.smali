.class Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private final mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 566
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 567
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    .line 568
    new-instance p2, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {p2, p1}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    .line 569
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/deviceinfo/StorageSettings$1;)V
    .locals 0

    .line 559
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method

.method private updateSummary()V
    .locals 9

    .line 580
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-static {v1}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v1

    .line 583
    iget-wide v2, v1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-wide v4, v1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    .line 584
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v7, v1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    long-to-double v7, v7

    div-double/2addr v2, v7

    .line 585
    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v6, v2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    iget-wide v1, v1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    .line 586
    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    .line 584
    const v0, 0x7f120d47    # @string/storage_summary '%1$s used - %2$s free'

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 587
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 0

    .line 573
    if-eqz p1, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings$SummaryProvider;->updateSummary()V

    .line 576
    :cond_0
    return-void
.end method
