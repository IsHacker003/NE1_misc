.class Lcom/android/settings/RadioInfo$3;
.super Landroid/os/Handler;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 363
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 395
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 388
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$2200(Lcom/android/settings/RadioInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 389
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 390
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_2

    .line 391
    iget-object p1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$2100(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "update error"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 381
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 382
    iget-object p1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$2100(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "refresh error"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$2100(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v0

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 386
    goto :goto_0

    .line 374
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 375
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_2

    .line 376
    iget-object p1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    const-string v0, "Set preferred network type failed."

    invoke-static {p1, v0}, Lcom/android/settings/RadioInfo;->access$1000(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 366
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v1, 0x0

    aget p1, p1, v1

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;I)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object p1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {}, Lcom/android/settings/RadioInfo;->access$2000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;I)V

    .line 372
    nop

    .line 399
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
