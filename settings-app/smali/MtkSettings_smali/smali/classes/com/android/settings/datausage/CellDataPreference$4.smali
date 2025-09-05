.class Lcom/android/settings/datausage/CellDataPreference$4;
.super Landroid/content/BroadcastReceiver;
.source "CellDataPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/CellDataPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/CellDataPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$4;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 437
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 438
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference$4;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive broadcast , action =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/datausage/CellDataPreference;->access$100(Lcom/android/settings/datausage/CellDataPreference;Ljava/lang/String;)V

    .line 440
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$4;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/datausage/CellDataPreference;->access$302(Lcom/android/settings/datausage/CellDataPreference;Z)Z

    .line 442
    iget-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$4;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-static {p1}, Lcom/android/settings/datausage/CellDataPreference;->access$000(Lcom/android/settings/datausage/CellDataPreference;)V

    goto :goto_1

    .line 443
    :cond_0
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    iget-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$4;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-static {p1, p2}, Lcom/android/settings/datausage/CellDataPreference;->access$400(Lcom/android/settings/datausage/CellDataPreference;Landroid/content/Intent;)V

    .line 446
    iget-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$4;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-static {p1}, Lcom/android/settings/datausage/CellDataPreference;->access$000(Lcom/android/settings/datausage/CellDataPreference;)V

    goto :goto_1

    .line 447
    :cond_1
    const-string p2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    .line 448
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/settings/datausage/CellDataPreference$4;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    .line 449
    invoke-static {p2}, Lcom/android/settings/datausage/CellDataPreference;->access$500(Lcom/android/settings/datausage/CellDataPreference;)Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customDualReceiver(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 452
    :cond_2
    const-string p2, "com.mediatek.phone.ACTION_SIM_SLOT_LOCK_POLICY_INFORMATION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 453
    iget-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$4;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-static {p1}, Lcom/android/settings/datausage/CellDataPreference;->access$000(Lcom/android/settings/datausage/CellDataPreference;)V

    goto :goto_1

    .line 450
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$4;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-static {p1}, Lcom/android/settings/datausage/CellDataPreference;->access$000(Lcom/android/settings/datausage/CellDataPreference;)V

    .line 456
    :cond_4
    :goto_1
    return-void
.end method
