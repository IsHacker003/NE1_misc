.class Lcom/android/settings/ResetNetworkConfirm$1;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/ResetNetworkConfirm$1;)Landroid/app/ProgressDialog;
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm$1;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .line 233
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {v1}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 234
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 235
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 236
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    .line 237
    invoke-virtual {v1}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1208bd    # @string/master_clear_progress_title 'Erasing'

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    .line 239
    invoke-virtual {v1}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1208bc    # @string/master_clear_progress_text 'Please wait...'

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 240
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 124
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    return-void

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {p1}, Lcom/android/settings/ResetNetworkConfirm;->access$000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/os/AsyncTask;

    move-result-object p1

    if-nez p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetworkConfirm$1$1;-><init>(Lcom/android/settings/ResetNetworkConfirm$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 228
    invoke-virtual {v0, v1}, Lcom/android/settings/ResetNetworkConfirm$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 132
    invoke-static {p1, v0}, Lcom/android/settings/ResetNetworkConfirm;->access$002(Lcom/android/settings/ResetNetworkConfirm;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 230
    :cond_1
    return-void
.end method
