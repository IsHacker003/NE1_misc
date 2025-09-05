.class Lcom/android/settings/datausage/DataUsageBase$1;
.super Ljava/lang/Object;
.source "DataUsageBase.java"

# interfaces
.implements Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageBase;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageBase;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageBase$1;->this$0:Lcom/android/settings/datausage/DataUsageBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimHotSwap()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase$1;->this$0:Lcom/android/settings/datausage/DataUsageBase;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "DataUsageBase"

    const-string v1, "onSimHotSwap, finish Activity~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase$1;->this$0:Lcom/android/settings/datausage/DataUsageBase;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 77
    :cond_0
    return-void
.end method
