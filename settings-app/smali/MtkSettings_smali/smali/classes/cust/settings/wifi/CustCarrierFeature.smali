.class public Lcust/settings/wifi/CustCarrierFeature;
.super Ljava/lang/Object;
.source "CustCarrierFeature.java"


# static fields
.field private static mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private static mCarrierEapCofig:[Ljava/lang/String;

.field private static mCarrierOpenCofig:[Ljava/lang/String;

.field private static mContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final canRemove:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mLoadConfigReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcust/settings/wifi/CustCarrierFeature;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcust/settings/wifi/CustCarrierFeature;->mContentList:Ljava/util/List;

    .line 42
    sput-object v0, Lcust/settings/wifi/CustCarrierFeature;->mCarrierEapCofig:[Ljava/lang/String;

    .line 43
    sput-object v0, Lcust/settings/wifi/CustCarrierFeature;->mCarrierOpenCofig:[Ljava/lang/String;

    .line 44
    sput-object v0, Lcust/settings/wifi/CustCarrierFeature;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "CustCarrierFeature"

    iput-object v0, p0, Lcust/settings/wifi/CustCarrierFeature;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "YES"

    iput-object v0, p0, Lcust/settings/wifi/CustCarrierFeature;->canRemove:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcust/settings/wifi/CustCarrierFeature;->mLoadConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    iput-object v0, p0, Lcust/settings/wifi/CustCarrierFeature;->mContext:Landroid/content/Context;

    .line 47
    iput-object p1, p0, Lcust/settings/wifi/CustCarrierFeature;->mContext:Landroid/content/Context;

    .line 48
    sget-object v0, Lcust/settings/wifi/CustCarrierFeature;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-nez v0, :cond_0

    .line 49
    const-string v0, "carrier_config"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    sput-object v0, Lcust/settings/wifi/CustCarrierFeature;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 52
    :cond_0
    sget-object v0, Lcust/settings/wifi/CustCarrierFeature;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_1

    .line 53
    const-string v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    sput-object p1, Lcust/settings/wifi/CustCarrierFeature;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 56
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcust/settings/wifi/CustCarrierFeature;->mFilter:Landroid/content/IntentFilter;

    .line 57
    iget-object p1, p0, Lcust/settings/wifi/CustCarrierFeature;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcust/settings/wifi/CustCarrierFeature;->mLoadConfigReceiver:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_2

    .line 59
    new-instance p1, Lcust/settings/wifi/CustCarrierFeature$1;

    invoke-direct {p1, p0}, Lcust/settings/wifi/CustCarrierFeature$1;-><init>(Lcust/settings/wifi/CustCarrierFeature;)V

    iput-object p1, p0, Lcust/settings/wifi/CustCarrierFeature;->mLoadConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    :cond_2
    invoke-direct {p0}, Lcust/settings/wifi/CustCarrierFeature;->registerBroadcastReceiver()V

    .line 71
    return-void
.end method

.method static synthetic access$002([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 27
    sput-object p0, Lcust/settings/wifi/CustCarrierFeature;->mCarrierEapCofig:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcust/settings/wifi/CustCarrierFeature;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcust/settings/wifi/CustCarrierFeature;->getOperatorCarrierConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 27
    sput-object p0, Lcust/settings/wifi/CustCarrierFeature;->mCarrierOpenCofig:[Ljava/lang/String;

    return-object p0
.end method

.method private dumpCarrierConfig([Ljava/lang/String;)V
    .locals 4

    .line 239
    if-eqz p1, :cond_0

    .line 240
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 241
    const-string v1, "CustCarrierFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WIFI_DEBUG]  dumpCarrierConfig  => [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    const-string p1, "CustCarrierFeature"

    const-string v0, "[WIFI_DEBUG]  dumpCarrierConfig  => Config is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    return-void
.end method

.method private getOperatorCarrierConfig(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 103
    sget-object v0, Lcust/settings/wifi/CustCarrierFeature;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 104
    const-string v0, "CustCarrierFeature"

    const-string v2, "[WIFI_DEBUG] CarrierConfigManager != null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcust/settings/wifi/CustCarrierFeature;->getSubId()I

    move-result v0

    .line 107
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 108
    sget-object v2, Lcust/settings/wifi/CustCarrierFeature;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    const-string v2, "CustCarrierFeature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WIFI_DEBUG]Load Carrier configuration value.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :cond_0
    const-string v2, "CustCarrierFeature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WIFI_DEBUG]Load Carrier configuration value == null, key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-object v0

    .line 117
    :cond_1
    const-string v0, "CustCarrierFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WIFI_DEBUG] Invalid Subscription ID for get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return-object v1

    .line 120
    :catch_0
    move-exception p1

    .line 121
    const-string v0, "CustCarrierFeature"

    const-string v2, "[WIFI_DEBUG] Get Carrier configuration happens excetpion !! "

    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    return-object v1

    .line 125
    :cond_2
    const-string p1, "CustCarrierFeature"

    const-string v0, "[WIFI_DEBUG]CarrierConfigManager == null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-object v1
.end method

.method private getSubId()I
    .locals 7

    .line 212
    sget-object v0, Lcust/settings/wifi/CustCarrierFeature;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 213
    const-string v0, "CustCarrierFeature"

    const-string v2, "[WIFI_DEBUG] SubscriptionManager is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v1

    .line 217
    :cond_0
    sget-object v0, Lcust/settings/wifi/CustCarrierFeature;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 218
    if-nez v0, :cond_1

    .line 219
    const-string v0, "CustCarrierFeature"

    const-string v2, "[WIFI_DEBUG] Active Subscription Info List is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return v1

    .line 223
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 224
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    .line 225
    const-string v4, "CustCarrierFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WIFI_DEBUG] subInfo MCC =>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,MNC = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,SIM slot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,subscription ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 225
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-nez v3, :cond_2

    .line 229
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    return v0

    .line 231
    :cond_2
    const-string v2, "CustCarrierFeature"

    const-string v3, "[WIFI_DEBUG]SIM slot doesn\'t support! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    goto :goto_0

    .line 235
    :cond_3
    return v1
.end method

.method private isAuthenticationMatch(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    .line 201
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 202
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 203
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 204
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 205
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 207
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isSsidMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 190
    nop

    .line 191
    invoke-direct {p0, p2}, Lcust/settings/wifi/CustCarrierFeature;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 192
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 193
    const/4 p1, 0x1

    goto :goto_0

    .line 195
    :cond_0
    const/4 p1, 0x0

    .line 197
    :goto_0
    return p1
.end method

.method private registerBroadcastReceiver()V
    .locals 4

    .line 89
    sget-object v0, Lcust/settings/wifi/CustCarrierFeature;->mContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcust/settings/wifi/CustCarrierFeature;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcust/settings/wifi/CustCarrierFeature;->mLoadConfigReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcust/settings/wifi/CustCarrierFeature;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    sget-object v0, Lcust/settings/wifi/CustCarrierFeature;->mContentList:Ljava/util/List;

    iget-object v1, p0, Lcust/settings/wifi/CustCarrierFeature;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v0, "CustCarrierFeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WIFI_DEBUG]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/wifi/CustCarrierFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " first registered BroadcastReceiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_0
    sget-object v0, Lcust/settings/wifi/CustCarrierFeature;->mContentList:Ljava/util/List;

    iget-object v1, p0, Lcust/settings/wifi/CustCarrierFeature;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const-string v0, "CustCarrierFeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WIFI_DEBUG] Context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/wifi/CustCarrierFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcust/settings/wifi/CustCarrierFeature;->mContentList:Ljava/util/List;

    iget-object v3, p0, Lcust/settings/wifi/CustCarrierFeature;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " exist. Ignore registering BroadcasetReceiver!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcust/settings/wifi/CustCarrierFeature;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcust/settings/wifi/CustCarrierFeature;->mLoadConfigReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcust/settings/wifi/CustCarrierFeature;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    const-string v0, "CustCarrierFeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WIFI_DEBUG] Registered BroadcastReceiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/wifi/CustCarrierFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcust/settings/wifi/CustCarrierFeature;->mContentList:Ljava/util/List;

    iget-object v3, p0, Lcust/settings/wifi/CustCarrierFeature;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string p1, ""

    return-object p1

    .line 256
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 257
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    sub-int/2addr v0, v1

    .line 258
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 259
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 261
    :cond_1
    return-object p1
.end method


# virtual methods
.method public hideForgetButton(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 10

    .line 130
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 131
    const-string p1, "CustCarrierFeature"

    const-string v1, "[WIFI_DEBUG] Check WifiConfiguration is null!"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v0

    .line 135
    :cond_0
    sget-object v1, Lcust/settings/wifi/CustCarrierFeature;->mCarrierEapCofig:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 136
    const-string v1, "oem_config_wifi_carrier_eap_string_array"

    invoke-direct {p0, v1}, Lcust/settings/wifi/CustCarrierFeature;->getOperatorCarrierConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcust/settings/wifi/CustCarrierFeature;->mCarrierEapCofig:[Ljava/lang/String;

    .line 138
    :cond_1
    sget-object v1, Lcust/settings/wifi/CustCarrierFeature;->mCarrierOpenCofig:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 139
    const-string v1, "oem_config_wifi_carrier_open_string_array"

    invoke-direct {p0, v1}, Lcust/settings/wifi/CustCarrierFeature;->getOperatorCarrierConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcust/settings/wifi/CustCarrierFeature;->mCarrierOpenCofig:[Ljava/lang/String;

    .line 141
    :cond_2
    sget-object v1, Lcust/settings/wifi/CustCarrierFeature;->mCarrierEapCofig:[Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 142
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 143
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 145
    sget-object v1, Lcust/settings/wifi/CustCarrierFeature;->mCarrierEapCofig:[Ljava/lang/String;

    array-length v1, v1

    .line 146
    rem-int/lit8 v3, v1, 0x3

    if-eqz v3, :cond_3

    .line 147
    sget-object p1, Lcust/settings/wifi/CustCarrierFeature;->mCarrierEapCofig:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcust/settings/wifi/CustCarrierFeature;->dumpCarrierConfig([Ljava/lang/String;)V

    .line 148
    return v0

    .line 150
    :cond_3
    move v3, v2

    :goto_0
    mul-int/lit8 v4, v3, 0x3

    if-gt v4, v1, :cond_5

    .line 151
    const-string v5, "CustCarrierFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oem_config_wifi_carrier_eap_string_array["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcust/settings/wifi/CustCarrierFeature;->mCarrierEapCofig:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ,security = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcust/settings/wifi/CustCarrierFeature;->mCarrierEapCofig:[Ljava/lang/String;

    add-int/lit8 v9, v4, -0x2

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", removeable = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcust/settings/wifi/CustCarrierFeature;->mCarrierEapCofig:[Ljava/lang/String;

    add-int/lit8 v4, v4, -0x3

    aget-object v8, v8, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v5, Lcust/settings/wifi/CustCarrierFeature;->mCarrierEapCofig:[Ljava/lang/String;

    aget-object v5, v5, v7

    .line 154
    sget-object v6, Lcust/settings/wifi/CustCarrierFeature;->mCarrierEapCofig:[Ljava/lang/String;

    aget-object v6, v6, v9

    .line 155
    sget-object v6, Lcust/settings/wifi/CustCarrierFeature;->mCarrierEapCofig:[Ljava/lang/String;

    aget-object v4, v6, v4

    .line 156
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcust/settings/wifi/CustCarrierFeature;->isSsidMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 157
    invoke-direct {p0, p1}, Lcust/settings/wifi/CustCarrierFeature;->isAuthenticationMatch(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 158
    const-string p1, "YES"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 150
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    :cond_5
    return v0

    .line 166
    :cond_6
    sget-object v1, Lcust/settings/wifi/CustCarrierFeature;->mCarrierOpenCofig:[Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 168
    sget-object v1, Lcust/settings/wifi/CustCarrierFeature;->mCarrierOpenCofig:[Ljava/lang/String;

    array-length v1, v1

    .line 169
    rem-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_7

    .line 170
    sget-object p1, Lcust/settings/wifi/CustCarrierFeature;->mCarrierOpenCofig:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcust/settings/wifi/CustCarrierFeature;->dumpCarrierConfig([Ljava/lang/String;)V

    .line 171
    return v0

    .line 173
    :cond_7
    move v3, v2

    :goto_1
    mul-int/lit8 v4, v3, 0x2

    if-gt v4, v1, :cond_9

    .line 174
    const-string v5, "CustCarrierFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oem_config_wifi_carrier_open_string_array["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]: SSID ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcust/settings/wifi/CustCarrierFeature;->mCarrierOpenCofig:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " , removable = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcust/settings/wifi/CustCarrierFeature;->mCarrierOpenCofig:[Ljava/lang/String;

    add-int/lit8 v4, v4, -0x2

    aget-object v8, v8, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object v5, Lcust/settings/wifi/CustCarrierFeature;->mCarrierOpenCofig:[Ljava/lang/String;

    aget-object v5, v5, v7

    .line 177
    sget-object v6, Lcust/settings/wifi/CustCarrierFeature;->mCarrierOpenCofig:[Ljava/lang/String;

    aget-object v4, v6, v4

    .line 178
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcust/settings/wifi/CustCarrierFeature;->isSsidMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 179
    const-string p1, "YES"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 173
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 184
    :cond_9
    return v0

    .line 186
    :cond_a
    return v0
.end method

.method public unregisterBroadcastReceiver()V
    .locals 4

    .line 75
    :try_start_0
    sget-object v0, Lcust/settings/wifi/CustCarrierFeature;->mContentList:Ljava/util/List;

    iget-object v1, p0, Lcust/settings/wifi/CustCarrierFeature;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "CustCarrierFeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WIFI_DEBUG]Unregister carrier configuration changed BroadcastReceiver!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/wifi/CustCarrierFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcust/settings/wifi/CustCarrierFeature;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcust/settings/wifi/CustCarrierFeature;->mLoadConfigReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    sget-object v0, Lcust/settings/wifi/CustCarrierFeature;->mContentList:Ljava/util/List;

    iget-object v1, p0, Lcust/settings/wifi/CustCarrierFeature;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_0
    const-string v0, "CustCarrierFeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WIFI_DEBUG] No need to unregister BroadcastReceiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/wifi/CustCarrierFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    nop

    .line 86
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v1, "CustCarrierFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WIFI_DEBUG] Unregister BroadcastReceiver has Exception => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method
