.class public Lcom/android/settings/RemoteBugreportActivity;
.super Landroid/app/Activity;
.source "RemoteBugreportActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/RemoteBugreportActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.app.extra.bugreport_notification_type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 50
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 51
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120c45    # @string/sharing_remote_bugreport_dialog_message 'This bug report is being shared with your IT admin. Contact them for more details.'

    .line 52
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/RemoteBugreportActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/RemoteBugreportActivity$2;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    .line 53
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a    # @android:string/ok

    new-instance v1, Lcom/android/settings/RemoteBugreportActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/RemoteBugreportActivity$1;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 67
    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    const-string v0, "RemoteBugreportActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect dialog type, no dialog shown. Received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 70
    :cond_2
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120c44    # @string/share_remote_bugreport_dialog_title 'Share bug report?'

    .line 71
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 73
    if-ne p1, v0, :cond_3

    .line 74
    const p1, 0x7f120c42    # @string/share_remote_bugreport_dialog_message 'Your IT admin requested a bug report to help troubleshoot this device. Apps and data may be shared,  ...'

    goto :goto_1

    .line 75
    :cond_3
    const p1, 0x7f120c43    # @string/share_remote_bugreport_dialog_message_finished 'Your IT admin requested a bug report to help troubleshoot this device. Apps and data may be shared.'

    .line 72
    :goto_1
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/RemoteBugreportActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings/RemoteBugreportActivity$5;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    .line 76
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1204fa    # @string/decline_remote_bugreport_action 'Decline'

    new-instance v1, Lcom/android/settings/RemoteBugreportActivity$4;

    invoke-direct {v1, p0}, Lcom/android/settings/RemoteBugreportActivity$4;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120c41    # @string/share_remote_bugreport_action 'Share'

    new-instance v1, Lcom/android/settings/RemoteBugreportActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/RemoteBugreportActivity$3;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 106
    nop

    .line 109
    :goto_2
    return-void
.end method
