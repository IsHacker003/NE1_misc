.class Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDetailPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x16fd136b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const v1, -0x147b62d9

    if-eq v0, v1, :cond_1

    const v1, 0x60e99352

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 161
    :pswitch_0
    const-string p1, "multipleChanges"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_4

    .line 164
    const-string p1, "wifiConfiguration"

    .line 165
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 166
    iget-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$000(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 167
    iget-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p2, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$102(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 173
    :cond_4
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$200(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 176
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
