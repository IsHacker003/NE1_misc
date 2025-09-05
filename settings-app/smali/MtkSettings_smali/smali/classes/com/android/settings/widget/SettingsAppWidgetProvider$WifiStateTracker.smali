.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0

    .line 358
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .locals 0

    .line 428
    packed-switch p0, :pswitch_data_0

    .line 438
    const/4 p0, 0x4

    return p0

    .line 432
    :pswitch_0
    const/4 p0, 0x1

    return p0

    .line 436
    :pswitch_1
    const/4 p0, 0x2

    return p0

    .line 430
    :pswitch_2
    const/4 p0, 0x0

    return p0

    .line 434
    :pswitch_3
    const/4 p0, 0x3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1

    .line 373
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 374
    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result p1

    return p1

    .line 377
    :cond_0
    const/4 p1, 0x4

    return p1
.end method

.method public getButtonDescription()I
    .locals 1

    .line 362
    const v0, 0x7f1206a6    # @string/gadget_wifi 'Wi‑Fi'

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .line 360
    const v0, 0x7f0a01a9    # @id/img_wifi

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 0

    .line 364
    if-eqz p1, :cond_0

    const p1, 0x7f0800cf    # @drawable/ic_appwidget_settings_wifi_on_holo 'res/drawable-xhdpi/ic_appwidget_settings_wifi_on_holo.png'

    goto :goto_0

    .line 365
    :cond_0
    const p1, 0x7f0800ce    # @drawable/ic_appwidget_settings_wifi_off_holo 'res/drawable-xhdpi/ic_appwidget_settings_wifi_off_holo.png'

    .line 364
    :goto_0
    return p1
.end method

.method public getContainerId()I
    .locals 1

    .line 359
    const v0, 0x7f0a0083    # @id/btn_wifi

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .line 361
    const v0, 0x7f0a01b1    # @id/ind_wifi

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 416
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    return-void

    .line 419
    :cond_0
    const-string v0, "wifi_state"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 420
    invoke-static {p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 421
    return-void
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2

    .line 382
    const-string v0, "wifi"

    .line 383
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 384
    if-nez v0, :cond_0

    .line 385
    const-string p1, "SettingsAppWidgetProvider"

    const-string p2, "No wifiManager."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void

    .line 393
    :cond_0
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;Landroid/net/wifi/WifiManager;ZLandroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 411
    invoke-virtual {v1, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 412
    return-void
.end method
