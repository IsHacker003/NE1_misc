.class Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiCallingSettingsForSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 239
    const-string v0, "WifiCallingForSub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive, action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v0, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;->setResultCode(I)V

    .line 249
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$300(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    :cond_0
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 252
    const-string p1, "android.telephony.extra.SLOT_INDEX"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 254
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$400(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)I

    move-result p2

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p2

    .line 255
    if-eq p1, v0, :cond_1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 257
    invoke-static {p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$000(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/ims/ImsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result p1

    if-nez p1, :cond_1

    .line 258
    const-string p1, "WifiCallingForSub"

    const-string p2, "Carrier config changed, finish WFC activity"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 263
    :cond_1
    :goto_0
    return-void
.end method
