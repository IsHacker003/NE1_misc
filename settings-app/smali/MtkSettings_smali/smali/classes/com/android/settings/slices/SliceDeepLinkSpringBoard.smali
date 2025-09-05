.class public Lcom/android/settings/slices/SliceDeepLinkSpringBoard;
.super Landroid/app/Activity;
.source "SliceDeepLinkSpringBoard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static parse(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 91
    const-string v0, "intent"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    const-string p1, "DeeplinkSpringboard"

    const-string v0, "No data found"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->finish()V

    .line 48
    return-void

    .line 51
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->parse(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 52
    const-string v0, "com.android.settings.action.VIEW_SLICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    const-string v0, "slice"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 59
    sget-object v0, Lcom/android/settings/wifi/WifiSliceBuilder;->WIFI_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-static {p0}, Lcom/android/settings/wifi/WifiSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Lcom/android/settings/notification/ZenModeSliceBuilder;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 63
    :cond_2
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->BLUETOOTH_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_3
    sget-object v0, Lcom/android/settings/location/LocationSliceBuilder;->LOCATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    invoke-static {p0}, Lcom/android/settings/location/LocationSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 68
    :cond_4
    new-instance v0, Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-direct {v0, p0}, Lcom/android/settings/slices/SlicesDatabaseAccessor;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v0, p1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceDataFromUri(Landroid/net/Uri;)Lcom/android/settings/slices/SliceData;

    move-result-object p1

    .line 72
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/content/Intent;

    move-result-object p1

    .line 75
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->startActivity(Landroid/content/Intent;)V

    .line 76
    goto :goto_1

    .line 77
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->startActivity(Landroid/content/Intent;)V

    .line 79
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->finish()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 83
    :catch_0
    move-exception p1

    .line 84
    const-string v0, "DeeplinkSpringboard"

    const-string v1, "Couldn\'t launch Slice intent"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->startActivity(Landroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->finish()V

    goto :goto_3

    .line 80
    :catch_1
    move-exception p1

    .line 81
    const-string v0, "DeeplinkSpringboard"

    const-string v1, "Error decoding uri"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->finish()V

    .line 87
    :goto_2
    nop

    .line 88
    :goto_3
    return-void
.end method
