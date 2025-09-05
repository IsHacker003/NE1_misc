.class public Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InvalidBatteryReceiver.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNotificationChannel:Landroid/app/NotificationChannel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    const-string v0, "InvalidBatteryReceiver"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 28
    iput-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;->mContext:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;->mContext:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "flag"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 33
    const-string v3, "fih.action.invalidbattery"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-nez p1, :cond_2

    .line 35
    const-string p1, "persist.sys.invalid.battery.activity"

    const-string p2, "0"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 39
    iget-object p2, p0, Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    goto :goto_0

    :cond_0
    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 41
    new-instance p1, Landroid/content/Intent;

    const-string p2, "fih.action.invalidbattery"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    const-string p2, "flag"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    iget-object p2, p0, Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 45
    :cond_1
    :goto_0
    goto :goto_1

    .line 46
    :cond_2
    const-string p1, "flag"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;->updateInvalidBatteryNotification(Z)V

    .line 49
    :cond_3
    :goto_1
    return-void
.end method

.method public updateInvalidBatteryNotification(Z)V
    .locals 7

    .line 52
    iget-object v0, p0, Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 54
    if-nez v0, :cond_0

    .line 55
    return-void

    .line 59
    :cond_0
    const-string v1, "persist.sys.invalid.battery.notify"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    const/16 v2, 0x6a

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 61
    const-string p1, "persist.sys.invalid.battery.notify"

    const-string v1, "1"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 64
    const v1, 0x7f12120b    # @string/zzz_fih_invalid_battery_charging 'Genuine batteries recommended, unapproved batteries may cause unexpected hazards such as fire or exp ...'

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 65
    iget-object v4, p0, Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;->mNotificationChannel:Landroid/app/NotificationChannel;

    if-nez v4, :cond_1

    .line 66
    new-instance v4, Landroid/app/NotificationChannel;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    const v6, 0x7f12062b    # @string/fih_invalid_battery_title 'Warning'

    .line 67
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x4

    invoke-direct {v4, v5, p1, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v4, p0, Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 68
    iget-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 70
    :cond_1
    new-instance p1, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    invoke-direct {p1, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x108079b    # @android:drawable/stat_sys_battery

    .line 72
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const-wide/16 v4, 0x0

    .line 73
    invoke-virtual {p1, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 74
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v5, 0x0

    .line 75
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v5, p0, Lcom/android/settings/deviceinfo/InvalidBatteryReceiver;->mContext:Landroid/content/Context;

    const v6, 0x1060156    # @android:color/system_notification_accent_color

    .line 77
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 78
    invoke-virtual {v5, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 79
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 80
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 82
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v2, p1, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 83
    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 84
    const-string p1, "persist.sys.invalid.battery.notify"

    const-string v1, "0"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 87
    :cond_3
    :goto_0
    return-void
.end method
