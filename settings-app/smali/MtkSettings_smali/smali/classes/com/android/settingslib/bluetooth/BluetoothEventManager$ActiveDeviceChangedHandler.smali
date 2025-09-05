.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveDeviceChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V
    .locals 0

    .line 451
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 454
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 455
    if-nez p1, :cond_0

    .line 456
    const-string p1, "BluetoothEventManager"

    const-string p2, "ActiveDeviceChangedHandler: action is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void

    .line 459
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    .line 460
    nop

    .line 461
    const-string p3, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 462
    const/4 p1, 0x2

    goto :goto_0

    .line 463
    :cond_1
    const-string p3, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 464
    const/4 p1, 0x1

    goto :goto_0

    .line 465
    :cond_2
    const-string p3, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 466
    const/16 p1, 0x15

    .line 471
    :goto_0
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p3, p2, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$1900(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    .line 472
    return-void

    .line 468
    :cond_3
    const-string p2, "BluetoothEventManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ActiveDeviceChangedHandler: unknown action "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void
.end method
