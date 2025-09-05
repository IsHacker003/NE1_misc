.class Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTetherUserPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController$1;->this$0:Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController$1;->this$0:Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;

    invoke-static {p1}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;->access$000(Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;)V

    .line 53
    return-void
.end method
