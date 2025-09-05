.class Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;
.super Landroid/content/BroadcastReceiver;
.source "SimStatusDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 143
    const-string v0, "com.android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 145
    if-nez p1, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    const-string p2, "message"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellBroadcastMessage;

    .line 149
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    .line 150
    invoke-static {p2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$000(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-virtual {p1}, Landroid/telephony/CellBroadcastMessage;->getSubId()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 151
    invoke-virtual {p1}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object p1

    .line 152
    iget-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$100(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    move-result-object p2

    const v0, 0x7f0a01e4    # @id/latest_area_info_value

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 155
    :cond_1
    return-void
.end method
