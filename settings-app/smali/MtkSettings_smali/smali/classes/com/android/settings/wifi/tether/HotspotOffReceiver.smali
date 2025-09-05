.class public Lcom/android/settings/wifi/tether/HotspotOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotOffReceiver.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-string v0, "HotspotOffReceiver"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 30
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 31
    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    .line 32
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p2

    const/16 v0, 0xb

    if-ne p2, v0, :cond_1

    .line 33
    sget-boolean p2, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "HotspotOffReceiver"

    const-string v0, "TetherService.cancelRecheckAlarmIfNecessary called"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/wifi/tether/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 39
    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    .line 42
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->mRegistered:Z

    .line 47
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->mRegistered:Z

    .line 54
    :cond_0
    return-void
.end method
