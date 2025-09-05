.class Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$1;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 748
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 751
    iget-object p2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .line 752
    invoke-static {p2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$500(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 753
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$600(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 754
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 755
    const-string v1, "FingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rename "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$700(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xfe

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .line 758
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$600(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    .line 756
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 759
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .line 761
    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .line 762
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$600(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$800(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;ILjava/lang/String;)V

    .line 765
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 766
    return-void
.end method
