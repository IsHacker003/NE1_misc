.class Lcom/android/settings/datausage/DataUsageSummary$5;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 757
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 758
    const-string v0, "DataUsageSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mReceiver action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/datausage/DataUsageSummary;->access$502(Lcom/android/settings/datausage/DataUsageSummary;Z)Z

    .line 761
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->access$300(Lcom/android/settings/datausage/DataUsageSummary;)V

    goto :goto_1

    .line 762
    :cond_0
    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    .line 763
    invoke-static {p2}, Lcom/android/settings/datausage/DataUsageSummary;->access$600(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customDualReceiver(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 765
    :cond_1
    const-string p2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    .line 766
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 767
    :cond_2
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->access$300(Lcom/android/settings/datausage/DataUsageSummary;)V

    goto :goto_1

    .line 764
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->access$300(Lcom/android/settings/datausage/DataUsageSummary;)V

    .line 769
    :cond_4
    :goto_1
    return-void
.end method
