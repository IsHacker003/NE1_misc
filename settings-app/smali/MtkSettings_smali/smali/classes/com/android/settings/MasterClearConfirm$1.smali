.class Lcom/android/settings/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/MasterClearConfirm$1;)Landroid/app/ProgressDialog;
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm$1;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .line 144
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 145
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 147
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    .line 148
    invoke-virtual {v1}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1208bd    # @string/master_clear_progress_title 'Erasing'

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    .line 150
    invoke-virtual {v1}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1208bc    # @string/master_clear_progress_text 'Please wait...'

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 151
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    return-void

    .line 90
    :cond_0
    const-string p1, "MasterClearConfirm"

    const-string v0, "enter onClick"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {p1}, Lcom/android/settings/MasterClearConfirm;->access$000(Lcom/android/settings/MasterClearConfirm;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {p1}, Lcom/android/settings/MasterClearConfirm;->access$100(Lcom/android/settings/MasterClearConfirm;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    const-string p1, "MasterClearConfirm"

    const-string v0, "show dialog for battery limit warning"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {p1}, Lcom/android/settings/MasterClearConfirm;->access$200(Lcom/android/settings/MasterClearConfirm;)V

    .line 94
    return-void

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    .line 99
    invoke-virtual {p1}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "persistent_data_block"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 100
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    .line 101
    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "oem_lock"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/oemlock/OemLockManager;

    .line 103
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    .line 104
    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    new-instance v0, Lcom/android/settings/MasterClearConfirm$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/MasterClearConfirm$1$1;-><init>(Lcom/android/settings/MasterClearConfirm$1;Landroid/service/persistentdata/PersistentDataBlockManager;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 137
    invoke-virtual {v0, p1}, Lcom/android/settings/MasterClearConfirm$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {p1}, Lcom/android/settings/MasterClearConfirm;->access$300(Lcom/android/settings/MasterClearConfirm;)V

    .line 141
    :goto_0
    return-void
.end method
