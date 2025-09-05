.class Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 772
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$900(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0a015f    # @id/fingerprint_rename_field

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$502(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 774
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1000(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$600(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1000(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Ljava/lang/String;

    move-result-object p1

    .line 775
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$500(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1100(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_1

    .line 777
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$500(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1

    .line 779
    :cond_1
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$500(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1200(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1300(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 781
    :goto_1
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1400(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 782
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$900(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 784
    :cond_2
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$500(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 785
    return-void
.end method
