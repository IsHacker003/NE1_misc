.class Lcom/android/settings/network/ApnSettings$2;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/ApnSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimHotSwap()V
    .locals 2

    .line 219
    const-string v0, "ApnSettings"

    const-string v1, "onSimHotSwap, finish activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 223
    :cond_0
    return-void
.end method
