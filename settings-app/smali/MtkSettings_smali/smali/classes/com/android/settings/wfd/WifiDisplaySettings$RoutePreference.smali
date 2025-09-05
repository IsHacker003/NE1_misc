.class Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
.super Landroid/support/v7/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoutePreference"
.end annotation


# instance fields
.field private final mRoute:Landroid/media/MediaRouter$RouteInfo;

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 805
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 806
    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 808
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 809
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 810
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 811
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setEnabled(Z)V

    .line 812
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 813
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    .line 814
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 815
    const p1, 0x7f121026    # @string/wifi_display_status_connecting 'Connecting'

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0

    .line 817
    :cond_0
    const p1, 0x7f121025    # @string/wifi_display_status_connected 'Connected'

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0

    .line 820
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 821
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    goto :goto_0

    .line 823
    :cond_2
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    .line 824
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_3

    .line 825
    const p1, 0x7f121027    # @string/wifi_display_status_in_use 'In use'

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0

    .line 827
    :cond_3
    const p1, 0x7f121028    # @string/wifi_display_status_not_available 'Unavailable'

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    .line 831
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 832
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 836
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {p1, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1800(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V

    .line 837
    const/4 p1, 0x1

    return p1
.end method
