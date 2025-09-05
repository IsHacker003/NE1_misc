.class Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;
.super Ljava/lang/Object;
.source "RemoveAccountPreferenceController.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    invoke-virtual {v0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x1

    .line 164
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "booleanResult"

    .line 165
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 166
    const/4 p1, 0x0

    .line 174
    move v0, p1

    :cond_1
    :goto_0
    goto :goto_1

    .line 172
    :catch_0
    move-exception p1

    goto :goto_1

    .line 170
    :catch_1
    move-exception p1

    goto :goto_0

    .line 168
    :catch_2
    move-exception p1

    goto :goto_0

    .line 175
    :goto_1
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    invoke-virtual {p1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 176
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;->this$0:Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    invoke-virtual {p1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->show(Landroid/app/Fragment;)V

    goto :goto_2

    .line 179
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 181
    :goto_2
    return-void
.end method
