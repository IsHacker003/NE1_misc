.class public final synthetic Lcom/mediatek/settings/wifi/tether/-$$Lambda$WifiTetherUserListSettings$BabsGcA9N5f4LWyL-eu1VjIQXyE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;

.field private final synthetic f$1:Lmediatek/net/wifi/HotspotClient;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;Lmediatek/net/wifi/HotspotClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/settings/wifi/tether/-$$Lambda$WifiTetherUserListSettings$BabsGcA9N5f4LWyL-eu1VjIQXyE;->f$0:Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;

    iput-object p2, p0, Lcom/mediatek/settings/wifi/tether/-$$Lambda$WifiTetherUserListSettings$BabsGcA9N5f4LWyL-eu1VjIQXyE;->f$1:Lmediatek/net/wifi/HotspotClient;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/-$$Lambda$WifiTetherUserListSettings$BabsGcA9N5f4LWyL-eu1VjIQXyE;->f$0:Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;

    iget-object v1, p0, Lcom/mediatek/settings/wifi/tether/-$$Lambda$WifiTetherUserListSettings$BabsGcA9N5f4LWyL-eu1VjIQXyE;->f$1:Lmediatek/net/wifi/HotspotClient;

    invoke-static {v0, v1, p1}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;->lambda$updateWifiApClients$0(Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;Lmediatek/net/wifi/HotspotClient;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
