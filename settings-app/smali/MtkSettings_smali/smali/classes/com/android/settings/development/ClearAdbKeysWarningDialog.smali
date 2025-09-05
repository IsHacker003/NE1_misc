.class public Lcom/android/settings/development/ClearAdbKeysWarningDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ClearAdbKeysWarningDialog.java"

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
    const-string v1, "ClearAdbKeysDlg"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/android/settings/development/ClearAdbKeysWarningDialog;

    invoke-direct {v1}, Lcom/android/settings/development/ClearAdbKeysWarningDialog;-><init>()V

    .line 40
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/development/ClearAdbKeysWarningDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 41
    const-string p0, "ClearAdbKeysDlg"

    invoke-virtual {v1, v0, p0}, Lcom/android/settings/development/ClearAdbKeysWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 47
    const/16 v0, 0x4c7

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/development/ClearAdbKeysWarningDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/AdbClearKeysDialogHost;

    .line 62
    if-nez p1, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    invoke-interface {p1}, Lcom/android/settings/development/AdbClearKeysDialogHost;->onAdbClearKeysDialogConfirmed()V

    .line 66
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 52
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/ClearAdbKeysWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    const v0, 0x7f1200aa    # @string/adb_keys_warning_message 'Revoke access to USB debugging from all computers you’ve previously authorized?'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 54
    const v0, 0x104000a    # @android:string/ok

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 55
    const/high16 v0, 0x1040000    # @android:string/cancel

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 52
    return-object p1
.end method
