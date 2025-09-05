.class Lcom/android/settings/wfd/WifiDisplaySettings$14;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 746
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 747
    const-string v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1200(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    goto/16 :goto_2

    .line 749
    :cond_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 750
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const-string v0, "wifi_state"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x3

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    invoke-static {p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1302(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z

    .line 753
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1500(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "wifi_display_on"

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {p1, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1402(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z

    .line 755
    const-string p1, "WifiDisplaySettings"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " handle broadcast: mWifiEnabled: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mWifiDisplayOnSetting: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 756
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1400(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 755
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1600(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 758
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1700(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V

    goto :goto_2

    .line 760
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$14;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1400(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1700(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V

    .line 764
    :cond_4
    :goto_2
    return-void
.end method
