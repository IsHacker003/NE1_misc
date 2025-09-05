.class Lcom/android/settings/CryptKeeper$4;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->setupUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field owner_info:Ljava/lang/String;

.field passwordType:I

.field password_visible:Z

.field pattern_visible:Z

.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 486
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/CryptKeeper$4;->passwordType:I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 485
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 494
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->access$300(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IStorageManager;

    move-result-object p1

    .line 495
    invoke-interface {p1}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/CryptKeeper$4;->passwordType:I

    .line 496
    const-string v0, "OwnerInfo"

    invoke-interface {p1, v0}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper$4;->owner_info:Ljava/lang/String;

    .line 497
    const-string v0, "0"

    const-string v1, "PatternVisible"

    invoke-interface {p1, v1}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper$4;->pattern_visible:Z

    .line 498
    const-string v0, "0"

    const-string v1, "PasswordVisible"

    invoke-interface {p1, v1}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper$4;->password_visible:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    goto :goto_0

    .line 499
    :catch_0
    move-exception p1

    .line 500
    const-string v0, "CryptKeeper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling mount service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 485
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 508
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {p1}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "show_password"

    .line 509
    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper$4;->password_visible:Z

    .line 508
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 511
    iget p1, p0, Lcom/android/settings/CryptKeeper$4;->passwordType:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 512
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0d006a    # @layout/crypt_keeper_pin_entry 'res/layout/crypt_keeper_pin_entry.xml'

    invoke-virtual {p1, v0}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 513
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f1205e3    # @string/enter_pin 'To start Android, enter your PIN'

    invoke-static {p1, v0}, Lcom/android/settings/CryptKeeper;->access$1202(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0

    .line 514
    :cond_0
    iget p1, p0, Lcom/android/settings/CryptKeeper$4;->passwordType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 515
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0d0068    # @layout/crypt_keeper_pattern_entry 'res/layout/crypt_keeper_pattern_entry.xml'

    invoke-virtual {p1, v0}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 516
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1, v1}, Lcom/android/settings/CryptKeeper;->access$1300(Lcom/android/settings/CryptKeeper;Z)V

    .line 517
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f1205e2    # @string/enter_pattern 'To start Android, draw your pattern'

    invoke-static {p1, v0}, Lcom/android/settings/CryptKeeper;->access$1202(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0

    .line 519
    :cond_1
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0d0066    # @layout/crypt_keeper_password_entry 'res/layout/crypt_keeper_password_entry.xml'

    invoke-virtual {p1, v0}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 520
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f1205e1    # @string/enter_password 'To start Android, enter your password'

    invoke-static {p1, v0}, Lcom/android/settings/CryptKeeper;->access$1202(Lcom/android/settings/CryptKeeper;I)I

    .line 522
    :goto_0
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0a0333    # @id/status

    invoke-virtual {p1, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 523
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$1200(Lcom/android/settings/CryptKeeper;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 525
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0a024c    # @id/owner_info

    invoke-virtual {p1, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 526
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->owner_info:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 529
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->access$1400(Lcom/android/settings/CryptKeeper;)V

    .line 532
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v2, 0x1020002    # @android:id/content

    invoke-virtual {p1, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v2, 0x400200

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 535
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 536
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object p1

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper$4;->pattern_visible:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 538
    :cond_2
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->access$1500(Lcom/android/settings/CryptKeeper;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 540
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1, v1}, Lcom/android/settings/CryptKeeper;->access$1300(Lcom/android/settings/CryptKeeper;Z)V

    .line 541
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->access$1600(Lcom/android/settings/CryptKeeper;)V

    .line 544
    :cond_3
    return-void
.end method
