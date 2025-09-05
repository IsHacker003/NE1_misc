.class Lcom/android/settings/sim/SimDialogActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimDialogActivity;
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

    .line 91
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$1;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive, action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$1;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {p1}, Lcom/android/settings/sim/SimDialogActivity;->access$100(Lcom/android/settings/sim/SimDialogActivity;)V

    .line 97
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$1;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {p1}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    .line 98
    return-void
.end method
