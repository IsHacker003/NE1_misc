.class Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
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

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    .line 483
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 484
    new-instance p2, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {p2, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 485
    return-void
.end method

.method private formatFallbackData()Ljava/lang/CharSequence;
    .locals 5

    .line 534
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    .line 535
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 537
    :cond_0
    iget-wide v3, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v1, v3, v1

    if-gtz v1, :cond_1

    .line 538
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    iget-wide v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 540
    :cond_1
    iget-wide v1, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iget-wide v3, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatUsedData()Ljava/lang/CharSequence;
    .locals 5

    .line 514
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    const-string v1, "telephony_subscription_service"

    .line 515
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 516
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    .line 517
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->formatFallbackData()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 520
    :cond_0
    nop

    .line 521
    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getPrimaryPlan(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    .line 522
    if-nez v0, :cond_1

    .line 523
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->formatFallbackData()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 525
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->unlimited(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 526
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 528
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v1

    .line 529
    invoke-virtual {v0}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v3

    .line 528
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setListening(Z)V
    .locals 6

    .line 489
    if-eqz p1, :cond_2

    .line 490
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 491
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1204b7    # @string/data_usage_summary_format '%1$s of data used'

    new-array v1, v1, [Ljava/lang/Object;

    .line 493
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->formatUsedData()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v0

    .line 492
    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 495
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 497
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p1

    .line 499
    if-nez p1, :cond_1

    .line 500
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 502
    :cond_1
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1204c7    # @string/data_usage_wifi_format '^1 used on Wi‑Fi'

    .line 503
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 504
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mActivity:Landroid/app/Activity;

    iget-wide v4, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 505
    invoke-static {v3, v4, v5}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    .line 506
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object p1, v1, v0

    .line 507
    invoke-static {v2, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 506
    invoke-virtual {v3, p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 511
    :cond_2
    :goto_0
    return-void
.end method
