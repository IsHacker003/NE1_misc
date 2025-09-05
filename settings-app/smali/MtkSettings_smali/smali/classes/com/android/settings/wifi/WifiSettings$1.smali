.class Lcom/android/settings/wifi/WifiSettings$1;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 291
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 292
    if-eqz p1, :cond_0

    .line 293
    const v0, 0x7f12103c    # @string/wifi_failed_connect_message 'Failed to connect to network'

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 297
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 288
    return-void
.end method
