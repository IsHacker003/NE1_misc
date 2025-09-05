.class public final Lcom/android/settings/bluetooth/BluetoothPermissionRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionRequest.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field mRequestType:I

.field mReturnClass:Ljava/lang/String;

.field mReturnPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 59
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    return-void
.end method

.method private checkUserChoice()Z
    .locals 8

    .line 219
    nop

    .line 222
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-eq v0, v1, :cond_0

    .line 226
    return v3

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 230
    nop

    .line 231
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    .line 232
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    .line 233
    if-nez v6, :cond_1

    .line 234
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v6

    .line 235
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 234
    invoke-virtual {v5, v6, v0, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    .line 238
    :cond_1
    nop

    .line 240
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v5, 0x1

    if-ne v0, v4, :cond_5

    .line 241
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v0

    .line 243
    if-nez v0, :cond_2

    goto :goto_1

    .line 245
    :cond_2
    if-ne v0, v5, :cond_3

    .line 246
    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 247
    nop

    .line 254
    :goto_0
    move v3, v5

    goto :goto_1

    .line 248
    :cond_3
    if-ne v0, v4, :cond_4

    .line 249
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 250
    goto :goto_0

    .line 252
    :cond_4
    const-string v1, "BluetoothPermissionRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad phonebookPermission: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_1
    goto :goto_5

    :cond_5
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-ne v0, v2, :cond_9

    .line 255
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v0

    .line 257
    if-nez v0, :cond_6

    goto :goto_3

    .line 259
    :cond_6
    if-ne v0, v5, :cond_7

    .line 260
    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 261
    nop

    .line 268
    :goto_2
    move v3, v5

    goto :goto_3

    .line 262
    :cond_7
    if-ne v0, v4, :cond_8

    .line 263
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 264
    goto :goto_2

    .line 266
    :cond_8
    const-string v1, "BluetoothPermissionRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad messagePermission: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_3
    goto :goto_5

    :cond_9
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-ne v0, v1, :cond_d

    .line 269
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result v0

    .line 271
    if-nez v0, :cond_a

    goto :goto_5

    .line 273
    :cond_a
    if-ne v0, v5, :cond_b

    .line 274
    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 275
    nop

    .line 284
    :goto_4
    move v3, v5

    goto :goto_5

    .line 276
    :cond_b
    if-ne v0, v4, :cond_c

    .line 277
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    .line 278
    goto :goto_4

    .line 280
    :cond_c
    const-string v1, "BluetoothPermissionRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad simPermission: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_d
    :goto_5
    return v3
.end method

.method private getNotificationTag(I)Ljava/lang/String;
    .locals 1

    .line 203
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 204
    const-string p1, "Phonebook Access"

    return-object p1

    .line 205
    :cond_0
    iget p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 206
    const-string p1, "Message Access"

    return-object p1

    .line 207
    :cond_1
    iget p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 208
    const-string p1, "SIM Access"

    return-object p1

    .line 210
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private sendReplyIntentToReceiver(Z)V
    .locals 3

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    :cond_0
    const-string v1, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    .line 295
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 296
    :cond_1
    const/4 p1, 0x2

    .line 294
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 298
    const-string p1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 300
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 64
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x1080080    # @android:drawable/stat_sys_data_bluetooth

    const/4 v3, 0x2

    if-eqz v1, :cond_6

    .line 70
    const-string v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 72
    invoke-virtual {v1}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 78
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v4, 0x1

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 80
    const-string v1, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 81
    const-string v1, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->checkUserChoice()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 98
    return-void

    .line 101
    :cond_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    const-class v0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    const/high16 v0, 0x18000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    const-string v0, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v0, "android.bluetooth.device.extra.CLASS_NAME"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_2
    move-object v0, v1

    :goto_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    .line 118
    :cond_3
    nop

    .line 119
    nop

    .line 120
    const-string v5, "power"

    .line 121
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 123
    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 124
    invoke-static {p1, v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 133
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    const-string v1, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v5, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v1}, Lcom/android/settings/bluetooth/Utils;->createRemoteName(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 139
    iget v5, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .line 156
    const v5, 0x7f120280    # @string/bluetooth_connection_permission_request 'Bluetooth connection request'

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 157
    const v7, 0x7f12027e    # @string/bluetooth_connection_dialog_text 'Do you want to connect to "%1$s"?'

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v1, v8, v6

    aput-object v1, v8, v4

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 151
    :pswitch_0
    const v5, 0x7f120317    # @string/bluetooth_sap_request 'SIM access request'

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 152
    const v7, 0x7f120314    # @string/bluetooth_sap_acceptance_dialog_text '%1$s wants to access your SIM card. Granting access to the SIM card will disable data connectivity o ...'

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v1, v8, v6

    aput-object v1, v8, v4

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 154
    goto :goto_1

    .line 146
    :pswitch_1
    const v5, 0x7f1202c9    # @string/bluetooth_map_request 'Message access request'

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 147
    const v7, 0x7f1202c6    # @string/bluetooth_map_acceptance_dialog_text '%1$s wants to access your messages. Give access to %2$s?'

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v1, v8, v6

    aput-object v1, v8, v4

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 149
    goto :goto_1

    .line 141
    :pswitch_2
    const v5, 0x7f1202f3    # @string/bluetooth_phonebook_request 'Phone book access request'

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 142
    const v7, 0x7f1202f1    # @string/bluetooth_pb_acceptance_dialog_text '%1$s wants to access your contacts and call history. Give access to %2$s?'

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v1, v8, v6

    aput-object v1, v8, v4

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 144
    nop

    .line 161
    :goto_1
    const-string v7, "notification"

    .line 162
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 163
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mNotificationChannel:Landroid/app/NotificationChannel;

    if-nez v8, :cond_5

    .line 164
    new-instance v8, Landroid/app/NotificationChannel;

    const-string v9, "bluetooth_notification_channel"

    const v10, 0x7f120259    # @string/bluetooth 'Bluetooth'

    .line 165
    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-direct {v8, v9, v10, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 167
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v7, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 169
    :cond_5
    new-instance v8, Landroid/app/Notification$Builder;

    const-string v9, "bluetooth_notification_channel"

    invoke-direct {v8, p1, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 172
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 173
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 175
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 176
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, -0x1

    .line 178
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 179
    invoke-static {p1, v6, p2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 181
    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    const v0, 0x1060156    # @android:color/system_notification_accent_color

    .line 182
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 184
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 187
    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p1, Landroid/app/Notification;->flags:I

    .line 189
    iget p2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->getNotificationTag(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2, v2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 192
    :goto_2
    goto :goto_3

    :cond_6
    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    const-string v0, "notification"

    .line 195
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 196
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 198
    iget p2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->getNotificationTag(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 200
    :cond_7
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
