.class Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$4;
.super Ljava/lang/Object;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$4;->this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 99
    iget-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$4;->this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {p1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 100
    if-eqz p1, :cond_0

    .line 101
    const v0, 0x7f12103e    # @string/wifi_failed_save_message 'Failed to save network'

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 105
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$4;->this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->access$000(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V

    .line 96
    return-void
.end method
