.class Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "CustSimDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 356
    iget-object v0, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v0, v0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 358
    invoke-static {}, Lcust/settings/sim/CustSimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---SelectAccountListAdapter onClick ---tintcolor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v0, v0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;

    iget-object v0, v0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    invoke-static {v0}, Lcust/settings/sim/CustSimDialogActivity;->access$100(Lcust/settings/sim/CustSimDialogActivity;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 360
    iget-object v1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v1, v1, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;

    iget-object v1, v1, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    invoke-static {v1}, Lcust/settings/sim/CustSimDialogActivity;->access$100(Lcust/settings/sim/CustSimDialogActivity;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionInfo;->setIconTint(I)V

    .line 361
    iget-object v1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v1, v1, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;

    iget-object v1, v1, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    invoke-static {v1}, Lcust/settings/sim/CustSimDialogActivity;->access$300(Lcust/settings/sim/CustSimDialogActivity;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/telephony/SubscriptionManager;->setIconTint(II)I

    .line 362
    iget-object p1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object p1, p1, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;

    iget-object p1, p1, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    invoke-virtual {p1}, Lcust/settings/sim/CustSimDialogActivity;->finish()V

    .line 363
    return-void
.end method
