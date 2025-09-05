.class public Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherApBandPreferenceController.java"


# static fields
.field public static final BAND_VALUES:[Ljava/lang/String;


# instance fields
.field private final mBandEntries:[Ljava/lang/String;

.field private mBandIndex:I

.field private final mBandSummaries:[Ljava/lang/String;

.field private mWifiTetherSettingsExt:Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 39
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->BAND_VALUES:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    .line 48
    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 49
    const v0, 0x7f0300a1    # @array/wifi_ap_band_config_full

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandEntries:[Ljava/lang/String;

    .line 50
    const v0, 0x7f0300a2    # @array/wifi_ap_band_summary_full

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getWifiTetherSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mWifiTetherSettingsExt:Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;

    .line 52
    return-void
.end method

.method private is5GhzBandSupported()Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getBandIndex()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    return v0
.end method

.method getConfigSummary()Ljava/lang/String;
    .locals 2

    .line 82
    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 83
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/icu/text/ListFormatter;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "wifi_tether_network_ap_band"

    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 95
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    .line 96
    const-string v0, "WifiTetherApBandPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Band preference changed, updating band index to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p1}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    .line 99
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mWifiTetherSettingsExt:Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;

    const-string v0, "wifi_tether_network_ap_band"

    invoke-interface {p1, v0, p2}, Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;->onPrefChangeNotify(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    const/4 p1, 0x1

    return p1
.end method

.method public updateDisplay()V
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 57
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58
    iput v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    .line 59
    const-string v2, "WifiTetherApBandPref"

    const-string v3, "Updating band index to 0 because no config"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    .line 62
    const-string v2, "WifiTetherApBandPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating band index to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_1
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 65
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 66
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    .line 67
    const-string v2, "WifiTetherApBandPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "5Ghz not supported, updating band index to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v2, Lcom/android/settings/widget/HotspotApBandSelectionPreference;

    .line 72
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v3

    if-nez v3, :cond_2

    .line 73
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->setEnabled(Z)V

    .line 74
    const v0, 0x7f120fc8    # @string/wifi_ap_choose_2G '2.4 GHz Band'

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->setSummary(I)V

    goto :goto_1

    .line 76
    :cond_2
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->setExistingConfigValue(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    :goto_1
    return-void
.end method
