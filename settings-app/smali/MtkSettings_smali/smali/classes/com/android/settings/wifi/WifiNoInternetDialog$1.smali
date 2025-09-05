.class Lcom/android/settings/wifi/WifiNoInternetDialog$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiNoInternetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiNoInternetDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiNoInternetDialog;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->access$000(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    const-string p1, "WifiNoInternetDialog"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Network "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->access$000(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " validated"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->finish()V

    .line 104
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->access$000(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    const-string p1, "WifiNoInternetDialog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->access$000(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->finish()V

    .line 96
    :cond_0
    return-void
.end method
