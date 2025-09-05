.class public Lcom/android/settingslib/wifi/AccessPoint;
.super Ljava/lang/Object;
.source "AccessPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;,
        Lcom/android/settingslib/wifi/AccessPoint$Speed;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/wifi/AccessPoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final HIGHER_FREQ_24GHZ:I = 0x9c4

.field public static final HIGHER_FREQ_5GHZ:I = 0x170c

.field static final KEY_CARRIER_AP_EAP_TYPE:Ljava/lang/String; = "key_carrier_ap_eap_type"

.field static final KEY_CARRIER_NAME:Ljava/lang/String; = "key_carrier_name"

.field static final KEY_CONFIG:Ljava/lang/String; = "key_config"

.field static final KEY_FQDN:Ljava/lang/String; = "key_fqdn"

.field static final KEY_IS_CARRIER_AP:Ljava/lang/String; = "key_is_carrier_ap"

.field static final KEY_NETWORKINFO:Ljava/lang/String; = "key_networkinfo"

.field static final KEY_PROVIDER_FRIENDLY_NAME:Ljava/lang/String; = "key_provider_friendly_name"

.field static final KEY_PSKTYPE:Ljava/lang/String; = "key_psktype"

.field static final KEY_SCANRESULTS:Ljava/lang/String; = "key_scanresults"

.field static final KEY_SCOREDNETWORKCACHE:Ljava/lang/String; = "key_scorednetworkcache"

.field static final KEY_SECURITY:Ljava/lang/String; = "key_security"

.field static final KEY_SPEED:Ljava/lang/String; = "key_speed"

.field static final KEY_SSID:Ljava/lang/String; = "key_ssid"

.field static final KEY_WIFIINFO:Ljava/lang/String; = "key_wifiinfo"

.field public static final LOWER_FREQ_24GHZ:I = 0x960

.field public static final LOWER_FREQ_5GHZ:I = 0x1324

.field private static final PSK_UNKNOWN:I = 0x0

.field private static final PSK_WPA:I = 0x1

.field private static final PSK_WPA2:I = 0x2

.field private static final PSK_WPA_WPA2:I = 0x3

.field public static final SECURITY_EAP:I = 0x3

.field public static final SECURITY_NONE:I = 0x0

.field public static final SECURITY_PSK:I = 0x2

.field public static final SECURITY_WEP:I = 0x1

.field public static final SIGNAL_LEVELS:I = 0x5

.field static final TAG:Ljava/lang/String; = "SettingsLib.AccessPoint"

.field public static final UNREACHABLE_RSSI:I = -0x80000000

.field static final sLastId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private bssid:Ljava/lang/String;

.field public mAccessPointExt:Lcom/mediatek/settingslib/wifi/AccessPointExt;

.field mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

.field private mCarrierApEapType:I

.field private mCarrierName:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mFqdn:Ljava/lang/String;

.field mId:I

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mIsCarrierAp:Z

.field private mIsScoredNetworkMetered:Z

.field private mKey:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mProviderFriendlyName:Ljava/lang/String;

.field private mRssi:I

.field private final mScanResults:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mScoredNetworkCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeed:I

.field private mTag:Ljava/lang/Object;

.field private networkId:I

.field private pskType:I

.field private security:I

.field private ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 191
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 195
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 203
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 204
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 220
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 290
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 292
    new-instance v0, Lcom/mediatek/settingslib/wifi/AccessPointExt;

    invoke-direct {v0, p1}, Lcom/mediatek/settingslib/wifi/AccessPointExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointExt:Lcom/mediatek/settingslib/wifi/AccessPointExt;

    .line 293
    invoke-virtual {p0, p2}, Lcom/android/settingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 294
    sget-object p1, Lcom/android/settingslib/wifi/AccessPoint;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 3

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 191
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 195
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 203
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 204
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 220
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 302
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 304
    new-instance v0, Lcom/mediatek/settingslib/wifi/AccessPointExt;

    invoke-direct {v0, p1}, Lcom/mediatek/settingslib/wifi/AccessPointExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointExt:Lcom/mediatek/settingslib/wifi/AccessPointExt;

    .line 305
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    .line 306
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mProviderFriendlyName:Ljava/lang/String;

    .line 307
    sget-object p1, Lcom/android/settingslib/wifi/AccessPoint;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    .line 308
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 191
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 195
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 203
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 204
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 220
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 226
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 228
    new-instance v0, Lcom/mediatek/settingslib/wifi/AccessPointExt;

    invoke-direct {v0, p1}, Lcom/mediatek/settingslib/wifi/AccessPointExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointExt:Lcom/mediatek/settingslib/wifi/AccessPointExt;

    .line 229
    const-string p1, "key_config"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    const-string p1, "key_config"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_1

    .line 233
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 235
    :cond_1
    const-string p1, "key_ssid"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 236
    const-string p1, "key_ssid"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 238
    :cond_2
    const-string p1, "key_security"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 239
    const-string p1, "key_security"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 241
    :cond_3
    const-string p1, "key_speed"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 242
    const-string p1, "key_speed"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 244
    :cond_4
    const-string p1, "key_psktype"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 245
    const-string p1, "key_psktype"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 247
    :cond_5
    const-string p1, "key_wifiinfo"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiInfo;

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 248
    const-string p1, "key_networkinfo"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 249
    const-string p1, "key_networkinfo"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 251
    :cond_6
    const-string p1, "key_scanresults"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 252
    const-string p1, "key_scanresults"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 253
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 254
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_7

    aget-object v2, p1, v1

    .line 255
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    check-cast v2, Landroid/net/wifi/ScanResult;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_7
    const-string p1, "key_scorednetworkcache"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 259
    const-string p1, "key_scorednetworkcache"

    .line 260
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    .line 262
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->getScore()Landroid/net/ScoredNetwork;

    move-result-object v2

    iget-object v2, v2, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v2, v2, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v2, v2, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    goto :goto_1

    .line 265
    :cond_8
    const-string p1, "key_fqdn"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 266
    const-string p1, "key_fqdn"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    .line 268
    :cond_9
    const-string p1, "key_provider_friendly_name"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 269
    const-string p1, "key_provider_friendly_name"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mProviderFriendlyName:Ljava/lang/String;

    .line 271
    :cond_a
    const-string p1, "key_is_carrier_ap"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 272
    const-string p1, "key_is_carrier_ap"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 274
    :cond_b
    const-string p1, "key_carrier_ap_eap_type"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 275
    const-string p1, "key_carrier_ap_eap_type"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    .line 277
    :cond_c
    const-string p1, "key_carrier_name"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 278
    const-string p1, "key_carrier_name"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 280
    :cond_d
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 283
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    .line 284
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateRssi()V

    .line 286
    sget-object p1, Lcom/android/settingslib/wifi/AccessPoint;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    .line 287
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 191
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 195
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 203
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 204
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 220
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 311
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 313
    new-instance v0, Lcom/mediatek/settingslib/wifi/AccessPointExt;

    invoke-direct {v0, p1}, Lcom/mediatek/settingslib/wifi/AccessPointExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointExt:Lcom/mediatek/settingslib/wifi/AccessPointExt;

    .line 314
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 317
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 320
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/ScanResult;

    .line 321
    iget-object p2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 322
    iget-object p2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 323
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 324
    iget p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 325
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    .line 328
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateRssi()V

    .line 331
    iget-boolean p2, p1, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    iput-boolean p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 332
    iget p2, p1, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    iput p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    .line 333
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 335
    sget-object p1, Lcom/android/settingslib/wifi/AccessPoint;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    .line 336
    return-void

    .line 315
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot construct with an empty ScanResult list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateAverageSpeedForSsid()I
    .locals 8

    .line 551
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 552
    return v1

    .line 555
    :cond_0
    const-string v0, "SettingsLib.AccessPoint"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 556
    const-string v0, "SettingsLib.AccessPoint"

    const-string v4, "Generating fallbackspeed for %s using cache: %s"

    new-array v5, v2, [Ljava/lang/Object;

    .line 557
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    aput-object v6, v5, v3

    .line 556
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_1
    nop

    .line 565
    nop

    .line 566
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v1

    move v5, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    .line 567
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->getScore()Landroid/net/ScoredNetwork;

    move-result-object v6

    iget v7, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v6, v7}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result v6

    .line 568
    if-eqz v6, :cond_2

    .line 569
    add-int/lit8 v4, v4, 0x1

    .line 570
    add-int/2addr v5, v6

    .line 572
    :cond_2
    goto :goto_0

    .line 573
    :cond_3
    if-nez v4, :cond_4

    .line 574
    move v0, v1

    goto :goto_1

    .line 573
    :cond_4
    div-int v0, v5, v4

    .line 574
    :goto_1
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 575
    const-string v4, "SettingsLib.AccessPoint"

    const-string v5, "%s generated fallback speed is: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_5
    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->roundToClosestSpeedEnum(I)I

    move-result v0

    return v0
.end method

.method public static getKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 2

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 612
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 625
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)I
    .locals 3

    .line 1302
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1303
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WPA2-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1304
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1305
    const/4 p0, 0x3

    return p0

    .line 1306
    :cond_0
    if-eqz v1, :cond_1

    .line 1307
    const/4 p0, 0x2

    return p0

    .line 1308
    :cond_1
    if-eqz v0, :cond_2

    .line 1309
    const/4 p0, 0x1

    return p0

    .line 1311
    :cond_2
    const-string v0, "SettingsLib.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received abnormal flag string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const/4 p0, 0x0

    return p0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2

    .line 1318
    invoke-static {p0}, Lcom/mediatek/settingslib/wifi/AccessPointExt;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    .line 1319
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1320
    return v0

    .line 1323
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1324
    const/4 p0, 0x1

    return p0

    .line 1325
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1326
    const/4 p0, 0x2

    return p0

    .line 1327
    :cond_2
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "EAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1328
    const/4 p0, 0x3

    return p0

    .line 1330
    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3

    .line 1335
    invoke-static {p0}, Lcom/mediatek/settingslib/wifi/AccessPointExt;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1336
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1337
    return v0

    .line 1340
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 1341
    return v2

    .line 1343
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1344
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1347
    :cond_2
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0

    .line 1345
    :cond_4
    :goto_0
    return v2
.end method

.method private getSettingsSummary(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 7

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 856
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-static {v1, v4, v3, v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 860
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    if-eqz v1, :cond_1

    .line 862
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->connected_via_carrier:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 863
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 865
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 866
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 865
    move v5, v2

    goto :goto_0

    .line 866
    :cond_2
    nop

    .line 865
    move v5, v3

    :goto_0
    invoke-static {v1, v4, v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 867
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 868
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 869
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->available_via_passpoint:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 870
    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    goto/16 :goto_3

    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 872
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 873
    sget v1, Lcom/android/settingslib/R$string;->wifi_no_internet_no_reconnect:I

    goto :goto_1

    .line 874
    :cond_5
    sget v1, Lcom/android/settingslib/R$string;->wifi_no_internet:I

    .line 875
    :goto_1
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    goto/16 :goto_3

    :cond_6
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 877
    nop

    .line 878
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    .line 879
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v1

    const/16 v4, 0xd

    if-eq v1, v4, :cond_7

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 888
    :pswitch_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_disabled_network_failure:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    goto :goto_2

    .line 881
    :pswitch_1
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_disabled_password_failure:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    goto :goto_2

    .line 891
    :pswitch_2
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_disabled_generic:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 884
    :cond_7
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_check_password_try_again:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    nop

    .line 894
    :goto_2
    goto :goto_3

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNotRecommended()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 895
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_disabled_by_recommendation_provider:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 896
    :cond_9
    iget-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    if-eqz v1, :cond_a

    .line 897
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->available_via_carrier:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 898
    :cond_a
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v1

    if-nez v1, :cond_b

    .line 899
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_not_in_range:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 901
    :cond_b
    if-eqz p1, :cond_d

    .line 903
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getAssociationStatus()I

    move-result v1

    const/16 v4, 0x11

    if-eq v1, v4, :cond_c

    .line 910
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_remembered:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 905
    :cond_c
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_ap_unable_to_handle_new_sta:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    nop

    .line 916
    :cond_d
    :goto_3
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 917
    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiUtils;->buildLoggingSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    :cond_e
    const/4 v1, 0x2

    if-eqz p1, :cond_10

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiUtils;->isMeteredOverridden(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-eqz v4, :cond_10

    .line 921
    :cond_f
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settingslib/R$string;->preference_summary_default_combination:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 923
    invoke-static {v6, p1}, Lcom/android/settingslib/wifi/WifiUtils;->getMeteredLabel(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 924
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 921
    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 929
    :cond_10
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_11

    .line 930
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lcom/android/settingslib/R$string;->preference_summary_default_combination:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 932
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 933
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 930
    invoke-virtual {p1, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 934
    :cond_11
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 935
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 937
    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getSpeedLabel(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 1205
    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    .line 1216
    const/4 p0, 0x0

    return-object p0

    .line 1207
    :cond_0
    sget p1, Lcom/android/settingslib/R$string;->speed_label_very_fast:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1209
    :cond_1
    sget p1, Lcom/android/settingslib/R$string;->speed_label_fast:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1211
    :cond_2
    sget p1, Lcom/android/settingslib/R$string;->speed_label_okay:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1213
    :cond_3
    sget p1, Lcom/android/settingslib/R$string;->speed_label_slow:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSpeedLabel(Landroid/content/Context;Landroid/net/ScoredNetwork;I)Ljava/lang/String;
    .locals 0

    .line 1223
    invoke-virtual {p1, p2}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->roundToClosestSpeedEnum(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;
    .locals 1

    .line 1289
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1294
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1233
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    if-nez p1, :cond_2

    .line 1234
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1236
    sget p1, Lcom/android/settingslib/R$string;->connected_via_passpoint:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1237
    new-array p1, v2, [Ljava/lang/Object;

    aput-object p4, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1238
    :cond_0
    if-eqz p3, :cond_2

    .line 1240
    const-class p1, Landroid/net/NetworkScoreManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkScoreManager;

    .line 1242
    invoke-virtual {p1}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object p1

    .line 1243
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1244
    sget p2, Lcom/android/settingslib/R$string;->connected_via_network_scorer:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1245
    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1247
    :cond_1
    sget p1, Lcom/android/settingslib/R$string;->connected_via_network_scorer_default:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1253
    :cond_2
    const-string p3, "connectivity"

    .line 1254
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/ConnectivityManager;

    .line 1255
    sget-object p4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, p4, :cond_4

    .line 1256
    const-string p4, "wifi"

    .line 1257
    invoke-static {p4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p4

    .line 1256
    invoke-static {p4}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object p4

    .line 1258
    const/4 v0, 0x0

    .line 1261
    :try_start_0
    invoke-interface {p4}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    goto :goto_0

    :catch_0
    move-exception p3

    .line 1264
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_4

    .line 1265
    const/16 p4, 0x11

    invoke-virtual {p3, p4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 1266
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "network_available_sign_in"

    const-string p3, "string"

    const-string p4, "android"

    .line 1267
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1268
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1269
    :cond_3
    const/16 p4, 0x10

    invoke-virtual {p3, p4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p3

    if-nez p3, :cond_4

    .line 1270
    sget p1, Lcom/android/settingslib/R$string;->wifi_connected_no_internet:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1274
    :cond_4
    if-nez p2, :cond_5

    .line 1275
    const-string p0, "SettingsLib.AccessPoint"

    const-string p1, "state is null, returning empty summary"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const-string p0, ""

    return-object p0

    .line 1278
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p1, :cond_6

    .line 1279
    sget p3, Lcom/android/settingslib/R$array;->wifi_status:I

    goto :goto_1

    :cond_6
    sget p3, Lcom/android/settingslib/R$array;->wifi_status_with_ssid:I

    .line 1278
    :goto_1
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 1280
    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p2

    .line 1282
    array-length p3, p0

    if-ge p2, p3, :cond_8

    aget-object p3, p0, p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_7

    goto :goto_2

    .line 1285
    :cond_7
    aget-object p0, p0, p2

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1283
    :cond_8
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method private isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .locals 2

    .line 981
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 982
    iget p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 983
    :cond_1
    if-eqz p1, :cond_2

    .line 984
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    return p1

    .line 990
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 2

    .line 1418
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    if-nez v0, :cond_1

    const-string v0, "SettingsLib.AccessPoint"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic lambda$setScanResults$1(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1083
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setScanResults$2(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1091
    :cond_0
    return-void
.end method

.method public static synthetic lambda$update$3(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1142
    :cond_0
    return-void
.end method

.method public static synthetic lambda$update$4(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1149
    :cond_0
    return-void
.end method

.method public static synthetic lambda$update$5(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1163
    :cond_0
    return-void
.end method

.method static synthetic lambda$updateScores$0(JLjava/util/Iterator;Lcom/android/settingslib/wifi/TimestampedScoredNetwork;)V
    .locals 2

    .line 527
    invoke-virtual {p3}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->getUpdatedTimestampMillis()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    .line 528
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 530
    :cond_0
    return-void
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1369
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    const-string p0, ""

    return-object p0

    .line 1372
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1373
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    sub-int/2addr v0, v1

    .line 1374
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1375
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1377
    :cond_1
    return-object p0
.end method

.method private static roundToClosestSpeedEnum(I)I
    .locals 2

    .line 1186
    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    .line 1187
    const/4 p0, 0x0

    return p0

    .line 1188
    :cond_0
    const/4 v1, 0x7

    if-ge p0, v1, :cond_1

    .line 1189
    return v0

    .line 1190
    :cond_1
    const/16 v0, 0xf

    if-ge p0, v0, :cond_2

    .line 1191
    const/16 p0, 0xa

    return p0

    .line 1192
    :cond_2
    const/16 v0, 0x19

    if-ge p0, v0, :cond_3

    .line 1193
    const/16 p0, 0x14

    return p0

    .line 1195
    :cond_3
    const/16 p0, 0x1e

    return p0
.end method

.method public static securityToString(II)Ljava/lang/String;
    .locals 3

    .line 1351
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1352
    const-string p0, "WEP"

    return-object p0

    .line 1353
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p0, v2, :cond_4

    .line 1354
    if-ne p1, v0, :cond_1

    .line 1355
    const-string p0, "WPA"

    return-object p0

    .line 1356
    :cond_1
    if-ne p1, v2, :cond_2

    .line 1357
    const-string p0, "WPA2"

    return-object p0

    .line 1358
    :cond_2
    if-ne p1, v1, :cond_3

    .line 1359
    const-string p0, "WPA_WPA2"

    return-object p0

    .line 1361
    :cond_3
    const-string p0, "PSK"

    return-object p0

    .line 1362
    :cond_4
    if-ne p0, v1, :cond_5

    .line 1363
    const-string p0, "EAP"

    return-object p0

    .line 1365
    :cond_5
    const-string p0, "NONE"

    return-object p0
.end method

.method private updateKey()V
    .locals 2

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    .line 361
    return-void
.end method

.method private updateMetered(Landroid/net/wifi/WifiNetworkScoreCache;)Z
    .locals 5

    .line 585
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 586
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 588
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_1

    .line 589
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {v2}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v2

    .line 590
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object p1

    .line 591
    if-eqz p1, :cond_0

    .line 592
    iget-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iget-boolean p1, p1, Landroid/net/ScoredNetwork;->meteredHint:Z

    or-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 594
    :cond_0
    goto :goto_1

    .line 595
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 596
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v3

    .line 597
    if-nez v3, :cond_2

    .line 598
    goto :goto_0

    .line 600
    :cond_2
    iget-boolean v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iget-boolean v3, v3, Landroid/net/ScoredNetwork;->meteredHint:Z

    or-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 601
    goto :goto_0

    .line 603
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    if-ne v0, p1, :cond_4

    const/4 v1, 0x1

    nop

    :cond_4
    return v1
.end method

.method private updateRssi()V
    .locals 5

    .line 698
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    return-void

    .line 702
    :cond_0
    nop

    .line 703
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v1, -0x80000000

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 704
    iget v4, v3, Landroid/net/wifi/ScanResult;->level:I

    if-le v4, v2, :cond_1

    .line 705
    iget v2, v3, Landroid/net/wifi/ScanResult;->level:I

    .line 707
    :cond_1
    goto :goto_0

    .line 709
    :cond_2
    if-eq v2, v1, :cond_3

    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    if-eq v0, v1, :cond_3

    .line 710
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    goto :goto_1

    .line 712
    :cond_3
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 714
    :goto_1
    return-void
.end method

.method private updateScores(Landroid/net/wifi/WifiNetworkScoreCache;J)Z
    .locals 7

    .line 507
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 508
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 509
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v4

    .line 510
    if-nez v4, :cond_0

    .line 511
    goto :goto_0

    .line 513
    :cond_0
    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    .line 514
    if-nez v5, :cond_1

    .line 515
    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    new-instance v6, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    invoke-direct {v6, v4, v0, v1}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;-><init>(Landroid/net/ScoredNetwork;J)V

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 519
    :cond_1
    invoke-virtual {v5, v4, v0, v1}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->update(Landroid/net/ScoredNetwork;J)V

    .line 521
    :goto_1
    goto :goto_0

    .line 524
    :cond_2
    sub-long/2addr v0, p2

    .line 525
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 526
    new-instance p2, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$OIXfUc7y1PqI_zmQ3STe_086YzY;

    invoke-direct {p2, v0, v1, p1}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$OIXfUc7y1PqI_zmQ3STe_086YzY;-><init>(JLjava/util/Iterator;)V

    invoke-interface {p1, p2}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 532
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateSpeed()Z

    move-result p1

    return p1
.end method

.method private updateSpeed()Z
    .locals 7

    .line 539
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 540
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->generateAverageSpeedForSsid()I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 542
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 543
    move v0, v3

    goto :goto_0

    .line 542
    :cond_0
    nop

    .line 543
    move v0, v2

    :goto_0
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 544
    const-string v1, "SettingsLib.AccessPoint"

    const-string v4, "%s: Set speed to %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v6, v5, v2

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_1
    return v0
.end method


# virtual methods
.method public clearConfig()V
    .locals 1

    .line 655
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 656
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 657
    return-void
.end method

.method public compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I
    .locals 3

    .line 381
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 386
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 389
    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 390
    :cond_4
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 393
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 394
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v0

    sub-int/2addr p1, v0

    return p1

    .line 398
    :cond_6
    iget v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 399
    invoke-static {v2, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    sub-int/2addr v0, v1

    .line 400
    if-eqz v0, :cond_7

    .line 401
    return v0

    .line 405
    :cond_7
    iget v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    sub-int/2addr v0, v1

    .line 406
    if-eqz v0, :cond_8

    .line 407
    return v0

    .line 411
    :cond_8
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 412
    if-eqz v0, :cond_9

    .line 413
    return v0

    .line 417
    :cond_9
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 84
    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 422
    instance-of v0, p1, Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 423
    :cond_0
    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public generateOpenNetworkConfig()V
    .locals 2

    .line 1011
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-nez v0, :cond_1

    .line 1013
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 1014
    return-void

    .line 1015
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1016
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1017
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1018
    return-void

    .line 1012
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierApEapType()I
    .locals 1

    .line 811
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    return v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getConfigName()Ljava/lang/String;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    return-object v0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mProviderFriendlyName:Ljava/lang/String;

    return-object v0

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0

    .line 802
    :cond_0
    const-string v0, "SettingsLib.AccessPoint"

    const-string v1, "NetworkInfo is null, cannot return detailed state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 2

    .line 670
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getPasspointFqdn()Ljava/lang/String;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 674
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    return v0
.end method

.method public getSavedNetworkSummary()Ljava/lang/String;
    .locals 7

    .line 819
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 820
    if-eqz v0, :cond_1

    .line 821
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 822
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 823
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 824
    const/4 v4, 0x0

    .line 825
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    goto :goto_0

    .line 829
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 830
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-interface {v2, v0, v6, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    nop

    .line 834
    move-object v4, v0

    goto :goto_0

    .line 831
    :catch_0
    move-exception v0

    .line 834
    :goto_0
    if-eqz v4, :cond_1

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settingslib/R$string;->settings_package:I

    .line 835
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settingslib/R$string;->certinstaller_package:I

    .line 837
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 836
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->saved_network:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 841
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getScanResults()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getScoredNetworkCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;"
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    return-object v0
.end method

.method public getSecurity()I
    .locals 1

    .line 729
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    return v0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 3

    .line 733
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 735
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointExt:Lcom/mediatek/settingslib/wifi/AccessPointExt;

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/settingslib/wifi/AccessPointExt;->getSecurityString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 736
    if-eqz v1, :cond_0

    .line 737
    return-object v1

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_7

    .line 744
    :cond_1
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 769
    if-eqz p1, :cond_8

    const-string p1, ""

    goto/16 :goto_6

    .line 746
    :pswitch_0
    if-eqz p1, :cond_2

    sget p1, Lcom/android/settingslib/R$string;->wifi_security_short_eap:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 747
    :cond_2
    sget p1, Lcom/android/settingslib/R$string;->wifi_security_eap:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 746
    :goto_0
    return-object p1

    .line 749
    :pswitch_1
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    packed-switch v1, :pswitch_data_1

    .line 761
    if-eqz p1, :cond_6

    sget p1, Lcom/android/settingslib/R$string;->wifi_security_short_psk_generic:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 757
    :pswitch_2
    if-eqz p1, :cond_3

    sget p1, Lcom/android/settingslib/R$string;->wifi_security_short_wpa_wpa2:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 758
    :cond_3
    sget p1, Lcom/android/settingslib/R$string;->wifi_security_wpa_wpa2:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 757
    :goto_1
    return-object p1

    .line 754
    :pswitch_3
    if-eqz p1, :cond_4

    sget p1, Lcom/android/settingslib/R$string;->wifi_security_short_wpa2:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 755
    :cond_4
    sget p1, Lcom/android/settingslib/R$string;->wifi_security_wpa2:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 754
    :goto_2
    return-object p1

    .line 751
    :pswitch_4
    if-eqz p1, :cond_5

    sget p1, Lcom/android/settingslib/R$string;->wifi_security_short_wpa:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 752
    :cond_5
    sget p1, Lcom/android/settingslib/R$string;->wifi_security_wpa:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 751
    :goto_3
    return-object p1

    .line 762
    :cond_6
    sget p1, Lcom/android/settingslib/R$string;->wifi_security_psk_generic:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 761
    :goto_4
    return-object p1

    .line 765
    :pswitch_5
    if-eqz p1, :cond_7

    sget p1, Lcom/android/settingslib/R$string;->wifi_security_short_wep:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 766
    :cond_7
    sget p1, Lcom/android/settingslib/R$string;->wifi_security_wep:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 765
    :goto_5
    return-object p1

    .line 769
    :cond_8
    sget p1, Lcom/android/settingslib/R$string;->wifi_security_none:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_6
    return-object p1

    .line 741
    :cond_9
    :goto_7
    if-eqz p1, :cond_a

    sget p1, Lcom/android/settingslib/R$string;->wifi_security_short_eap:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 742
    :cond_a
    sget p1, Lcom/android/settingslib/R$string;->wifi_security_eap:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 741
    :goto_8
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getSettingsSummary()Ljava/lang/String;
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSpeed()I
    .locals 1

    .line 1176
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    return v0
.end method

.method getSpeedLabel()Ljava/lang/String;
    .locals 1

    .line 1180
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSpeedLabel(I)Ljava/lang/String;
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSsid()Ljava/lang/CharSequence;
    .locals 5

    .line 782
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 783
    new-instance v1, Landroid/text/style/TtsSpan$TelephoneBuilder;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$TelephoneBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 785
    return-object v0
.end method

.method public getSsidStr()Ljava/lang/String;
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 428
    nop

    .line 429
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 430
    :cond_0
    const/16 v0, 0x13

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 431
    const/16 v0, 0x17

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 432
    const/16 v0, 0x1d

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 433
    return v1
.end method

.method public isActive()Z
    .locals 2

    .line 947
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 949
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 947
    :goto_0
    return v0
.end method

.method public isCarrierAp()Z
    .locals 1

    .line 807
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    return v0
.end method

.method public isConnectable()Z
    .locals 2

    .line 953
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEphemeral()Z
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 958
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 957
    :goto_0
    return v0
.end method

.method public isMetered()Z
    .locals 2

    .line 720
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 721
    invoke-static {v0, v1}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 720
    :goto_1
    return v0
.end method

.method public isPasspoint()Z
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPasspointConfig()Z
    .locals 1

    .line 972
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReachable()Z
    .locals 2

    .line 1228
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSaved()Z
    .locals 2

    .line 995
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 339
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 340
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 341
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 342
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    .line 343
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 344
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 345
    return-void
.end method

.method public matches(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    .line 637
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 641
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iget-boolean p1, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-ne v0, p1, :cond_3

    .line 640
    :cond_2
    move v1, v2

    goto :goto_0

    .line 641
    :cond_3
    nop

    .line 640
    :goto_0
    return v1
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 3

    .line 1021
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "key_ssid"

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_0
    const-string v0, "key_security"

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1023
    const-string v0, "key_speed"

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1024
    const-string v0, "key_psktype"

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1025
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1026
    :cond_1
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1027
    const-string v0, "key_scanresults"

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 1028
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    .line 1027
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1029
    const-string v0, "key_scorednetworkcache"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    .line 1030
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1029
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1031
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_2

    .line 1032
    const-string v0, "key_networkinfo"

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1035
    const-string v0, "key_fqdn"

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mProviderFriendlyName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1038
    const-string v0, "key_provider_friendly_name"

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mProviderFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_4
    const-string v0, "key_is_carrier_ap"

    iget-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1041
    const-string v0, "key_carrier_ap_eap_type"

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1042
    const-string v0, "key_carrier_name"

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    return-void
.end method

.method public setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V
    .locals 0

    .line 1046
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    .line 1047
    return-void
.end method

.method setRssi(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1168
    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 1169
    return-void
.end method

.method setScanResults(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1058
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1059
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1060
    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v4

    .line 1061
    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1066
    goto :goto_0

    .line 1062
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v1, v5

    const/4 v2, 0x1

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    .line 1063
    const-string v0, "ScanResult %s\nkey of %s did not match current AP key %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1069
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 1070
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1071
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1072
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateRssi()V

    .line 1073
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 1076
    if-lez v1, :cond_2

    if-eq v1, v0, :cond_2

    .line 1078
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateSpeed()Z

    .line 1079
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$MkkIS1nUbezHicDMmYnviyiBJyo;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$MkkIS1nUbezHicDMmYnviyiBJyo;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1087
    :cond_2
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$0Yq14aFJZLjPMzFGAvglLaxsblI;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$0Yq14aFJZLjPMzFGAvglLaxsblI;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1093
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1094
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/ScanResult;

    .line 1097
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-ne v0, v3, :cond_3

    .line 1098
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 1103
    :cond_3
    iget-boolean v0, p1, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 1104
    iget v0, p1, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    .line 1105
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 1107
    :cond_4
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 1003
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mTag:Ljava/lang/Object;

    .line 1004
    return-void
.end method

.method setUnreachable()V
    .locals 1

    .line 1173
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->setRssi(I)V

    .line 1174
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessPoint("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 441
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    const/16 v2, 0x2c

    if-eqz v1, :cond_1

    .line 444
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "saved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 447
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 450
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "ephemeral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 453
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "connectable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_4
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_5

    .line 456
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    invoke-static {v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->securityToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_5
    const-string v1, ",level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    if-eqz v1, :cond_6

    .line 460
    const-string v1, ",speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    :cond_6
    const-string v1, ",metered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isMetered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 464
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 465
    const-string v1, ",rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    const-string v1, ",scan cache size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    :cond_7
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1157
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1158
    if-eqz p1, :cond_0

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 1159
    new-instance p1, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$QyP0aXhFuWtm7lmBu1IY3qbfmBA;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$QyP0aXhFuWtm7lmBu1IY3qbfmBA;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1164
    return-void
.end method

.method public update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 4

    .line 1113
    nop

    .line 1114
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 1115
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/wifi/AccessPoint;->isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1116
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_0

    .line 1117
    move v1, v2

    goto :goto_0

    .line 1116
    :cond_0
    nop

    .line 1117
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eq v3, p1, :cond_1

    .line 1121
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 1123
    :cond_1
    iget p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    if-eq p1, v3, :cond_2

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    const/16 v3, -0x7f

    if-eq p1, v3, :cond_2

    .line 1124
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 1125
    nop

    .line 1130
    :goto_1
    move v1, v2

    goto :goto_2

    .line 1126
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1127
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq p1, v3, :cond_3

    .line 1128
    goto :goto_1

    .line 1130
    :cond_3
    :goto_2
    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 1131
    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_3

    .line 1132
    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_5

    .line 1133
    nop

    .line 1134
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 1135
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1137
    move v1, v2

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz p1, :cond_6

    .line 1138
    new-instance p1, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$S7H59e_8IxpVPy0V68Oc2-zX-rg;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$S7H59e_8IxpVPy0V68Oc2-zX-rg;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1144
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result p1

    if-eq v0, p1, :cond_6

    .line 1145
    new-instance p1, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$QW-1Uw0oxoaKqUtEtPO0oPvH5ng;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$QW-1Uw0oxoaKqUtEtPO0oPvH5ng;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1153
    :cond_6
    return v1
.end method

.method update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z
    .locals 1

    .line 485
    nop

    .line 486
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 487
    invoke-direct {p0, p1, p3, p4}, Lcom/android/settingslib/wifi/AccessPoint;->updateScores(Landroid/net/wifi/WifiNetworkScoreCache;J)Z

    move-result p2

    goto :goto_0

    .line 489
    :cond_0
    move p2, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->updateMetered(Landroid/net/wifi/WifiNetworkScoreCache;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method
