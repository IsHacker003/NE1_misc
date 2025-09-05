.class Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;
.super Landroid/os/Handler;
.source "SmartCallFwdFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/sim/SmartCallFwdFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private handleGetCfResp(Landroid/os/Bundle;)V
    .locals 3

    .line 723
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCfResp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "simId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reason"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phnum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "phnum"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-string v0, "simId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 729
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v1

    aget-object v1, v1, v0

    const-string v2, "status"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->status:I

    .line 731
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v1

    aget-object v1, v1, v0

    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->reason:I

    .line 732
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v1

    aget-object v1, v1, v0

    const-string v2, "phnum"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->phnum:Ljava/lang/String;

    .line 733
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v1

    aget-object v1, v1, v0

    const-string v2, "callwait"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->callwait:I

    .line 734
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v1

    aget-object v1, v1, v0

    const-string v2, "err"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->error:I

    .line 736
    :cond_0
    const/4 p1, 0x1

    if-nez v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v0, p1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$100(Lcom/mediatek/settings/sim/SmartCallFwdFragment;I)V

    goto :goto_0

    .line 738
    :cond_1
    if-ne v0, p1, :cond_2

    .line 739
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {p1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$1800(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)V

    .line 741
    :cond_2
    :goto_0
    return-void
.end method

.method private handleSetCfResp(Landroid/os/Bundle;)V
    .locals 4

    .line 618
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCfResp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "simId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phnum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "phnum"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "err"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "action"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callwait: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "callwait"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrSelectedMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$200(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v0, "err"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 627
    const-string v1, "simId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 628
    iget-object v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v2

    aget-object v2, v2, v1

    const-string v3, "status"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->status:I

    .line 629
    iget-object v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v2

    aget-object v2, v2, v1

    const-string v3, "phnum"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->phnum:Ljava/lang/String;

    .line 630
    iget-object v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v2

    aget-object v2, v2, v1

    const-string v3, "callwait"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->callwait:I

    .line 631
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {p1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object p1

    aget-object p1, p1, v1

    iput v0, p1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->error:I

    .line 632
    const/4 p1, -0x1

    if-ne v0, p1, :cond_0

    .line 633
    const-string p1, "SmartCallFwdFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 634
    :cond_0
    if-lez v0, :cond_1

    .line 635
    const-string p1, "SmartCallFwdFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set cf failed on sim"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 637
    :cond_1
    const-string p1, "SmartCallFwdFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set cf success on sim"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :goto_0
    if-nez v1, :cond_2

    .line 640
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    invoke-static {p1, v1, v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$400(Lcom/mediatek/settings/sim/SmartCallFwdFragment;II)V

    goto :goto_1

    .line 642
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->updateSetCfStatus()V

    .line 644
    :goto_1
    return-void
.end method

.method private updateSetCfStatus()V
    .locals 7

    .line 648
    const-string v0, ""

    .line 650
    nop

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[SIM1]:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->error:I

    const v3, 0x7f120930    # @string/network_error 'Network or Sim card reading error'

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v1, v4, :cond_0

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->error:I

    if-lez v1, :cond_1

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nCallForward: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$500(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v6}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v6

    aget-object v6, v6, v2

    iget v6, v6, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed.\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    if-nez v1, :cond_2

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CallForward: disabled.\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 663
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CallForward: enabled.\nIf SIM1 unreachable,incoming calls will be forwarded to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    .line 664
    invoke-static {v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$600(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nCallWaiting: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v0

    aget-object v0, v0, v2

    iget v0, v0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->callwait:I

    if-ne v0, v5, :cond_3

    const-string v0, "enabled"

    goto :goto_1

    :cond_3
    const-string v0, "disabled"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on SIM2"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$200(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)I

    move-result v1

    const/4 v6, 0x2

    if-eq v1, v6, :cond_4

    .line 669
    nop

    .line 673
    move v2, v5

    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n[SIM2]:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v1

    aget-object v1, v1, v5

    iget v1, v1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->error:I

    if-ne v1, v4, :cond_5

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 676
    :cond_5
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v1

    aget-object v1, v1, v5

    iget v1, v1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->error:I

    if-lez v1, :cond_6

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CallForward: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$500(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v3}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v3

    aget-object v3, v3, v5

    iget v3, v3, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed.\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 680
    :cond_6
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v1

    aget-object v1, v1, v5

    iget v1, v1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    if-nez v1, :cond_7

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CallForward: disabled.\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 683
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CallForward: enabled.\nIf SIM2 unreachable,incoming calls will be forwarded to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    .line 684
    invoke-static {v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$700(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nCallWaiting: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    move-result-object v0

    aget-object v0, v0, v5

    iget v0, v0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->callwait:I

    if-ne v0, v5, :cond_8

    const-string v0, "enabled"

    goto :goto_4

    :cond_8
    const-string v0, "disabled"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on SIM1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$200(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)I

    move-result v1

    if-eq v1, v5, :cond_9

    .line 689
    or-int/lit8 v2, v2, 0x2

    .line 692
    :cond_9
    :goto_5
    const-string v1, "SmartCallFwdFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "successMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const-string v1, "SmartCallFwdFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPrevSelectedMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v4}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$800(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    if-lez v2, :cond_a

    .line 695
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$900(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 696
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$900(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v3}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$1000(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Ljava/lang/String;

    move-result-object v3

    sub-int/2addr v2, v5

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 698
    :cond_a
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$1100(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 699
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1, v5}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$1202(Lcom/mediatek/settings/sim/SmartCallFwdFragment;Z)Z

    .line 700
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$1300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 701
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$700(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 703
    :cond_b
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$1400(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    .line 704
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$600(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 706
    :cond_c
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$1500(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$1100(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 708
    :cond_d
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    iget-object v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$800(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$202(Lcom/mediatek/settings/sim/SmartCallFwdFragment;I)I

    .line 709
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$900(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$200(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 710
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$900(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$1000(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v3}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$200(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)I

    move-result v3

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 712
    :goto_6
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$1600(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 713
    const-string v1, "SmartCallFwdFragment"

    const-string v2, "Updating complete:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$1600(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 715
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$1602(Lcom/mediatek/settings/sim/SmartCallFwdFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 717
    :cond_e
    const-string v1, "SmartCallFwdFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-virtual {v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ab2    # @string/progress_dlg_title 'Dual SIM always on'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 719
    iget-object v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {v2, v1, v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$1700(Lcom/mediatek/settings/sim/SmartCallFwdFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 597
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 598
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 599
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 613
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 606
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->handleSetCfResp(Landroid/os/Bundle;)V

    .line 607
    goto :goto_0

    .line 603
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->handleGetCfResp(Landroid/os/Bundle;)V

    .line 604
    goto :goto_0

    .line 609
    :pswitch_3
    const-string p1, "SmartCallFwdFragment"

    const-string v0, "Service has started"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$100(Lcom/mediatek/settings/sim/SmartCallFwdFragment;I)V

    .line 611
    goto :goto_0

    .line 601
    :pswitch_4
    nop

    .line 615
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
