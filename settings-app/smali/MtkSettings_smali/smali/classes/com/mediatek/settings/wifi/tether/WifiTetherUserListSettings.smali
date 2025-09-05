.class public Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "WifiTetherUserListSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;
    }
.end annotation


# static fields
.field private static final WIFI_TETHER_USER_CHANGED_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private mHotspotManager:Lmediatek/net/wifi/WifiHotspotManager;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_IP_READY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->WIFI_TETHER_USER_CHANGED_FILTER:Landroid/content/IntentFilter;

    .line 57
    sget-object v0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->WIFI_TETHER_USER_CHANGED_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    const-string v0, "no_config_tethering"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$1;-><init>(Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->mUserMode:I

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->updateWifiApClients()V

    return-void
.end method

.method public static synthetic lambda$updateWifiApClients$0(Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;Lmediatek/net/wifi/HotspotClient;Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 143
    new-instance p2, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;

    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->mHotspotManager:Lmediatek/net/wifi/WifiHotspotManager;

    invoke-direct {p2, p1, v0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;-><init>(Lmediatek/net/wifi/HotspotClient;Lmediatek/net/wifi/WifiHotspotManager;)V

    .line 145
    invoke-virtual {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "WifiTetherClientFragment"

    invoke-virtual {p2, p1, v0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 146
    const/4 p1, 0x1

    return p1
.end method

.method private updateWifiApClients()V
    .locals 6

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 129
    if-nez v0, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 133
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->mHotspotManager:Lmediatek/net/wifi/WifiHotspotManager;

    invoke-virtual {v2}, Lmediatek/net/wifi/WifiHotspotManager;->getHotspotClients()Ljava/util/List;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_4

    .line 136
    const-string v3, "WifiTetherUserListSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "client number is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediatek/net/wifi/HotspotClient;

    .line 138
    iget v4, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->mUserMode:I

    if-nez v4, :cond_1

    iget-boolean v4, v3, Lmediatek/net/wifi/HotspotClient;->isBlocked:Z

    if-eqz v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->mUserMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    iget-boolean v4, v3, Lmediatek/net/wifi/HotspotClient;->isBlocked:Z

    if-eqz v4, :cond_3

    .line 139
    :cond_2
    iget-object v4, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->mHotspotManager:Lmediatek/net/wifi/WifiHotspotManager;

    iget-object v5, v3, Lmediatek/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmediatek/net/wifi/WifiHotspotManager;->getClientDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    new-instance v5, Landroid/support/v7/preference/Preference;

    invoke-direct {v5, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v5, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v4, Lcom/mediatek/settings/wifi/tether/-$$Lambda$WifiTetherUserListSettings$BabsGcA9N5f4LWyL-eu1VjIQXyE;

    invoke-direct {v4, p0, v3}, Lcom/mediatek/settings/wifi/tether/-$$Lambda$WifiTetherUserListSettings$BabsGcA9N5f4LWyL-eu1VjIQXyE;-><init>(Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;Lmediatek/net/wifi/HotspotClient;)V

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 148
    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 150
    :cond_3
    goto :goto_0

    .line 152
    :cond_4
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 212
    const-string v0, "WifiTetherUserListSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 76
    const/16 v0, 0x3f6

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 124
    const/4 v0, -0x1

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 82
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 83
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiHotspotManager()Lmediatek/net/wifi/WifiHotspotManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->mHotspotManager:Lmediatek/net/wifi/WifiHotspotManager;

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 90
    if-eqz p1, :cond_0

    const-string v0, "usermode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->mUserMode:I

    .line 91
    iget p1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->mUserMode:I

    if-nez p1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    const v0, 0x7f120fd0    # @string/wifi_ap_connected_title 'Connected users'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(I)V

    goto :goto_1

    .line 93
    :cond_1
    iget p1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->mUserMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    const v0, 0x7f120fc7    # @string/wifi_ap_blocked_title 'Blocked users'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(I)V

    .line 96
    :cond_2
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 100
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    .line 101
    invoke-direct {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->updateWifiApClients()V

    .line 102
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 106
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onStart()V

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->WIFI_TETHER_USER_CHANGED_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 115
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onStop()V

    .line 116
    invoke-virtual {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    :cond_0
    return-void
.end method
