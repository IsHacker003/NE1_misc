.class public Lcom/android/settings/fuelgauge/BatterySaverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaverReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;
    }
.end annotation


# instance fields
.field private mBatterySaverListener:Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

.field private mContext:Landroid/content/Context;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 48
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mBatterySaverListener:Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mBatterySaverListener:Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;->onPowerSaveModeChanged()V

    .line 52
    :cond_0
    const-string v0, "mode"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 54
    if-eqz p2, :cond_2

    .line 56
    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    .line 57
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p2

    .line 58
    const/16 v0, 0xd

    if-eq p2, v0, :cond_1

    const/16 v0, 0xc

    if-ne p2, v0, :cond_2

    .line 60
    :cond_1
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 61
    invoke-virtual {p1, v2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 65
    :cond_2
    goto :goto_0

    :cond_3
    const-string p1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 67
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mBatterySaverListener:Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

    if-eqz p1, :cond_5

    .line 68
    const-string p1, "plugged"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    nop

    .line 69
    :cond_4
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mBatterySaverListener:Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

    invoke-interface {p1, v2}, Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;->onBatteryChanged(Z)V

    .line 72
    :cond_5
    :goto_0
    return-void
.end method

.method public setBatterySaverListener(Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mBatterySaverListener:Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

    .line 89
    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 75
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 76
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mRegistered:Z

    .line 81
    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mRegistered:Z

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mRegistered:Z

    .line 85
    :cond_1
    :goto_0
    return-void
.end method
