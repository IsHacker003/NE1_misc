.class Lcom/android/settings/sim/SimSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 143
    const-string v0, "SimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive, action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object p1, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {p1, p2}, Lcom/android/settings/sim/SimSettings;->access$000(Lcom/android/settings/sim/SimSettings;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 146
    :cond_0
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object p1, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {p1}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)V

    goto/16 :goto_2

    .line 148
    :cond_1
    const-string v0, "android.telecom.action.PHONE_ACCOUNT_REGISTERED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "android.telecom.action.PHONE_ACCOUNT_UNREGISTERED"

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 151
    :cond_2
    const-string v0, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 154
    :cond_3
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    iget-object p1, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {p1}, Lcom/android/settings/sim/SimSettings;->access$300(Lcom/android/settings/sim/SimSettings;)V

    goto :goto_2

    .line 156
    :cond_4
    const-string v0, "com.mediatek.intent.action.RADIO_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    const-string p1, "subId"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 159
    iget-object p2, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {p2}, Lcom/android/settings/sim/SimSettings;->access$400(Lcom/android/settings/sim/SimSettings;)V

    .line 161
    iget-object p2, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {p2}, Lcom/android/settings/sim/SimSettings;->access$500(Lcom/android/settings/sim/SimSettings;)Lcom/mediatek/settings/sim/RadioPowerController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mediatek/settings/sim/RadioPowerController;->isRadioSwitchComplete(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 162
    iget-object p1, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {p1}, Lcom/android/settings/sim/SimSettings;->access$600(Lcom/android/settings/sim/SimSettings;)V

    .line 165
    :cond_5
    goto :goto_2

    :cond_6
    const-string v0, "com.mediatek.phone.ACTION_SIM_SLOT_LOCK_POLICY_INFORMATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 166
    iget-object p1, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {p1, p2}, Lcom/android/settings/sim/SimSettings;->access$700(Lcom/android/settings/sim/SimSettings;Landroid/content/Intent;)V

    goto :goto_2

    .line 153
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {p1}, Lcom/android/settings/sim/SimSettings;->access$300(Lcom/android/settings/sim/SimSettings;)V

    goto :goto_2

    .line 150
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/android/settings/sim/SimSettings$1;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {p1}, Lcom/android/settings/sim/SimSettings;->access$200(Lcom/android/settings/sim/SimSettings;)V

    .line 169
    :cond_9
    :goto_2
    return-void
.end method
