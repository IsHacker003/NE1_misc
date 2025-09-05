.class Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;
.super Ljava/lang/Object;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

.field final synthetic val$item:Lcom/android/settings/UserCredentialsSettings$Credential;

.field final synthetic val$myUserId:I


# direct methods
.method constructor <init>(Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;ILcom/android/settings/UserCredentialsSettings$Credential;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->this$0:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    iput p2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->val$myUserId:I

    iput-object p3, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->val$item:Lcom/android/settings/UserCredentialsSettings$Credential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 141
    iget-object p2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->this$0:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    .line 142
    invoke-virtual {p2}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "no_config_credentials"

    iget v1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->val$myUserId:I

    .line 141
    invoke-static {p2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    .line 143
    if-eqz p2, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->this$0:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 147
    :cond_0
    new-instance p2, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->this$0:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->this$0:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->this$0:Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;-><init>(Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;Landroid/content/Context;Landroid/app/Fragment;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/settings/UserCredentialsSettings$Credential;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;->val$item:Lcom/android/settings/UserCredentialsSettings$Credential;

    aput-object v2, v0, v1

    .line 148
    invoke-virtual {p2, v0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 151
    return-void
.end method
