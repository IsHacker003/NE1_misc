.class public Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "DeviceNameWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;)V
    .locals 3

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 39
    const-string v1, "DeviceNameWarningDlg"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    return-void

    .line 43
    :cond_0
    new-instance v1, Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;

    invoke-direct {v1}, Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;-><init>()V

    .line 44
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 45
    const-string p0, "DeviceNameWarningDlg"

    invoke-virtual {v1, v0, p0}, Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 50
    const/16 v0, 0x4c3

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

    .line 67
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->onSetDeviceNameConfirm()V

    .line 70
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 55
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    const v0, 0x7f120929    # @string/my_device_info_device_name_preference_title 'Device name'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 57
    const v0, 0x7f120035    # @string/about_phone_device_name_warning 'Your device name is visible to apps on your phone. It may also be seen by other people when you conn ...'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 59
    const v0, 0x104000a    # @android:string/ok

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 60
    const/high16 v0, 0x1040000    # @android:string/cancel

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 55
    return-object p1
.end method
