.class public Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;
.source "WifiMacAddressPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mWifiMacAddressPreference:Landroid/support/v7/preference/Preference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 49
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 50
    iget-object p1, p0, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 51
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 61
    const-string v0, "wifi_mac_address"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;->mWifiMacAddressPreference:Landroid/support/v7/preference/Preference;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;->updateConnectivity()V

    .line 63
    return-void
.end method

.method public isAvailable()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050042    # @bool/config_show_wifi_mac_address 'true'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method protected updateConnectivity()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connected_mac_randomization_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 72
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    const-string v2, "mtk81234"

    if-nez v0, :cond_1

    const-string v3, "deviceinfo macAddress = null"

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceinfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v2, p0, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;->mWifiMacAddressPreference:Landroid/support/v7/preference/Preference;

    if-nez v2, :cond_2

    .line 75
    return-void

    .line 77
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f120d09    # @string/status_unavailable 'Unavailable'

    if-eqz v2, :cond_3

    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;->mWifiMacAddressPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 79
    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    iget-object v0, p0, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;->mWifiMacAddressPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f1210ef    # @string/wifi_status_mac_randomized 'MAC is randomized'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 82
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;->mWifiMacAddressPreference:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-interface {v2, v0, v3}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeMacAddressString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    :goto_2
    return-void
.end method
