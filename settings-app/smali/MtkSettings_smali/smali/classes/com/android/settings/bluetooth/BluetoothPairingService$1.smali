.class Lcom/android/settings/bluetooth/BluetoothPairingService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothPairingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPairingService;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingService;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 79
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1

    .line 80
    const-string p1, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 82
    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    goto/16 :goto_0

    :cond_1
    const-string v0, "com.android.settings.bluetooth.ACTION_DISMISS_PAIRING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    const-string p1, "BluetoothPairingService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Notification cancel "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingService;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->access$000(Lcom/android/settings/bluetooth/BluetoothPairingService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingService;

    .line 87
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->access$000(Lcom/android/settings/bluetooth/BluetoothPairingService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingService;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothPairingService;->access$000(Lcom/android/settings/bluetooth/BluetoothPairingService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    goto :goto_0

    .line 90
    :cond_2
    const-string p1, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 92
    const-string p2, "BluetoothPairingService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dismiss pairing for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingService;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothPairingService;->access$000(Lcom/android/settings/bluetooth/BluetoothPairingService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingService;

    .line 93
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothPairingService;->access$000(Lcom/android/settings/bluetooth/BluetoothPairingService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), BondState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/BluetoothPairingService;->stopForeground(Z)V

    .line 96
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingService;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingService;->stopSelf()V

    .line 97
    return-void
.end method
