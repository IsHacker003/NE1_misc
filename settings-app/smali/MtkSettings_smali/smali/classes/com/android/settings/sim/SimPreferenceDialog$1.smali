.class Lcom/android/settings/sim/SimPreferenceDialog$1;
.super Ljava/lang/Object;
.source "SimPreferenceDialog.java"

# interfaces
.implements Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimPreferenceDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimPreferenceDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimPreferenceDialog;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog$1;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimHotSwap()V
    .locals 2

    .line 126
    const-string v0, "SimPreferenceDialog"

    const-string v1, "onSimHotSwap, finish Activity."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog$1;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimPreferenceDialog;->finish()V

    .line 128
    return-void
.end method
