.class public Lcom/android/settingslib/net/DataUsageController;
.super Ljava/lang/Object;
.source "DataUsageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;,
        Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PERIOD_BUILDER:Ljava/lang/StringBuilder;

.field private static final PERIOD_FORMATTER:Ljava/util/Formatter;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const-string v0, "DataUsageController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/net/DataUsageController;->DEBUG:Z

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    .line 55
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 71
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 72
    const-string p1, "netstats"

    .line 73
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mStatsService:Landroid/net/INetworkStatsService;

    .line 74
    iget-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 75
    return-void
.end method

.method private findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 6

    .line 188
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 190
    if-nez v0, :cond_1

    return-object v1

    .line 191
    :cond_1
    array-length v2, v0

    .line 192
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 193
    aget-object v4, v0, v3

    .line 194
    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v5}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 195
    return-object v4

    .line 192
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    :cond_3
    return-object v1

    .line 188
    :cond_4
    :goto_1
    return-object v1
.end method

.method private formatDateRange(JJ)Ljava/lang/String;
    .locals 11

    .line 241
    sget-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    monitor-enter v0

    .line 242
    :try_start_0
    sget-object v1, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 243
    iget-object v3, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/settingslib/net/DataUsageController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    const v9, 0x10010

    const/4 v10, 0x0

    move-wide v5, p1

    move-wide v7, p3

    invoke-static/range {v3 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    .line 243
    return-object p1

    .line 245
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 233
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 234
    nop

    .line 235
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 234
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object p0

    .line 236
    return-object p0
.end method

.method private getSession()Landroid/net/INetworkStatsSession;
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;

    if-nez v0, :cond_0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string v1, "DataUsageController"

    const-string v2, "Failed to open stats session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 93
    :catch_1
    move-exception v0

    .line 94
    const-string v1, "DataUsageController"

    const-string v2, "Failed to open stats session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :goto_0
    nop

    .line 99
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method private static historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;
    .locals 3

    .line 202
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "bucketDuration="

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",bucketStart="

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",activeTime="

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",rxBytes="

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",rxPackets="

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",txBytes="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",txPackets="

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",operations="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 211
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 202
    :goto_0
    return-object p0
.end method

.method private warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 3

    .line 107
    const-string v0, "DataUsageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get data usage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/net/DataUsageController;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 113
    if-nez v0, :cond_0

    .line 114
    const-string v0, "no subscriber id"

    invoke-direct {p0, v0}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 19

    move-object/from16 v1, p0

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/android/settingslib/net/DataUsageController;->getSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    .line 129
    if-nez v0, :cond_0

    .line 130
    const-string v0, "no stats session"

    invoke-direct {v1, v0}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/settingslib/net/DataUsageController;->findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 134
    const/16 v3, 0xa

    move-object/from16 v4, p1

    :try_start_0
    invoke-interface {v0, v4, v3}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 137
    const-wide v5, 0x90321000L

    if-eqz v2, :cond_2

    .line 138
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 139
    const-string v3, "DataUsageController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDataUsageInfo , policy != null hasNext = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-eqz v0, :cond_1

    .line 141
    nop

    .line 142
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 143
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/time/ZonedDateTime;

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    .line 144
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v7

    .line 145
    goto :goto_0

    .line 146
    :cond_1
    nop

    .line 147
    sub-long v5, v12, v5

    .line 149
    move-wide v7, v12

    .line 155
    :goto_0
    move-wide v14, v5

    move-wide v9, v7

    goto :goto_1

    .line 150
    :cond_2
    const-string v0, "DataUsageController"

    const-string v3, "getDataUsageInfo , policy = null"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    nop

    .line 153
    sub-long v5, v12, v5

    .line 155
    move-wide v14, v5

    move-wide v9, v12

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 156
    const/4 v11, 0x0

    move-wide v5, v14

    move-wide v7, v9

    move-object/from16 v18, v2

    move-wide v2, v9

    move-wide v9, v12

    invoke-virtual/range {v4 .. v11}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 158
    sget-boolean v6, Lcom/android/settingslib/net/DataUsageController;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "DataUsageController"

    const-string v7, "history call from %s to %s now=%s took %sms: %s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v14, v15}, Ljava/util/Date;-><init>(J)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v2, v3}, Ljava/util/Date;-><init>(J)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sub-long v4, v4, v16

    .line 159
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v9

    const/4 v4, 0x4

    .line 160
    invoke-static {v0}, Lcom/android/settingslib/net/DataUsageController;->historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 158
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_3
    if-nez v0, :cond_4

    .line 162
    const-string v0, "no entry data"

    invoke-direct {v1, v0}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    return-object v0

    .line 164
    :cond_4
    iget-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v6

    .line 165
    new-instance v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-direct {v0}, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;-><init>()V

    .line 166
    iput-wide v14, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->startDate:J

    .line 167
    iput-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 168
    invoke-direct {v1, v14, v15, v2, v3}, Lcom/android/settingslib/net/DataUsageController;->formatDateRange(JJ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    .line 169
    iput-wide v14, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    .line 170
    iput-wide v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    .line 172
    if-eqz v18, :cond_7

    .line 173
    move-object/from16 v2, v18

    iget-wide v3, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    iget-wide v3, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_2

    :cond_5
    move-wide v3, v5

    :goto_2
    iput-wide v3, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 174
    iget-wide v3, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    iget-wide v5, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    nop

    :cond_6
    iput-wide v5, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    goto :goto_3

    .line 176
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/net/DataUsageController;->getDefaultWarningLevel()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 178
    :goto_3
    iget-object v2, v1, Lcom/android/settingslib/net/DataUsageController;->mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    if-eqz v2, :cond_8

    .line 179
    iget-object v2, v1, Lcom/android/settingslib/net/DataUsageController;->mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    invoke-interface {v2}, Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;->getMobileDataNetworkName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->carrier:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_8
    return-object v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string v0, "remote call failed"

    invoke-direct {v1, v0}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultWarningLevel()J
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00e1    # @android:integer/dock_enter_exit_duration

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v2, v0

    .line 85
    return-wide v2
.end method
