.class public Lcom/android/settings/wifi/WifiStatusTest;
.super Landroid/app/Activity;
.source "WifiStatusTest.java"


# instance fields
.field private mBSSID:Landroid/widget/TextView;

.field private mHiddenSSID:Landroid/widget/TextView;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field private mIPAddr:Landroid/widget/TextView;

.field private mLinkSpeed:Landroid/widget/TextView;

.field private mMACAddr:Landroid/widget/TextView;

.field private mNetworkId:Landroid/widget/TextView;

.field private mNetworkState:Landroid/widget/TextView;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mRSSI:Landroid/widget/TextView;

.field private mSSID:Landroid/widget/TextView;

.field private mScanList:Landroid/widget/TextView;

.field private mSupplicantState:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiState:Landroid/widget/TextView;

.field private mWifiStateFilter:Landroid/content/IntentFilter;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private pingTestButton:Landroid/widget/Button;

.field private updateButton:Landroid/widget/Button;

.field updateButtonHandler:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    new-instance v0, Lcom/android/settings/wifi/WifiStatusTest$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiStatusTest$1;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    new-instance v0, Lcom/android/settings/wifi/WifiStatusTest$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiStatusTest$2;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 174
    new-instance v0, Lcom/android/settings/wifi/WifiStatusTest$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiStatusTest$3;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->updateButtonHandler:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/NetworkInfo;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mIPAddr:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mLinkSpeed:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mMACAddr:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mNetworkId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSSID:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->handleScanResultsAvailable()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->pingHostname()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->httpClientTest()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;ZI)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiStatusTest;->handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->handleSignalChanged(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->updatePingState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->setWifiStateText(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mBSSID:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHiddenSSID:Landroid/widget/TextView;

    return-object p0
.end method

.method private handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    .line 299
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 297
    invoke-static {p0, v1, p1, v0, v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 300
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mNetworkState:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_1
    return-void
.end method

.method private handleScanResultsAvailable()V
    .locals 5

    .line 265
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 267
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 268
    if-eqz v0, :cond_2

    .line 269
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 270
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 272
    if-nez v3, :cond_0

    .line 273
    goto :goto_1

    .line 276
    :cond_0
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 277
    goto :goto_1

    .line 280
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mScanList:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method

.method private handleSignalChanged(I)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    return-void
.end method

.method private handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V
    .locals 0

    .line 287
    if-eqz p2, :cond_0

    .line 288
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string p2, "ERROR AUTHENTICATING"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V

    .line 292
    :goto_0
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 0

    .line 261
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->setWifiStateText(I)V

    .line 262
    return-void
.end method

.method private httpClientTest()V
    .locals 4

    .line 359
    nop

    .line 362
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://www.google.com"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 364
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 365
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_0

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail: Code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    :goto_0
    if-eqz v1, :cond_1

    .line 373
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 372
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 369
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 372
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    .line 369
    :catch_1
    move-exception v1

    .line 370
    :goto_1
    :try_start_2
    const-string v1, "Fail: IOException"

    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 372
    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 376
    :cond_1
    :goto_2
    return-void

    .line 372
    :goto_3
    if-eqz v1, :cond_2

    .line 373
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0
.end method

.method private final pingHostname()V
    .locals 2

    .line 342
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "ping -c 1 -w 100 www.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 344
    if-nez v0, :cond_0

    .line 345
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 347
    :cond_0
    const-string v0, "Fail: Host unreachable"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_1

    .line 351
    :catch_1
    move-exception v0

    .line 352
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 349
    :catch_2
    move-exception v0

    .line 350
    const-string v0, "Fail: Unknown Host"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    .line 355
    :goto_0
    nop

    .line 356
    :goto_1
    return-void
.end method

.method private setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V
    .locals 1

    .line 201
    sget-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v0, "FOUR WAY HANDSHAKE"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 203
    :cond_0
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v0, "ASSOCIATED"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 205
    :cond_1
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v0, "ASSOCIATING"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 207
    :cond_2
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v0, "COMPLETED"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 209
    :cond_3
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v0, "DISCONNECTED"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 211
    :cond_4
    sget-object v0, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 212
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v0, "DORMANT"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 213
    :cond_5
    sget-object v0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 214
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v0, "GROUP HANDSHAKE"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 215
    :cond_6
    sget-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 216
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v0, "INACTIVE"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 217
    :cond_7
    sget-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 218
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v0, "INVALID"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :cond_8
    sget-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 220
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v0, "SCANNING"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    :cond_9
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 222
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v0, "UNINITIALIZED"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    :cond_a
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v0, "BAD"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const-string p1, "WifiStatusTest"

    const-string v0, "supplicant state is bad"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_0
    return-void
.end method

.method private setWifiStateText(I)V
    .locals 2

    .line 231
    packed-switch p1, :pswitch_data_0

    .line 248
    const-string p1, "BAD"

    .line 249
    const-string v0, "WifiStatusTest"

    const-string v1, "wifi state is bad"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :pswitch_0
    const p1, 0x7f1210ed    # @string/wifi_state_unknown 'Unknown'

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 246
    goto :goto_0

    .line 242
    :pswitch_1
    const p1, 0x7f1210ea    # @string/wifi_state_enabled 'Enabled'

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 243
    goto :goto_0

    .line 239
    :pswitch_2
    const p1, 0x7f1210eb    # @string/wifi_state_enabling 'Enabling'

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 240
    goto :goto_0

    .line 236
    :pswitch_3
    const p1, 0x7f1210e8    # @string/wifi_state_disabled 'Disabled'

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 237
    goto :goto_0

    .line 233
    :pswitch_4
    const p1, 0x7f1210e9    # @string/wifi_state_disabling 'Disabling'

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 234
    nop

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiState:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final updatePingState()V
    .locals 3

    .line 305
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ae2    # @string/radioInfo_unknown 'Unknown'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    .line 310
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    new-instance v1, Lcom/android/settings/wifi/WifiStatusTest$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiStatusTest$4;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    .line 320
    new-instance v2, Lcom/android/settings/wifi/WifiStatusTest$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/wifi/WifiStatusTest$5;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 327
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 329
    new-instance v2, Lcom/android/settings/wifi/WifiStatusTest$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/wifi/WifiStatusTest$6;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 336
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 337
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const-string p1, "wifi"

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 121
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    .line 122
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/WifiStatusTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    const p1, 0x7f0d01de    # @layout/wifi_status_test 'res/layout/wifi_status_test.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->setContentView(I)V

    .line 132
    const p1, 0x7f0a03b0    # @id/update

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->updateButton:Landroid/widget/Button;

    .line 133
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->updateButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->updateButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const p1, 0x7f0a03ed    # @id/wifi_state

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiState:Landroid/widget/TextView;

    .line 136
    const p1, 0x7f0a0222    # @id/network_state

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mNetworkState:Landroid/widget/TextView;

    .line 137
    const p1, 0x7f0a034f    # @id/supplicant_state

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    .line 138
    const p1, 0x7f0a02bf    # @id/rssi

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;

    .line 139
    const p1, 0x7f0a007e    # @id/bssid

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mBSSID:Landroid/widget/TextView;

    .line 140
    const p1, 0x7f0a032b    # @id/ssid

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSSID:Landroid/widget/TextView;

    .line 141
    const p1, 0x7f0a018b    # @id/hidden_ssid

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHiddenSSID:Landroid/widget/TextView;

    .line 142
    const p1, 0x7f0a01bf    # @id/ipaddr

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mIPAddr:Landroid/widget/TextView;

    .line 143
    const p1, 0x7f0a01ff    # @id/macaddr

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mMACAddr:Landroid/widget/TextView;

    .line 144
    const p1, 0x7f0a0223    # @id/networkid

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mNetworkId:Landroid/widget/TextView;

    .line 145
    const p1, 0x7f0a01ed    # @id/link_speed

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mLinkSpeed:Landroid/widget/TextView;

    .line 146
    const p1, 0x7f0a02c4    # @id/scan_list

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mScanList:Landroid/widget/TextView;

    .line 149
    const p1, 0x7f0a0261    # @id/pingHostname

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    .line 150
    const p1, 0x7f0a0193    # @id/httpClientTest

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    .line 152
    const p1, 0x7f0a0264    # @id/ping_test

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->pingTestButton:Landroid/widget/Button;

    .line 153
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest;->pingTestButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    return-void
.end method
