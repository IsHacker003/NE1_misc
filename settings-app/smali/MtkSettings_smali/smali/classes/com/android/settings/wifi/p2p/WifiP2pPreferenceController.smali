.class public Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiP2pPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiDirectPref:Landroid/support/v7/preference/Preference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance p1, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mFilter:Landroid/content/IntentFilter;

    .line 57
    iput-object p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 58
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->togglePreferences()V

    return-void
.end method

.method private togglePreferences()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiDirectPref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiDirectPref:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 64
    const-string v0, "wifi_direct"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiDirectPref:Landroid/support/v7/preference/Preference;

    .line 65
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->togglePreferences()V

    .line 66
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 85
    const-string v0, "wifi_direct"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    return-void
.end method
