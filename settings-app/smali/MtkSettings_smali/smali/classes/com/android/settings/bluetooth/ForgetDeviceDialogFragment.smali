.class public Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ForgetDeviceDialogFragment.java"


# instance fields
.field private mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreateDialog$0(Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 71
    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;
    .locals 2

    .line 43
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 44
    const-string v1, "device_address"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;-><init>()V

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object p0
.end method


# virtual methods
.method getDevice(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 60
    const/16 v0, 0x407

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 65
    new-instance p1, Lcom/android/settings/bluetooth/-$$Lambda$ForgetDeviceDialogFragment$EDf2UTKPcHIZGnJUVoyf7QwuxfU;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/-$$Lambda$ForgetDeviceDialogFragment$EDf2UTKPcHIZGnJUVoyf7QwuxfU;-><init>(Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getDevice(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 74
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    const v2, 0x7f12033e    # @string/bluetooth_unpair_dialog_forget_confirm_button 'Forget device'

    invoke-virtual {v1, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 77
    const/high16 v1, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 79
    const v1, 0x7f12033f    # @string/bluetooth_unpair_dialog_title 'Forget device?'

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 80
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 81
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 80
    const v2, 0x7f12033d    # @string/bluetooth_unpair_dialog_body 'Your phone will no longer be paired with %1$s'

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 82
    return-object p1
.end method
