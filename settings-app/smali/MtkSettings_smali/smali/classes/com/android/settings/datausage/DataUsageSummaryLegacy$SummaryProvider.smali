.class Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;
.super Ljava/lang/Object;
.source "DataUsageSummaryLegacy.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummaryLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;->mActivity:Landroid/app/Activity;

    .line 337
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 338
    new-instance p2, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {p2, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 339
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 5

    .line 343
    if-eqz p1, :cond_2

    .line 344
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p1

    .line 346
    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 348
    :cond_0
    iget-wide v2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;->mActivity:Landroid/app/Activity;

    iget-wide v1, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 351
    :cond_1
    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iget-wide v2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object p1

    .line 353
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1204b7    # @string/data_usage_summary_format '%1$s of data used'

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 354
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 356
    :cond_2
    return-void
.end method
