.class public Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiTetherUserPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final WIFI_TETHER_USER_CHANGED_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private mBlockedPrefer:Landroid/support/v7/preference/Preference;

.field private mConnectedPrefer:Landroid/support/v7/preference/Preference;

.field private final mHotspotManager:Lmediatek/net/wifi/WifiHotspotManager;

.field final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_IP_READY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->WIFI_TETHER_USER_CHANGED_FILTER:Landroid/content/IntentFilter;

    .line 59
    sget-object v0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->WIFI_TETHER_USER_CHANGED_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController$1;-><init>(Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;)V

    iput-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 66
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiHotspotManager()Lmediatek/net/wifi/WifiHotspotManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mHotspotManager:Lmediatek/net/wifi/WifiHotspotManager;

    .line 67
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->handleWifiApClientsChanged()V

    return-void
.end method

.method private handleWifiApClientsChanged()V
    .locals 6

    .line 100
    nop

    .line 101
    nop

    .line 102
    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mHotspotManager:Lmediatek/net/wifi/WifiHotspotManager;

    invoke-virtual {v0}, Lmediatek/net/wifi/WifiHotspotManager;->getHotspotClients()Ljava/util/List;

    move-result-object v0

    .line 103
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmediatek/net/wifi/HotspotClient;

    .line 105
    iget-boolean v4, v4, Lmediatek/net/wifi/HotspotClient;->isBlocked:Z

    if-eqz v4, :cond_0

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 110
    :goto_1
    goto :goto_0

    .line 112
    :cond_1
    move v2, v1

    move v3, v2

    :cond_2
    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mBlockedPrefer:Landroid/support/v7/preference/Preference;

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mBlockedPrefer:Landroid/support/v7/preference/Preference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    if-nez v2, :cond_3

    .line 115
    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mBlockedPrefer:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mBlockedPrefer:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 120
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mConnectedPrefer:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_6

    .line 121
    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mConnectedPrefer:Landroid/support/v7/preference/Preference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    if-nez v3, :cond_5

    .line 123
    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mConnectedPrefer:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mConnectedPrefer:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 128
    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 84
    const-string v0, "wifi_tether_connected_user"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mConnectedPrefer:Landroid/support/v7/preference/Preference;

    .line 85
    const-string v0, "wifi_tether_blocked_user"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mBlockedPrefer:Landroid/support/v7/preference/Preference;

    .line 86
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 78
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

    .line 96
    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->WIFI_TETHER_USER_CHANGED_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    invoke-direct {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->handleWifiApClientsChanged()V

    .line 92
    return-void
.end method
