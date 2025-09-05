.class public Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.super Landroid/app/Activity;
.source "BluetoothPairingDialog.java"


# instance fields
.field private mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    .line 43
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    return-object p0
.end method


# virtual methods
.method dismiss()V
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->finish()V

    .line 113
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 67
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 69
    nop

    .line 71
    nop

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "bluetooth.pairing.fragment"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    .line 74
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingControllerSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingDialogActivitySet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->dismiss()V

    .line 77
    const/4 p1, 0x0

    .line 80
    :cond_1
    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 81
    const/4 p1, 0x0

    .line 82
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;-><init>()V

    .line 84
    move-object v3, v1

    move v1, p1

    move-object p1, v3

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p1, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->setPairingController(Lcom/android/settings/bluetooth/BluetoothPairingController;)V

    .line 85
    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->setPairingDialogActivity(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    .line 87
    if-nez v1, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "bluetooth.pairing.fragment"

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 102
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    :cond_0
    return-void
.end method
