.class public Lcom/android/settings/wifi/WifiInfoPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiIpAddressPref:Landroid/support/v7/preference/Preference;

.field private mWifiMacAddressPref:Landroid/support/v7/preference/Preference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 128
    new-instance p1, Lcom/android/settings/wifi/WifiInfoPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WifiInfoPreferenceController$1;-><init>(Lcom/android/settings/wifi/WifiInfoPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    iget-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 63
    iput-object p3, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 64
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mFilter:Landroid/content/IntentFilter;

    .line 65
    iget-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string p3, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string p3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 69
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 85
    const-string v0, "mac_address"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroid/support/v7/preference/Preference;

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 87
    const-string v0, "current_ip_address"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiIpAddressPref:Landroid/support/v7/preference/Preference;

    .line 88
    iget-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiIpAddressPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 89
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiInfoPreferenceController;->updateWifiInfo()V

    .line 95
    return-void
.end method

.method public updateWifiInfo()V
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroid/support/v7/preference/Preference;

    const v1, 0x7f120d09    # @string/status_unavailable 'Unavailable'

    if-eqz v0, :cond_4

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_connected_mac_randomization_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 107
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    const-string v3, "mtk81234"

    if-nez v0, :cond_1

    const-string v4, "macAddress = null"

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 111
    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const-string v2, "02:00:00:00:00:00"

    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroid/support/v7/preference/Preference;

    const v2, 0x7f1210ef    # @string/wifi_status_mac_randomized 'MAC is randomized'

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 115
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-interface {v3, v0, v4}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeMacAddressString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiIpAddressPref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_6

    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v2, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiIpAddressPref:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_5

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 124
    :cond_5
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_3
    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    :cond_6
    return-void
.end method
