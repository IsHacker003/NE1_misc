.class public Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppDataUsagePreferenceController.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settingslib/net/ChartData;",
        ">;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/events/OnPause;",
        "Lcom/android/settingslib/core/lifecycle/events/OnResume;"
    }
.end annotation


# instance fields
.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private mStatsSession:Landroid/net/INetworkStatsSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private getDataSummary()Ljava/lang/CharSequence;
    .locals 8

    .line 120
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mChartData:Lcom/android/settingslib/net/ChartData;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v0, v0, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v0

    .line 122
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120984    # @string/no_data_usage 'No data used'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f12046e    # @string/data_summary_format '%1$s used since %2$s'

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    .line 126
    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v5, v5, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    .line 127
    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v5

    const v7, 0x10010

    invoke-static {v1, v5, v6, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 125
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1203cf    # @string/computing_size 'Computing…'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;
    .locals 1

    .line 134
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageList;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 138
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0

    .line 140
    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    const-string p1, "netstats"

    .line 67
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 66
    invoke-static {p1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object p1

    .line 69
    :try_start_0
    invoke-interface {p1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception p1

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 74
    :cond_0
    :goto_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->isBandwidthControlEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected getDetailFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation

    .line 116
    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    return-object v0
.end method

.method isBandwidthControlEnabled()Z
    .locals 1

    .line 145
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v0

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance p1, Lcom/android/settingslib/net/ChartDataLoader;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-direct {p1, v0, v1, p2}, Lcom/android/settingslib/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/net/ChartData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;",
            "Lcom/android/settingslib/net/ChartData;",
            ")V"
        }
    .end annotation

    .line 105
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mChartData:Lcom/android/settingslib/net/ChartData;

    .line 106
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 107
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Lcom/android/settingslib/net/ChartData;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .line 112
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 96
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 85
    new-instance v1, Lcom/android/settingslib/AppItem;

    invoke-direct {v1, v0}, Lcom/android/settingslib/AppItem;-><init>(I)V

    .line 86
    invoke-virtual {v1, v0}, Lcom/android/settingslib/AppItem;->addUid(I)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {v3}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 91
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->getDataSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method
