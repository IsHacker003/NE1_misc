.class Lcom/android/settings/SetFullBackupPassword$1;
.super Ljava/lang/Object;
.source "SetFullBackupPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetFullBackupPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SetFullBackupPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/SetFullBackupPassword;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 42
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    iget-object p1, p1, Lcom/android/settings/SetFullBackupPassword;->mCurrentPw:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings/SetFullBackupPassword;->mNewPw:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    iget-object v1, v1, Lcom/android/settings/SetFullBackupPassword;->mConfirmNewPw:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 48
    const-string p1, "SetFullBackupPassword"

    const-string v0, "password mismatch"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    const v0, 0x7f1207e6    # @string/local_backup_password_toast_confirmation_mismatch 'New password and confirmation don’t match'

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 52
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    invoke-static {v1, p1, v0}, Lcom/android/settings/SetFullBackupPassword;->access$000(Lcom/android/settings/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    const-string p1, "SetFullBackupPassword"

    const-string v0, "password set successfully"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    const v0, 0x7f1207e7    # @string/local_backup_password_toast_success 'New backup password set'

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 63
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    invoke-virtual {p1}, Lcom/android/settings/SetFullBackupPassword;->finish()V

    goto :goto_0

    .line 66
    :cond_1
    const-string p1, "SetFullBackupPassword"

    const-string v0, "failure; password mismatch?"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    const v0, 0x7f1207e8    # @string/local_backup_password_toast_validation_failure 'Failure setting backup password'

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 71
    :goto_0
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 72
    iget-object p1, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    invoke-virtual {p1}, Lcom/android/settings/SetFullBackupPassword;->finish()V

    goto :goto_1

    .line 74
    :cond_3
    const-string p1, "SetFullBackupPassword"

    const-string v0, "Click on unknown view"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_1
    return-void
.end method
