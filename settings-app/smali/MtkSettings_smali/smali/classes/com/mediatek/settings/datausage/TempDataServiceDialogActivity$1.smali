.class Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "TempDataServiceDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;
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

    .line 73
    iput-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$1;->this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 77
    const-string p2, "TempDataServiceDialogActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive, action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$1;->this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;

    invoke-static {p1}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->access$000(Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;)V

    .line 79
    iget-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$1;->this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;

    invoke-virtual {p1}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->finish()V

    .line 80
    return-void
.end method
