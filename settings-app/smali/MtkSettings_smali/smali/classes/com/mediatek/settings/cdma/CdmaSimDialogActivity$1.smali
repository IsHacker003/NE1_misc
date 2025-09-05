.class Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaSimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$1;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 53
    const-string p2, "CdmaSimDialogActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSubReceiver action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$1;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-virtual {p1}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->finish()V

    .line 55
    return-void
.end method
