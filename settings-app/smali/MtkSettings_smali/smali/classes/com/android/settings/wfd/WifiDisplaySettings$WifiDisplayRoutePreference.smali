.class Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;
.super Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiDisplayRoutePreference"
.end annotation


# instance fields
.field private final mDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 847
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    .line 849
    iput-object p4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    .line 850
    const p1, 0x7f0d01d7    # @layout/wifi_display_preference 'res/layout/wifi_display_preference.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->setWidgetLayoutResource(I)V

    .line 851
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    .line 855
    invoke-super {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 857
    const v0, 0x7f0a010e    # @id/deviceDetails

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 858
    if-eqz p1, :cond_0

    .line 859
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 860
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033    # @android:attr/disabledAlpha

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 864
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 865
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 868
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 872
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {p1, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1900(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 873
    return-void
.end method
