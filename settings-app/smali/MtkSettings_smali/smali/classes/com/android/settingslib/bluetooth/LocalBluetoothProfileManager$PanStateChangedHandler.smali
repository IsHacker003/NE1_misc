.class Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;
.super Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 469
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 473
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    check-cast v0, Lcom/android/settingslib/bluetooth/PanProfile;

    .line 474
    const-string v1, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 475
    invoke-virtual {v0, p3, v1}, Lcom/android/settingslib/bluetooth/PanProfile;->setLocalRole(Landroid/bluetooth/BluetoothDevice;I)V

    .line 476
    const-string v0, "LocalBluetoothProfileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pan profile state change, role is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 478
    return-void
.end method
