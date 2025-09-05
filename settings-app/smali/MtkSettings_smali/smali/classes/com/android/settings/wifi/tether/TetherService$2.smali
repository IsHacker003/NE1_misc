.class Lcom/android/settings/wifi/tether/TetherService$2;
.super Landroid/content/BroadcastReceiver;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/TetherService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/TetherService;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 349
    invoke-static {}, Lcom/android/settings/wifi/tether/TetherService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "TetherService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got provision result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1040159    # @android:string/config_packagedKeyboardName

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 354
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->access$100(Lcom/android/settings/wifi/tether/TetherService;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 355
    const-string p1, "TetherService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected provision response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void

    .line 358
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->access$300(Lcom/android/settings/wifi/tether/TetherService;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/TetherService;->access$200(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 359
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/tether/TetherService;->access$102(Lcom/android/settings/wifi/tether/TetherService;Z)Z

    .line 360
    const-string v0, "EntitlementResult"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 361
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 362
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 367
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/TetherService;->access$500(Lcom/android/settings/wifi/tether/TetherService;)V

    .line 368
    goto :goto_0

    .line 370
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/TetherService;->access$600(Lcom/android/settings/wifi/tether/TetherService;)V

    goto :goto_0

    .line 364
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/TetherService;->access$400(Lcom/android/settings/wifi/tether/TetherService;)V

    .line 365
    nop

    .line 374
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0, p1, p2}, Lcom/android/settings/wifi/tether/TetherService;->access$700(Lcom/android/settings/wifi/tether/TetherService;II)V

    .line 376
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->access$204(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p2}, Lcom/android/settings/wifi/tether/TetherService;->access$300(Lcom/android/settings/wifi/tether/TetherService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p1, p2, :cond_3

    .line 378
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/TetherService;->stopSelf()V

    goto :goto_1

    .line 381
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    iget-object p2, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p2}, Lcom/android/settings/wifi/tether/TetherService;->access$200(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/wifi/tether/TetherService;->access$800(Lcom/android/settings/wifi/tether/TetherService;I)V

    .line 384
    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
