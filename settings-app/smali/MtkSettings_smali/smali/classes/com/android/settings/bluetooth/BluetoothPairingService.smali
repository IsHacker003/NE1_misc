.class public final Lcom/android/settings/bluetooth/BluetoothPairingService;
.super Landroid/app/Service;
.source "BluetoothPairingService.java"


# instance fields
.field private final mCancelReceiver:Landroid/content/BroadcastReceiver;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mRegistered:Z

    .line 75
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingService$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPairingService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public static getPairingDialogIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    .line 55
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 56
    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 58
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 59
    const-class v4, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    const-string p0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    const-string p0, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v3, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const/4 p0, 0x2

    if-eq v1, p0, :cond_0

    const/4 p0, 0x4

    if-eq v1, p0, :cond_0

    const/4 p0, 0x5

    if-ne v1, p0, :cond_1

    .line 65
    :cond_0
    const-string p0, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 67
    const-string p1, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v3, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    :cond_1
    const-string p0, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v3, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const/high16 p0, 0x10000000

    invoke-virtual {v3, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    return-object v3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 184
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 102
    const-string v0, "notification"

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 104
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "bluetooth_notification_channel"

    .line 106
    const v3, 0x7f120259    # @string/bluetooth 'Bluetooth'

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 109
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mRegistered:Z

    .line 178
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->stopForeground(Z)V

    .line 179
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    .line 113
    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 114
    const-string p1, "BluetoothPairingService"

    const-string p3, "Can\'t start: null intent!"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->stopSelf()V

    .line 116
    return p2

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 120
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "bluetooth_notification_channel"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    const v1, 0x1080080    # @android:drawable/stat_sys_data_bluetooth

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v2, 0x7f1202d1    # @string/bluetooth_notif_ticker 'Bluetooth pairing request'

    .line 123
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 124
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 126
    nop

    .line 127
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getPairingDialogIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 126
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    invoke-static {p0, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 129
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.settings.bluetooth.ACTION_DISMISS_PAIRING"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v6, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 132
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 134
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v6

    const/16 v7, 0xb

    if-eq v6, v7, :cond_1

    .line 135
    const-string p1, "BluetoothPairingService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not bonding: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->stopSelf()V

    .line 137
    return p2

    .line 140
    :cond_1
    const-string p2, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 141
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 142
    const-string p2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 143
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object p1

    .line 146
    :goto_0
    move-object p2, p1

    goto :goto_1

    .line 143
    :cond_2
    const p1, 0x104000e    # @android:string/unknownName

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 146
    :cond_3
    :goto_1
    const-string p1, "BluetoothPairingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Show pairing notification for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance p1, Landroid/app/Notification$Action$Builder;

    const v6, 0x7f12028c    # @string/bluetooth_device_context_pair_connect 'Pair & connect'

    .line 149
    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v5, v6, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    .line 150
    new-instance v6, Landroid/app/Notification$Action$Builder;

    const/high16 v7, 0x1040000    # @android:string/cancel

    .line 151
    invoke-virtual {p3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7, v4}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v4

    .line 153
    const v6, 0x7f1202d2    # @string/bluetooth_notif_title 'Pairing request'

    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x7f1202d0    # @string/bluetooth_notif_message 'Tap to pair with %1$s.'

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p2, v8, v5

    .line 154
    invoke-virtual {p3, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 155
    invoke-virtual {p2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 156
    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p2

    const p3, 0x1060156    # @android:color/system_notification_accent_color

    .line 157
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 158
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 159
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 161
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    const-string p2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string p2, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string p2, "com.android.settings.bluetooth.ACTION_DISMISS_PAIRING"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/bluetooth/BluetoothPairingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mRegistered:Z

    .line 168
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/settings/bluetooth/BluetoothPairingService;->startForeground(ILandroid/app/Notification;)V

    .line 169
    const/4 p1, 0x3

    return p1
.end method
