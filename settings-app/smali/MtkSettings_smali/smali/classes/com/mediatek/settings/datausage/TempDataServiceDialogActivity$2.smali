.class Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$2;
.super Ljava/lang/Object;
.source "TempDataServiceDialogActivity.java"

# interfaces
.implements Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$2;->this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimHotSwap()V
    .locals 2

    .line 93
    const-string v0, "TempDataServiceDialogActivity"

    const-string v1, "onSimHotSwap, finish Activity."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$2;->this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;

    invoke-static {v0}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->access$000(Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;)V

    .line 95
    iget-object v0, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$2;->this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;

    invoke-virtual {v0}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->finish()V

    .line 96
    return-void
.end method
