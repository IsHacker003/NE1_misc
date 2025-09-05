.class public Lcom/android/settings/development/OemLockInfoDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "OemLockInfoDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 2

    .line 34
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 35
    const-string v0, "OemLockInfoDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/settings/development/OemLockInfoDialog;

    invoke-direct {v0}, Lcom/android/settings/development/OemLockInfoDialog;-><init>()V

    .line 37
    const-string v1, "OemLockInfoDialog"

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/development/OemLockInfoDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 43
    const/16 v0, 0x4d6

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 48
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/OemLockInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    const v0, 0x7f1209f4    # @string/oem_lock_info_message 'Please restart the device to enable device protection feature.'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
