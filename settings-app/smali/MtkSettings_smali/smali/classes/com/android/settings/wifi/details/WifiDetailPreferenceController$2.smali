.class Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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

    .line 183
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$600(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$600(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$300(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$600(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 206
    const/16 p1, 0x10

    invoke-direct {p0, p2, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x11

    .line 207
    invoke-direct {p0, p2, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$700(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 210
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$602(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 211
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$500(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 213
    :cond_2
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$300(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$400(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/LinkProperties;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$402(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 188
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$500(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 190
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$300(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$800(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 220
    :cond_0
    return-void
.end method
