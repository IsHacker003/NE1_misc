.class Lcom/android/settings/RadioInfo$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 252
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result p1

    .line 253
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result p2

    .line 254
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1, p2}, Lcom/android/settings/RadioInfo;->access$000(Lcom/android/settings/RadioInfo;II)V

    .line 255
    return-void
.end method
