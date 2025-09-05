.class public Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;
    }
.end annotation


# instance fields
.field mBatteryLevel:Ljava/lang/String;

.field private mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

.field mBatteryStatus:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private updateBatteryStatus(Landroid/content/Intent;Z)V
    .locals 2

    .line 100
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    if-eqz v0, :cond_4

    .line 101
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    invoke-static {p1}, Lcom/android/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 103
    invoke-static {v1, p1}, Lcom/android/settings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 105
    if-eqz p2, :cond_0

    .line 106
    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;->onBatteryChanged(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryLevel:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 108
    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;->onBatteryChanged(I)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 110
    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;->onBatteryChanged(I)V

    .line 112
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryLevel:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryStatus:Ljava/lang/String;

    .line 114
    goto :goto_1

    :cond_3
    const-string p2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 115
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;->onBatteryChanged(I)V

    .line 118
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 79
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->updateBatteryStatus(Landroid/content/Intent;Z)V

    .line 80
    return-void
.end method

.method public register()V
    .locals 2

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->updateBatteryStatus(Landroid/content/Intent;Z)V

    .line 93
    return-void
.end method

.method public setBatteryChangedListener(Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    .line 84
    return-void
.end method

.method public unRegister()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    return-void
.end method
