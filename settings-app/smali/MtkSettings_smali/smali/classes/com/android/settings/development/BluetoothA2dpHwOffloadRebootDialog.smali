.class public Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothA2dpHwOffloadRebootDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog$OnA2dpHwDialogConfirmedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;)V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 39
    const-string v0, "BluetoothA2dpHwOffloadReboot"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;

    invoke-direct {v0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;-><init>()V

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 43
    const-string p0, "BluetoothA2dpHwOffloadReboot"

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 49
    const/16 v0, 0x5a1

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 66
    nop

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog$OnA2dpHwDialogConfirmedListener;

    .line 68
    if-nez p1, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 72
    invoke-interface {p1}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog$OnA2dpHwDialogConfirmedListener;->onA2dpHwDialogConfirmed()V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 74
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 76
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 54
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    const v0, 0x7f120296    # @string/bluetooth_disable_a2dp_hw_offload_dialog_message 'You need to restart your device to change this setting.'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 56
    const v0, 0x7f120297    # @string/bluetooth_disable_a2dp_hw_offload_dialog_title 'Restart Device?'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 57
    const v0, 0x7f120295    # @string/bluetooth_disable_a2dp_hw_offload_dialog_confirm 'Restart'

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 59
    const v0, 0x7f120294    # @string/bluetooth_disable_a2dp_hw_offload_dialog_cancel 'Cancel'

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 54
    return-object p1
.end method
