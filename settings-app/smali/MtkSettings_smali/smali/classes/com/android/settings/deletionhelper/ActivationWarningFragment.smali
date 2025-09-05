.class public Lcom/android/settings/deletionhelper/ActivationWarningFragment;
.super Landroid/app/DialogFragment;
.source "ActivationWarningFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/android/settings/deletionhelper/ActivationWarningFragment;
    .locals 1

    .line 33
    new-instance v0, Lcom/android/settings/deletionhelper/ActivationWarningFragment;

    invoke-direct {v0}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 38
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    const v0, 0x7f12019f    # @string/automatic_storage_manager_activation_warning 'Your storage is now being managed by the storage manager'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 40
    const v0, 0x104000a    # @android:string/ok

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 38
    return-object p1
.end method
