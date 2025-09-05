.class public Lcom/android/settings/development/EnableAdbWarningDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "EnableAdbWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 3

    .line 36
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 37
    const-string v1, "EnableAdbDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/android/settings/development/EnableAdbWarningDialog;

    invoke-direct {v1}, Lcom/android/settings/development/EnableAdbWarningDialog;-><init>()V

    .line 39
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/development/EnableAdbWarningDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 40
    const-string p0, "EnableAdbDialog"

    invoke-virtual {v1, v0, p0}, Lcom/android/settings/development/EnableAdbWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 46
    const/16 v0, 0x4c6

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/development/EnableAdbWarningDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/AdbDialogHost;

    .line 62
    if-nez p1, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 66
    invoke-interface {p1}, Lcom/android/settings/development/AdbDialogHost;->onEnableAdbDialogConfirmed()V

    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {p1}, Lcom/android/settings/development/AdbDialogHost;->onEnableAdbDialogDismissed()V

    .line 70
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 51
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/EnableAdbWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    const v0, 0x7f1200ac    # @string/adb_warning_title 'Allow USB debugging?'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 53
    const v0, 0x7f1200ab    # @string/adb_warning_message 'USB debugging is intended for development purposes only. Use it to copy data between your computer a ...'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 54
    const v0, 0x1040013    # @android:string/yes

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 55
    const v0, 0x1040009    # @android:string/no

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 51
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/development/EnableAdbWarningDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/AdbDialogHost;

    .line 76
    if-nez p1, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    invoke-interface {p1}, Lcom/android/settings/development/AdbDialogHost;->onEnableAdbDialogDismissed()V

    .line 80
    return-void
.end method
