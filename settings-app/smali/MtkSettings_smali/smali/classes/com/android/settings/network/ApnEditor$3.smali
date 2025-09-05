.class Lcom/android/settings/network/ApnEditor$3;
.super Landroid/content/BroadcastReceiver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnEditor;
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

    .line 1479
    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$3;->this$0:Lcom/android/settings/network/ApnEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1482
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1483
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1484
    const-string p1, "state"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 1485
    if-eqz p1, :cond_0

    .line 1486
    invoke-static {}, Lcom/android/settings/network/ApnEditor;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "receiver: ACTION_AIRPLANE_MODE_CHANGED in ApnEditor"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor$3;->this$0:Lcom/android/settings/network/ApnEditor;

    invoke-static {p1}, Lcom/android/settings/network/ApnEditor;->access$100(Lcom/android/settings/network/ApnEditor;)V

    .line 1489
    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1490
    const-string p1, "apnType"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1491
    invoke-static {}, Lcom/android/settings/network/ApnEditor;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receiver,send MMS status, get type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const-string p2, "mms"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1493
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor$3;->this$0:Lcom/android/settings/network/ApnEditor;

    invoke-static {p1}, Lcom/android/settings/network/ApnEditor;->access$200(Lcom/android/settings/network/ApnEditor;)V

    .line 1495
    :cond_2
    goto :goto_0

    :cond_3
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1496
    invoke-static {}, Lcom/android/settings/network/ApnEditor;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "receiver: ACTION_SIM_STATE_CHANGED"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor$3;->this$0:Lcom/android/settings/network/ApnEditor;

    invoke-static {p1}, Lcom/android/settings/network/ApnEditor;->access$200(Lcom/android/settings/network/ApnEditor;)V

    .line 1499
    :cond_4
    :goto_0
    return-void
.end method
