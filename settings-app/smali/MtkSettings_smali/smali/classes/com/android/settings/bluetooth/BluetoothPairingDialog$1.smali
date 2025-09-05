.class Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 47
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    const-string p1, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 50
    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    .line 54
    :cond_1
    goto :goto_0

    :cond_2
    const-string v0, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 55
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 56
    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->access$000(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->deviceEquals(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 57
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    .line 60
    :cond_4
    :goto_0
    return-void
.end method
