.class public Lcom/android/settings/datausage/DataUsageList;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "DataUsageList.java"


# instance fields
.field private mApps:Landroid/support/v7/preference/PreferenceGroup;

.field private mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private final mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

.field private mHeader:Landroid/view/View;

.field private mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field mSubId:I

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private mUsageAmount:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 92
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$1;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 522
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$5;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$5;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 546
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$6;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$6;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 570
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$7;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$7;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updatePolicy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/DataUsageList;)Landroid/widget/Spinner;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/datausage/DataUsageList;)Landroid/support/v7/preference/Preference;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/AppItem;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->startAppDataUsage(Lcom/android/settingslib/AppItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/datausage/DataUsageList;)Landroid/net/INetworkStatsSession;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/widget/LoadingViewController;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settingslib/net/ChartData;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/datausage/DataUsageList;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    return-object p0
.end method

.method private static accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/settingslib/AppItem;",
            ">;",
            "Landroid/net/NetworkStats$Entry;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/AppItem;",
            ">;J)J"
        }
    .end annotation

    .line 452
    iget v0, p2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 453
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/AppItem;

    .line 454
    if-nez v1, :cond_0

    .line 455
    new-instance v1, Lcom/android/settingslib/AppItem;

    invoke-direct {v1, p0}, Lcom/android/settingslib/AppItem;-><init>(I)V

    .line 456
    iput p3, v1, Lcom/android/settingslib/AppItem;->category:I

    .line 457
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget p0, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settingslib/AppItem;->addUid(I)V

    .line 461
    iget-wide p0, v1, Lcom/android/settingslib/AppItem;->total:J

    iget-wide p3, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr p3, v2

    add-long/2addr p0, p3

    iput-wide p0, v1, Lcom/android/settingslib/AppItem;->total:J

    .line 462
    iget-wide p0, v1, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p5, p6, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 7

    .line 473
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 474
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 476
    nop

    .line 477
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    .line 479
    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 481
    return v2

    .line 484
    :cond_0
    nop

    .line 485
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 486
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    and-int/2addr v4, v5

    .line 488
    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v4, :cond_3

    .line 496
    move v2, v3

    goto :goto_2

    .line 489
    :cond_3
    nop

    .line 496
    :goto_2
    return v2
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/android/settings/datausage/DataUsageList;Landroid/view/View;)V
    .locals 2

    .line 154
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 155
    const-string v0, "network_template"

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 156
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 157
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 158
    const v1, 0x7f120254    # @string/billing_cycle 'Data warning & limit'

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 160
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 162
    return-void
.end method

.method private startAppDataUsage(Lcom/android/settingslib/AppItem;)V
    .locals 2

    .line 429
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 430
    const-string v1, "app_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 431
    const-string p1, "network_template"

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 433
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/datausage/AppDataUsage;

    .line 434
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 435
    const v1, 0x7f120114    # @string/app_data_usage 'App data usage'

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 436
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 438
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 439
    return-void
.end method

.method private updateBody()V
    .locals 5

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    const/4 v4, 0x0

    .line 264
    invoke-static {v3, v4}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 263
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 269
    const v1, 0x7f0600ad    # @color/sim_noitification '@android:color/accent_device_default_light'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 270
    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 271
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 272
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 274
    if-eqz v1, :cond_1

    .line 275
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v0

    .line 279
    :cond_1
    const/16 v1, 0x7f

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 280
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 279
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 281
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setColors(II)V

    .line 282
    return-void
.end method

.method private updateDetailData()V
    .locals 13

    .line 315
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectStart()J

    move-result-wide v9

    .line 316
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectEnd()J

    move-result-wide v11

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 321
    nop

    .line 322
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v1, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v8, 0x0

    move-wide v2, v9

    move-wide v4, v11

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v1

    goto :goto_0

    .line 327
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 328
    invoke-static {v4, v9, v10, v11, v12}, Lcom/android/settingslib/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 327
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 330
    if-eqz v1, :cond_1

    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v4, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v2, v4

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    .line 331
    :goto_1
    invoke-static {v0, v2, v3}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    const v2, 0x7f1204cb    # @string/data_used_template '%1$s used'

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/datausage/DataUsageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    return-void
.end method

.method private updatePolicy()V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v2, 0x7f0a0155    # @id/filter_settings

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 292
    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/datausage/DataUsageList;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsageList;->isMobileDataAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 294
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 298
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 302
    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/datausage/CycleAdapter;->updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    .line 305
    :cond_1
    return-void
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 339
    move-object/from16 v2, p2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 340
    nop

    .line 342
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v11

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    .line 344
    invoke-virtual {v12}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v13

    .line 345
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 347
    nop

    .line 348
    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    .line 349
    move v8, v3

    goto :goto_0

    .line 348
    :cond_0
    nop

    .line 349
    const/4 v8, 0x0

    :goto_0
    const-wide/16 v16, 0x0

    const/4 v3, 0x0

    move-wide/from16 v18, v16

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_7

    .line 350
    invoke-virtual {v1, v9, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    .line 353
    iget v6, v7, Landroid/net/NetworkStats$Entry;->uid:I

    .line 357
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 358
    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    const/4 v5, -0x4

    const/16 v20, 0x2

    if-eqz v4, :cond_4

    .line 359
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v13, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 360
    if-eq v3, v11, :cond_1

    .line 362
    invoke-static {v3}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v3

    .line 363
    const/16 v21, 0x0

    move-object v4, v14

    move-object v5, v7

    move v15, v6

    move/from16 v6, v21

    move-object/from16 v21, v7

    move-object v7, v10

    move/from16 v22, v8

    move/from16 v23, v9

    move-wide/from16 v8, v18

    invoke-static/range {v3 .. v9}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v18

    goto :goto_2

    .line 367
    :cond_1
    move v15, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    .line 368
    :goto_2
    goto :goto_5

    .line 371
    :cond_2
    move-object/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    invoke-virtual {v12, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 372
    if-nez v4, :cond_3

    .line 373
    nop

    .line 374
    goto :goto_3

    .line 377
    :cond_3
    invoke-static {v3}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v5

    .line 378
    nop

    .line 380
    const/16 v20, 0x0

    .line 388
    :goto_3
    move v3, v5

    goto :goto_6

    .line 381
    :cond_4
    move v15, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    if-eq v15, v5, :cond_6

    const/4 v3, -0x5

    if-ne v15, v3, :cond_5

    goto :goto_4

    .line 385
    :cond_5
    const/16 v3, 0x3e8

    .line 386
    goto :goto_6

    .line 382
    :cond_6
    :goto_4
    nop

    .line 383
    nop

    .line 388
    :goto_5
    move v3, v15

    :goto_6
    move-wide/from16 v8, v18

    move/from16 v6, v20

    move-object v4, v14

    move-object/from16 v5, v21

    move-object v7, v10

    invoke-static/range {v3 .. v9}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v18

    .line 349
    add-int/lit8 v9, v23, 0x1

    move-object/from16 v3, v21

    move/from16 v8, v22

    goto :goto_1

    .line 391
    :cond_7
    array-length v1, v2

    .line 392
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_a

    .line 393
    aget v4, v2, v3

    .line 395
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v13, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 396
    goto :goto_8

    .line 399
    :cond_8
    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/AppItem;

    .line 400
    if-nez v5, :cond_9

    .line 401
    new-instance v5, Lcom/android/settingslib/AppItem;

    invoke-direct {v5, v4}, Lcom/android/settingslib/AppItem;-><init>(I)V

    .line 402
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/android/settingslib/AppItem;->total:J

    .line 403
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget v4, v5, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v14, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    :cond_9
    const/4 v4, 0x1

    iput-boolean v4, v5, Lcom/android/settingslib/AppItem;->restricted:Z

    .line 392
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 409
    :cond_a
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 410
    iget-object v1, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 411
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 412
    cmp-long v2, v18, v16

    if-eqz v2, :cond_b

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/AppItem;

    iget-wide v2, v2, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    div-long v2, v2, v18

    long-to-int v15, v2

    goto :goto_a

    .line 413
    :cond_b
    const/4 v15, 0x0

    :goto_a
    new-instance v2, Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 414
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/AppItem;

    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v2, v3, v4, v15, v5}, Lcom/android/settings/datausage/AppDataUsagePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;)V

    .line 415
    new-instance v3, Lcom/android/settings/datausage/DataUsageList$4;

    invoke-direct {v3, v0}, Lcom/android/settings/datausage/DataUsageList$4;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/AppDataUsagePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 424
    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 426
    :cond_c
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 120
    const/16 v0, 0x155

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const-string v0, "DataUsage"

    const-string v1, "No bandwidth control; leaving"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 134
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    nop

    .line 139
    new-instance v0, Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v0, p1}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 141
    const p1, 0x7f15003b    # @xml/data_usage_list 'res/xml/data_usage_list.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->addPreferencesFromResource(I)V

    .line 142
    const-string p1, "usage_amount"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    .line 143
    const-string p1, "chart_data"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/ChartDataUsagePreference;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    .line 144
    const-string p1, "apps_group"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->processArgument()V

    .line 146
    return-void

    .line 135
    :catch_0
    move-exception p1

    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settingslib/net/UidDetailProvider;->clearCache()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 231
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 233
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    .line 234
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 222
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    .line 223
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 224
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 193
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 194
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 195
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    .line 198
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$3;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/datausage/DataUsageList$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 218
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 150
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 152
    const p1, 0x7f0d0036    # @layout/apps_filter_spinner 'res/layout/apps_filter_spinner.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    .line 153
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const p2, 0x7f0a0155    # @id/filter_settings

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/settings/datausage/-$$Lambda$DataUsageList$YolaBauY8HvHsYGl5vfnCCKHiAQ;

    invoke-direct {p2, p0}, Lcom/android/settings/datausage/-$$Lambda$DataUsageList$YolaBauY8HvHsYGl5vfnCCKHiAQ;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const p2, 0x7f0a0156    # @id/filter_spinner

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    .line 164
    new-instance p1, Lcom/android/settings/datausage/CycleAdapter;

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$2;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v2, 0x1

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 186
    new-instance p1, Lcom/android/settings/widget/LoadingViewController;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a01f4    # @id/loading_container

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    .line 188
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p1}, Lcom/android/settings/widget/LoadingViewController;->showLoadingViewDelayed()V

    .line 189
    return-void
.end method

.method processArgument()V
    .locals 3

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 238
    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 239
    const-string v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 240
    const-string v2, "network_template"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    if-ne v0, v1, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 244
    const-string v2, "android.provider.extra.SUB_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 246
    const-string v1, "network_template"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 248
    :cond_1
    return-void
.end method
