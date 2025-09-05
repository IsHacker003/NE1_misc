.class Lcom/android/settings/network/VpnPreferenceController$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "VpnPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/VpnPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/VpnPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/VpnPreferenceController;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/settings/network/VpnPreferenceController$1;->this$0:Lcom/android/settings/network/VpnPreferenceController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 187
    iget-object p1, p0, Lcom/android/settings/network/VpnPreferenceController$1;->this$0:Lcom/android/settings/network/VpnPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/network/VpnPreferenceController;->updateSummary()V

    .line 188
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 192
    iget-object p1, p0, Lcom/android/settings/network/VpnPreferenceController$1;->this$0:Lcom/android/settings/network/VpnPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/network/VpnPreferenceController;->updateSummary()V

    .line 193
    return-void
.end method
