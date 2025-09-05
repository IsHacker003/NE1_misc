.class Lcom/android/settings/network/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    invoke-static {p2}, Lcom/android/settings/network/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 156
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive ACTION_ANY_DATA_CONNECTION_STATE_CHANGED,state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v1, Lcom/android/settings/network/ApnSettings$4;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$100()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnSettings;->fillList()V

    .line 168
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v0, p1, p2}, Lcom/android/settings/network/ApnSettings;->access$200(Lcom/android/settings/network/ApnSettings;Landroid/content/Context;Landroid/content/Intent;)V

    .line 169
    goto :goto_1

    :cond_2
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 171
    iget-object p2, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p2, p1}, Lcom/android/settings/network/ApnSettings;->access$300(Lcom/android/settings/network/ApnSettings;Landroid/content/Context;)V

    .line 173
    :cond_3
    :goto_1
    return-void
.end method
