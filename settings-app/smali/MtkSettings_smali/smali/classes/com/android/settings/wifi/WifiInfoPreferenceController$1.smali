.class Lcom/android/settings/wifi/WifiInfoPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiInfoPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiInfoPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiInfoPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiInfoPreferenceController;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController$1;->this$0:Lcom/android/settings/wifi/WifiInfoPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 132
    const-string p2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.net.wifi.STATE_CHANGE"

    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController$1;->this$0:Lcom/android/settings/wifi/WifiInfoPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiInfoPreferenceController;->updateWifiInfo()V

    .line 136
    :cond_1
    return-void
.end method
