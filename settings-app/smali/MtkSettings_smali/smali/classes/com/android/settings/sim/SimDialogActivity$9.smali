.class Lcom/android/settings/sim/SimDialogActivity$9;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimDialogActivity;->setSimStateCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$9;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimHotSwap()V
    .locals 2

    .line 801
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSimHotSwap, finish Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$9;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v0}, Lcom/android/settings/sim/SimDialogActivity;->access$100(Lcom/android/settings/sim/SimDialogActivity;)V

    .line 803
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$9;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    .line 804
    return-void
.end method
