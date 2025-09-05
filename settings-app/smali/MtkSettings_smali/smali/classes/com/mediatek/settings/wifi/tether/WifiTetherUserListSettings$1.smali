.class Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTetherUserListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$1;->this$0:Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$1;->this$0:Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;

    invoke-static {p1}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->access$000(Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;)V

    .line 65
    return-void
.end method
