.class Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$2;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 842
    iget-object p2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    .line 843
    invoke-virtual {p2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .line 844
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->access$1500(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 845
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 846
    return-void
.end method
