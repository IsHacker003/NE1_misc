.class Lcust/settings/sim/CustSimPreference$8;
.super Landroid/os/Handler;
.source "CustSimPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/sim/CustSimPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/sim/CustSimPreference;


# direct methods
.method constructor <init>(Lcust/settings/sim/CustSimPreference;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcust/settings/sim/CustSimPreference$8;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 517
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 545
    :pswitch_0
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$8;->this$0:Lcust/settings/sim/CustSimPreference;

    iget-object v0, p0, Lcust/settings/sim/CustSimPreference$8;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {v0}, Lcust/settings/sim/CustSimPreference;->access$1600(Lcust/settings/sim/CustSimPreference;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcust/settings/sim/CustSimPreference;->access$1300(Lcust/settings/sim/CustSimPreference;Landroid/app/Dialog;Z)V

    .line 547
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$8;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-virtual {p1}, Lcust/settings/sim/CustSimPreference;->update()V

    .line 548
    goto :goto_0

    .line 540
    :pswitch_1
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$8;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p1}, Lcust/settings/sim/CustSimPreference;->access$1000(Lcust/settings/sim/CustSimPreference;)V

    .line 541
    goto :goto_0

    .line 526
    :pswitch_2
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$8;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-virtual {p1}, Lcust/settings/sim/CustSimPreference;->update()V

    .line 535
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$8;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p1}, Lcust/settings/sim/CustSimPreference;->access$1500(Lcust/settings/sim/CustSimPreference;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 536
    nop

    .line 553
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
