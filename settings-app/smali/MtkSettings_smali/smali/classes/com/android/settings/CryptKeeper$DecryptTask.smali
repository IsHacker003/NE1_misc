.class Lcom/android/settings/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method

.method private hide(I)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0, p1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 174
    if-eqz p1, :cond_0

    .line 175
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$300(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    .line 189
    const/4 v1, 0x0

    :try_start_0
    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->decryptStorage(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 190
    :catch_0
    move-exception p1

    .line 191
    const-string v0, "CryptKeeper"

    const-string v1, "Error while decrypting..."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 171
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .line 198
    const-string v0, "CryptKeeper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failedAttempts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 202
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$400(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 204
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$400(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0a0333    # @id/status

    invoke-virtual {p1, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 207
    const v0, 0x7f120ce9    # @string/starting_android 'Starting Android…'

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 208
    const p1, 0x7f0a0255    # @id/passwordEntry

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 209
    const p1, 0x7f0a0370    # @id/switch_ime_button

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 210
    const p1, 0x7f0a01f7    # @id/lockPattern

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 211
    const p1, 0x7f0a024c    # @id/owner_info

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 212
    const p1, 0x7f0a012b    # @id/emergencyCallButton

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    .line 213
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_2

    .line 215
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.FACTORY_RESET"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    const-string v0, "android"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    const-string v0, "android.intent.extra.REASON"

    const-string v1, "CryptKeeper.MAX_FAILED_ATTEMPTS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0, p1}, Lcom/android/settings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 222
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0d006c    # @layout/crypt_keeper_progress 'res/layout/crypt_keeper_progress.xml'

    invoke-virtual {p1, v0}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 223
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/CryptKeeper;->access$500(Lcom/android/settings/CryptKeeper;Z)V

    .line 224
    return-void

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0, p1}, Lcom/android/settings/CryptKeeper;->access$000(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;)V

    .line 228
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 171
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 181
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 182
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$200(Lcom/android/settings/CryptKeeper;)V

    .line 183
    return-void
.end method
