.class public Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;
.super Landroid/app/DialogFragment;
.source "ConfirmDeviceCredentialBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LastTryDialog"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 394
    const-class v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 393
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static show(Landroid/app/FragmentManager;Ljava/lang/String;IIZ)Z
    .locals 2

    .line 403
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;

    .line 404
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    const/4 p0, 0x0

    return p0

    .line 407
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 408
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string p1, "message"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 410
    const-string p1, "button"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 411
    const-string p1, "dismiss"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 413
    new-instance p1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;

    invoke-direct {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;-><init>()V

    .line 414
    invoke-virtual {p1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 415
    sget-object p2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 417
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 437
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "button"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 441
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 442
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 443
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 448
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "dismiss"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 452
    :cond_0
    return-void
.end method
