.class public Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiDetailPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final KEY_BUTTONS_PREF:Ljava/lang/String; = "buttons"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_DNS_PREF:Ljava/lang/String; = "dns"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_FREQUENCY_PREF:Ljava/lang/String; = "frequency"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_GATEWAY_PREF:Ljava/lang/String; = "gateway"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_HEADER:Ljava/lang/String; = "connection_header"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_IPV6_ADDRESSES_PREF:Ljava/lang/String; = "ipv6_addresses"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_IPV6_CATEGORY:Ljava/lang/String; = "ipv6_category"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_IP_ADDRESS_PREF:Ljava/lang/String; = "ip_address"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_LINK_SPEED:Ljava/lang/String; = "link_speed"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_MAC_ADDRESS_PREF:Ljava/lang/String; = "mac_address"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SECURITY_PREF:Ljava/lang/String; = "security"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SIGNAL_STRENGTH_PREF:Ljava/lang/String; = "signal_strength"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SUBNET_MASK_PREF:Ljava/lang/String; = "subnet_mask"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

.field private mDnsPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mEnableHideForgetButton:Z

.field private mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mFragment:Landroid/app/Fragment;

.field private mFrequencyPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mGatewayPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconInjector:Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

.field private mIpAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mIpv6AddressPref:Landroid/support/v7/preference/Preference;

.field private mIpv6Category:Landroid/support/v7/preference/PreferenceCategory;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mLinkSpeedPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mMacAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mNetwork:Landroid/net/Network;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRssiSignalLevel:I

.field private mSecurityPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mSignalStr:[Ljava/lang/String;

.field private mSignalStrengthPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mSubnetPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mhideModifyOption:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    const-string v0, "WifiDetailsPrefCtrl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroid/app/Fragment;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 248
    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

    .line 156
    new-instance v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 180
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 183
    new-instance v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 250
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 251
    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 252
    iput-object p4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 253
    iput-object p5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mHandler:Landroid/os/Handler;

    .line 254
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f0300bc    # @array/wifi_signal

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStr:[Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 256
    iput-object p7, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 257
    iput-object p8, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 258
    iput-object p9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIconInjector:Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

    .line 260
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    .line 261
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p6, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 267
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050055    # @bool/zzz_creq_pkg_enable_preload_carrier_wifi_config 'false'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEnableHideForgetButton:Z

    .line 269
    const-string p1, "WifiDetailsPrefCtrl"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[WIFI_DEBUG] Hide forget button feature: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEnableHideForgetButton:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-boolean p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEnableHideForgetButton:Z

    if-eqz p1, :cond_0

    .line 271
    new-instance p1, Lcust/settings/wifi/CustCarrierFeature;

    invoke-direct {p1, p3}, Lcust/settings/wifi/CustCarrierFeature;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

    .line 274
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/LinkProperties;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateIpLayerInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshNetworkState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->exitActivity()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/app/Fragment;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    return-object p0
.end method

.method private canForgetNetwork()Z
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canModifyNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canSignIntoNetwork()Z
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiUtils;->canSignIntoNetwork(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method private exitActivity()V
    .locals 2

    .line 435
    sget-boolean v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 436
    const-string v0, "WifiDetailsPrefCtrl"

    const-string v1, "Exiting the WifiNetworkDetailsPage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 439
    return-void
.end method

.method private forgetNetwork()V
    .locals 4

    .line 577
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 586
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 587
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x89

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    .line 586
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 588
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 589
    return-void
.end method

.method private static ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;
    .locals 1

    .line 544
    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 546
    invoke-static {v0, p0}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 547
    :catch_0
    move-exception p0

    .line 548
    const/4 p0, 0x0

    return-object p0

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public static synthetic lambda$XZAGhHrbkIDyusER4MAM6luKcT0(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$displayPreference$0(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/view/View;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->forgetNetwork()V

    return-void
.end method

.method public static synthetic lambda$displayPreference$1(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/view/View;)V
    .locals 0

    .line 322
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->signIntoNetwork()V

    return-void
.end method

.method public static newInstance(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroid/app/Fragment;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
    .locals 11

    .line 232
    new-instance v10, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    new-instance v9, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

    move-object v3, p2

    invoke-direct {v9, v3}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;-><init>(Landroid/content/Context;)V

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroid/app/Fragment;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;)V

    return-object v10
.end method

.method private refreshNetworkState()V
    .locals 4

    .line 442
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 443
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 444
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 445
    return-void
.end method

.method private refreshRssiViews()V
    .locals 4

    .line 448
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 450
    iget v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    if-ne v1, v0, :cond_0

    .line 451
    return-void

    .line 453
    :cond_0
    iput v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    .line 454
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIconInjector:Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

    iget v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 457
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 459
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600da    # @color/wifi_details_icon_color '#8a000000'

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    .line 461
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 460
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 462
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStrengthPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiDetailPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStrengthPref:Lcom/android/settings/wifi/WifiDetailPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStr:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method private setupEntityHeader(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    .line 347
    const-string v0, "connection_header"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/LayoutPreference;

    .line 348
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 350
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 351
    const v2, 0x7f0a0136    # @id/entity_header

    invoke-virtual {p1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 349
    invoke-static {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 353
    const v0, 0x7f0a0138    # @id/entity_header_icon

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 354
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    .line 355
    const v1, 0x7f08017e    # @drawable/ic_settings_widget_background 'res/drawable/ic_settings_widget_background.xml'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 354
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 356
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 358
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    .line 359
    return-void
.end method

.method private signIntoNetwork()V
    .locals 4

    .line 595
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 596
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    .line 595
    const/16 v3, 0x3f0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 597
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    .line 598
    return-void
.end method

.method private updateInfo()V
    .locals 6

    .line 388
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 389
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 390
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canForgetNetwork()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Visible(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 403
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshNetworkState()V

    .line 406
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshRssiViews()V

    .line 409
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    .line 413
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkSpeedPref:Lcom/android/settings/wifi/WifiDetailPreference;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkSpeedPref:Lcom/android/settings/wifi/WifiDetailPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f1207e0    # @string/link_speed '%1$d Mbps'

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 415
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 414
    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    .line 419
    const/4 v1, 0x0

    .line 420
    const/16 v2, 0x960

    if-lt v0, v2, :cond_3

    const/16 v2, 0x9c4

    if-ge v0, v2, :cond_3

    .line 422
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120fe2    # @string/wifi_band_24ghz '2.4 GHz'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 423
    :cond_3
    const/16 v2, 0x1324

    if-lt v0, v2, :cond_4

    const/16 v2, 0x170c

    if-ge v0, v2, :cond_4

    .line 425
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120fe3    # @string/wifi_band_5ghz '5 GHz'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 427
    :cond_4
    const-string v2, "WifiDetailsPrefCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected frequency "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFrequencyPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateIpLayerInfo()V

    .line 432
    return-void

    .line 391
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->exitActivity()V

    .line 392
    return-void
.end method

.method private updateIpLayerInfo()V
    .locals 9

    .line 484
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canSignIntoNetwork()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Visible(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 486
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canSignIntoNetwork()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canForgetNetwork()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setVisible(Z)V

    .line 490
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_3

    goto/16 :goto_7

    .line 500
    :cond_3
    nop

    .line 501
    nop

    .line 502
    new-instance v0, Ljava/util/StringJoiner;

    const-string v3, "\n"

    invoke-direct {v0, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkAddress;

    .line 505
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet4Address;

    if-eqz v8, :cond_4

    .line 506
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 507
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 508
    :cond_4
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet6Address;

    if-eqz v8, :cond_5

    .line 509
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 511
    :cond_5
    :goto_3
    goto :goto_2

    .line 514
    :cond_6
    nop

    .line 515
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 516
    invoke-virtual {v7}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 517
    invoke-virtual {v7}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 518
    goto :goto_5

    .line 520
    :cond_7
    goto :goto_4

    .line 523
    :cond_8
    :goto_5
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v7, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$XZAGhHrbkIDyusER4MAM6luKcT0;->INSTANCE:Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$XZAGhHrbkIDyusER4MAM6luKcT0;

    .line 524
    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    const-string v7, "\n"

    .line 525
    invoke-static {v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 528
    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-direct {p0, v7, v5}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updatePreference(Lcom/android/settings/wifi/WifiDetailPreference;Ljava/lang/String;)V

    .line 529
    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSubnetPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-direct {p0, v5, v6}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updatePreference(Lcom/android/settings/wifi/WifiDetailPreference;Ljava/lang/String;)V

    .line 530
    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mGatewayPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-direct {p0, v5, v4}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updatePreference(Lcom/android/settings/wifi/WifiDetailPreference;Ljava/lang/String;)V

    .line 531
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mDnsPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-direct {p0, v4, v3}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updatePreference(Lcom/android/settings/wifi/WifiDetailPreference;Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0}, Ljava/util/StringJoiner;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 534
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6AddressPref:Landroid/support/v7/preference/Preference;

    .line 535
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6Category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    goto :goto_6

    .line 538
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6Category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 540
    :goto_6
    return-void

    .line 491
    :cond_a
    :goto_7
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 492
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSubnetPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 493
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mGatewayPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 494
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mDnsPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 495
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6Category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 496
    return-void
.end method

.method private updatePreference(Lcom/android/settings/wifi/WifiDetailPreference;Ljava/lang/String;)V
    .locals 1

    .line 468
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 470
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    goto :goto_0

    .line 472
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 474
    :goto_0
    return-void
.end method


# virtual methods
.method public canModifyNetwork()Z
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    .line 290
    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEnableHideForgetButton:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcust/settings/wifi/CustCarrierFeature;->hideForgetButton(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mhideModifyOption:Z

    .line 292
    const-string v0, "WifiDetailsPrefCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WIFI_DEBUG] Hide forget button and sign in button preference!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mhideModifyOption:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v0, "buttons"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 294
    iget-boolean v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mhideModifyOption:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 299
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 301
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->setupEntityHeader(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 315
    const-string v0, "buttons"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ActionButtonPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    .line 316
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    const v2, 0x7f120691    # @string/forget 'Forget'

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 318
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    new-instance v2, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$HDOTYXVF80U7sCZa22KqorlzriY;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$HDOTYXVF80U7sCZa22KqorlzriY;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 319
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    const v2, 0x7f1210e0    # @string/wifi_sign_in_button_text 'Sign in'

    .line 320
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    const/4 v2, 0x1

    .line 321
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    new-instance v2, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$PxMNywf_HXiVAESmLubuiIo869s;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$PxMNywf_HXiVAESmLubuiIo869s;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 322
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    goto :goto_0

    .line 324
    :cond_1
    const-string v0, "WifiDetailsPrefCtrl"

    const-string v2, "[WIFI_DEBUG] mButtonsPref is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_0
    const-string v0, "signal_strength"

    .line 329
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStrengthPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 330
    const-string v0, "link_speed"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkSpeedPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 331
    const-string v0, "frequency"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFrequencyPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 332
    const-string v0, "security"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSecurityPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 334
    const-string v0, "mac_address"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 335
    const-string v0, "ip_address"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 336
    const-string v0, "gateway"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mGatewayPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 337
    const-string v0, "subnet_mask"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSubnetPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 338
    const-string v0, "dns"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mDnsPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 340
    const-string v0, "ipv6_category"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6Category:Landroid/support/v7/preference/PreferenceCategory;

    .line 341
    const-string v0, "ipv6_addresses"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6AddressPref:Landroid/support/v7/preference/Preference;

    .line 343
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSecurityPref:Lcom/android/settings/wifi/WifiDetailPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public isDisableModify()Z
    .locals 3

    .line 651
    const-string v0, "WifiDetailsPrefCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WIFI_DEBUG] Hide modify option = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mhideModifyOption:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mhideModifyOption:Z

    return v0
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0

    .line 603
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    .line 377
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 378
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 379
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 380
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 381
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 383
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    .line 366
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 367
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 368
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateInfo()V

    .line 369
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 370
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 372
    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 2

    .line 607
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    new-instance v1, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 624
    :cond_0
    return-void
.end method

.method public unregisterBroadcastReceiver()V
    .locals 2

    .line 644
    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEnableHideForgetButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

    if-eqz v0, :cond_0

    .line 645
    const-string v0, "WifiDetailsPrefCtrl"

    const-string v1, "[WIFI_DEBUG] Unregister CustCarrierFeature BroadcastReceicer!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

    invoke-virtual {v0}, Lcust/settings/wifi/CustCarrierFeature;->unregisterBroadcastReceiver()V

    .line 648
    :cond_0
    return-void
.end method
