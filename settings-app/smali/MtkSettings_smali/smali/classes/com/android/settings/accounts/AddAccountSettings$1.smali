.class Lcom/android/settings/accounts/AddAccountSettings$1;
.super Ljava/lang/Object;
.source "AddAccountSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AddAccountSettings;
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
.field final synthetic this$0:Lcom/android/settings/accounts/AddAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AddAccountSettings;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 92
    const-string v0, "AddAccountSettings"

    const-string v1, "callback called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/accounts/AddAccountSettings;->access$002(Lcom/android/settings/accounts/AddAccountSettings;Z)Z

    .line 94
    nop

    .line 96
    const/4 v0, 0x2

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 98
    const-string v2, "intent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 99
    if-eqz v2, :cond_0

    .line 100
    const/4 v1, 0x0

    .line 101
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 102
    const-string v4, "pendingIntent"

    iget-object v5, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v5}, Lcom/android/settings/accounts/AddAccountSettings;->access$100(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    const-string v4, "hasMultipleUsers"

    iget-object v5, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    .line 104
    invoke-static {v5}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v5

    .line 103
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    const-string v4, "android.intent.extra.USER"

    iget-object v5, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v5}, Lcom/android/settings/accounts/AddAccountSettings;->access$200(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 107
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    iget-object v3, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    iget-object v4, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AddAccountSettings;->access$200(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v0, v4}, Lcom/android/settings/accounts/AddAccountSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    .line 109
    goto :goto_0

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 111
    iget-object v2, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v2}, Lcom/android/settings/accounts/AddAccountSettings;->access$100(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v2}, Lcom/android/settings/accounts/AddAccountSettings;->access$100(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 113
    iget-object v2, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/accounts/AddAccountSettings;->access$102(Lcom/android/settings/accounts/AddAccountSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 117
    :cond_1
    :goto_0
    const-string v2, "AddAccountSettings"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AddAccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_2
    if-eqz v1, :cond_6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 122
    :catch_0
    move-exception p1

    .line 123
    :try_start_1
    const-string v2, "AddAccountSettings"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AddAccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccount failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3
    if-eqz v1, :cond_6

    goto :goto_1

    .line 120
    :catch_1
    move-exception p1

    .line 121
    const-string v2, "AddAccountSettings"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "AddAccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccount failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_4
    if-eqz v1, :cond_6

    goto :goto_1

    .line 118
    :catch_2
    move-exception p1

    .line 119
    const-string p1, "AddAccountSettings"

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "AddAccountSettings"

    const-string v0, "addAccount was canceled"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :cond_5
    if-eqz v1, :cond_6

    .line 126
    :goto_1
    iget-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {p1}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    .line 129
    :cond_6
    return-void

    .line 125
    :goto_2
    if-eqz v1, :cond_7

    .line 126
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    :cond_7
    throw p1
.end method
