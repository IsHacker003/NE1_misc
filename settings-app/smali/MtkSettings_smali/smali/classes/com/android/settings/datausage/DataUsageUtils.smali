.class public final Lcom/android/settings/datausage/DataUsageUtils;
.super Ljava/lang/Object;
.source "DataUsageUtils.java"


# direct methods
.method public static formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 3

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    .line 54
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const p1, 0x1040cdf

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultSubscriptionId(Landroid/content/Context;)I
    .locals 2

    .line 127
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    .line 128
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 129
    return v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 132
    if-nez v1, :cond_3

    .line 135
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    .line 136
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    goto :goto_1

    .line 137
    :cond_2
    :goto_0
    return v0

    .line 142
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    return p0
.end method

.method static getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;
    .locals 1

    .line 150
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 151
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 152
    nop

    .line 153
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object p1

    .line 154
    nop

    .line 155
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-static {p1, p0}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0

    .line 156
    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 157
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0

    .line 159
    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static hasEthernet(Landroid/content/Context;)Z
    .locals 9

    .line 66
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    .line 67
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result p0

    .line 71
    :try_start_0
    const-string v0, "netstats"

    .line 72
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    .line 75
    const-wide/16 v7, 0x0

    if-eqz v0, :cond_0

    .line 76
    nop

    .line 77
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    const-wide/high16 v3, -0x8000000000000000L

    const-wide v5, 0x7fffffffffffffffL

    .line 76
    move-object v1, v0

    invoke-interface/range {v1 .. v6}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v1

    .line 79
    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :cond_0
    nop

    .line 85
    move-wide v1, v7

    .line 88
    :goto_0
    if-eqz p0, :cond_1

    cmp-long p0, v1, v7

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    .line 83
    :catch_0
    move-exception p0

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static hasMobileData(Landroid/content/Context;)Z
    .locals 1

    .line 96
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    .line 97
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 98
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    nop

    .line 97
    :cond_0
    return v0
.end method

.method public static hasSim(Landroid/content/Context;)Z
    .locals 1

    .line 115
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 116
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    .line 118
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 1

    .line 109
    const-class v0, Landroid/net/ConnectivityManager;

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 111
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
