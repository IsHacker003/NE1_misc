.class Lcust/settings/sim/CustSimDialogActivity$1;
.super Ljava/lang/Object;
.source "CustSimDialogActivity.java"

# interfaces
.implements Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcust/settings/sim/CustSimDialogActivity;->registHotSwap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/sim/CustSimDialogActivity;


# direct methods
.method constructor <init>(Lcust/settings/sim/CustSimDialogActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcust/settings/sim/CustSimDialogActivity$1;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimHotSwap()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcust/settings/sim/CustSimDialogActivity$1;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    invoke-virtual {v0}, Lcust/settings/sim/CustSimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcust/settings/sim/CustSimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSimHotSwap, finish Activity~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcust/settings/sim/CustSimDialogActivity$1;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    invoke-virtual {v0}, Lcust/settings/sim/CustSimDialogActivity;->finish()V

    .line 116
    :cond_0
    return-void
.end method
