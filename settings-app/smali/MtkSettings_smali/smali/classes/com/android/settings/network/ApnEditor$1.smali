.class Lcom/android/settings/network/ApnEditor$1;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/ApnEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnEditor;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$1;->this$0:Lcom/android/settings/network/ApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimHotSwap()V
    .locals 2

    .line 376
    invoke-static {}, Lcom/android/settings/network/ApnEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSimHotSwap, finish Activity~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$1;->this$0:Lcom/android/settings/network/ApnEditor;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 378
    return-void
.end method
