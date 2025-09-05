.class public Lcom/android/settingslib/wifi/WifiStatusTracker;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiStatusTracker.java"


# instance fields
.field public connected:Z

.field public enabled:Z

.field public level:I

.field private final mCacheListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

.field private final mCallback:Ljava/lang/Runnable;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field public rssi:I

.field public ssid:Ljava/lang/String;

.field public state:I

.field public statusLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/wifi/WifiStatusTracker$1;-><init>(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCacheListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    .line 53
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 54
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 55
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 57
    new-instance v0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiStatusTracker$2;-><init>(Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 80
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 82
    new-instance p2, Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-direct {p2, p1}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 83
    iput-object p3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 84
    iput-object p4, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 85
    iput-object p5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCallback:Ljava/lang/Runnable;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/wifi/WifiStatusTracker;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateStatusLabel()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/lang/Runnable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method private getValidSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 5

    .line 171
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    const-string v1, "<unknown ssid>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    return-object v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 178
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 179
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 180
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object p1

    .line 178
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private maybeRequestNetworkScore()V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v1

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/NetworkKey;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    .line 149
    :cond_0
    return-void
.end method

.method private updateRssi(I)V
    .locals 1

    .line 140
    iput p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    .line 141
    iget p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    const/4 v0, 0x5

    invoke-static {p1, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    .line 142
    return-void
.end method

.method private updateStatusLabel()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 153
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_1

    .line 155
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_status_sign_in_required:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    .line 157
    return-void

    .line 158
    :cond_0
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_status_no_internet:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    .line 160
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 165
    invoke-static {v1}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v0

    .line 166
    if-nez v0, :cond_2

    .line 167
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    invoke-static {v1, v0, v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(Landroid/content/Context;Landroid/net/ScoredNetwork;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    .line 168
    return-void
.end method

.method private updateWifiState()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->state:I

    .line 136
    iget v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    .line 137
    return-void
.end method


# virtual methods
.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateWifiState()V

    goto :goto_1

    .line 111
    :cond_1
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateWifiState()V

    .line 113
    const-string v0, "networkInfo"

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 115
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    .line 116
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 117
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    .line 118
    iget-boolean p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    if-eqz p1, :cond_3

    .line 119
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 120
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_3

    .line 121
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->getValidSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    .line 122
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateRssi(I)V

    .line 123
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->maybeRequestNetworkScore()V

    .line 126
    :cond_3
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateStatusLabel()V

    .line 127
    goto :goto_1

    :cond_4
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    const-string v0, "newRssi"

    const/16 v1, -0xc8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateRssi(I)V

    .line 130
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateStatusLabel()V

    .line 132
    :cond_5
    :goto_1
    return-void
.end method

.method public setListening(Z)V
    .locals 3

    .line 89
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {p1, v0, v1, v0}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 92
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCacheListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiNetworkScoreCache;->registerListener(Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    .line 93
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {p1, v0, v1}, Landroid/net/NetworkScoreManager;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 98
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkScoreCache;->unregisterListener()V

    .line 99
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 101
    :goto_0
    return-void
.end method
