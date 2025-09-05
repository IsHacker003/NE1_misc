.class public Lcom/android/settingslib/bluetooth/BluetoothDiscoverableTimeoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDiscoverableTimeoutReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static setDiscoverableAlarm(Landroid/content/Context;J)V
    .locals 5

    .line 36
    const-string v0, "BluetoothDiscoverableTimeoutReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDiscoverableAlarm(): alarmTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.DISCOVERABLE_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    const-class v1, Lcom/android/settingslib/bluetooth/BluetoothDiscoverableTimeoutReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 42
    const-string v3, "alarm"

    .line 43
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 45
    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 48
    const-string v2, "BluetoothDiscoverableTimeoutReceiver"

    const-string v4, "setDiscoverableAlarm(): cancel prev alarm"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 53
    invoke-virtual {v3, v1, p1, p2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.bluetooth.intent.DISCOVERABLE_TIMEOUT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    .line 78
    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result p2

    const/16 v0, 0xc

    if-ne p2, v0, :cond_1

    .line 80
    const-string p2, "BluetoothDiscoverableTimeoutReceiver"

    const-string v0, "Disable discoverable..."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/16 p2, 0x15

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_0

    .line 83
    :cond_1
    const-string p1, "BluetoothDiscoverableTimeoutReceiver"

    const-string p2, "localBluetoothAdapter is NULL!!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void

    .line 75
    :cond_2
    :goto_1
    return-void
.end method
