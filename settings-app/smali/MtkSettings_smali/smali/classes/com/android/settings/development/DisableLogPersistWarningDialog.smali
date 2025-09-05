.class public Lcom/android/settings/development/DisableLogPersistWarningDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "DisableLogPersistWarningDialog.java"

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

.method public static show(Lcom/android/settings/development/LogPersistDialogHost;)V
    .locals 3

    .line 36
    instance-of v0, p0, Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 37
    return-void

    .line 39
    :cond_0
    check-cast p0, Landroid/app/Fragment;

    .line 40
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 41
    const-string v1, "DisableLogPersistDlg"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 42
    new-instance v1, Lcom/android/settings/development/DisableLogPersistWarningDialog;

    invoke-direct {v1}, Lcom/android/settings/development/DisableLogPersistWarningDialog;-><init>()V

    .line 44
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/development/DisableLogPersistWarningDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 45
    const-string p0, "DisableLogPersistDlg"

    invoke-virtual {v1, v0, p0}, Lcom/android/settings/development/DisableLogPersistWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 47
    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 51
    const/16 v0, 0x4c9

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/development/DisableLogPersistWarningDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/LogPersistDialogHost;

    .line 67
    if-nez p1, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 71
    invoke-interface {p1}, Lcom/android/settings/development/LogPersistDialogHost;->onDisableLogPersistDialogConfirmed()V

    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {p1}, Lcom/android/settings/development/LogPersistDialogHost;->onDisableLogPersistDialogRejected()V

    .line 75
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 56
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/DisableLogPersistWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    const v0, 0x7f120518    # @string/dev_logpersist_clear_warning_title 'Clear logger persistent storage?'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 58
    const v0, 0x7f120517    # @string/dev_logpersist_clear_warning_message 'When we no longer are monitoring with the persistent logger, we are required to erase the logger dat ...'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 59
    const v0, 0x1040013    # @android:string/yes

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 60
    const v0, 0x1040009    # @android:string/no

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 56
    return-object p1
.end method
