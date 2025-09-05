.class Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;
.super Landroid/os/AsyncTask;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EraseEsimAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;->mPackageName:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 87
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 103
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;->mContext:Landroid/content/Context;

    const v0, 0x7f120b2d    # @string/reset_network_complete_toast 'Network settings have been reset'

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 107
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120b2a    # @string/reset_esim_error_title 'Cant’t reset eSIMs'

    .line 108
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120b29    # @string/reset_esim_error_msg 'The eSIMs can’tt be reset due to an error.'

    .line 109
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a    # @android:string/ok

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 113
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
