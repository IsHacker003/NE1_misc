.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;
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
    name = "AudioModeChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V
    .locals 0

    .line 485
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 489
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 490
    if-nez p1, :cond_0

    .line 491
    const-string p1, "BluetoothEventManager"

    const-string p2, "AudioModeChangedHandler() action is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void

    .line 494
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->access$2000(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    .line 495
    return-void
.end method
