.class Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment$1;
.super Ljava/lang/Object;
.source "SimStatusDialogFragment.java"

# interfaces
.implements Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimHotSwap()V
    .locals 2

    .line 134
    const-string v0, "SimStatusDialogFragment"

    const-string v1, "onSimHotSwap, dismiss dialog."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->dismissAllowingStateLoss()V

    .line 136
    return-void
.end method
