.class public Lcom/android/settings/wifi/WifiSliceBuilder;
.super Ljava/lang/Object;
.source "WifiSliceBuilder.java"


# static fields
.field public static final INTENT_FILTER:Landroid/content/IntentFilter;

.field public static final WIFI_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 60
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.settings.slices"

    .line 61
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "action"

    .line 62
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "wifi"

    .line 63
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiSliceBuilder;->WIFI_URI:Landroid/net/Uri;

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    .line 75
    sget-object v0, Lcom/android/settings/wifi/WifiSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/android/settings/wifi/WifiSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private static getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.action.WIFI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    const-class v1, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 182
    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    .line 125
    const v0, 0x7f1210b6    # @string/wifi_settings 'Wi‑Fi'

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 127
    const-class v2, Lcom/android/settings/wifi/WifiSettings;

    .line 128
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifi"

    .line 127
    const/16 v4, 0x25b

    invoke-static {p0, v2, v3, v0, v4}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 131
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    .line 133
    return-object p0
.end method

.method private static getPrimaryAction(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 174
    invoke-static {p0}, Lcom/android/settings/wifi/WifiSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 175
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getSlice(Landroid/content/Context;)Landroidx/slice/Slice;
    .locals 10

    .line 88
    invoke-static {p0}, Lcom/android/settings/wifi/WifiSliceBuilder;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 89
    const v1, 0x7f08017f    # @drawable/ic_settings_wireless 'res/drawable/ic_settings_wireless.xml'

    invoke-static {p0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    .line 91
    const v2, 0x7f1210b6    # @string/wifi_settings 'Wi‑Fi'

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {p0}, Lcom/android/settings/wifi/WifiSliceBuilder;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 93
    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v4

    .line 94
    invoke-static {p0}, Lcom/android/settings/wifi/WifiSliceBuilder;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 95
    invoke-static {p0}, Lcom/android/settings/wifi/WifiSliceBuilder;->getPrimaryAction(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 96
    new-instance v7, Landroidx/slice/builders/SliceAction;

    invoke-direct {v7, v6, v1, v2}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 97
    new-instance v1, Landroidx/slice/builders/SliceAction;

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6, v0}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    .line 100
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    sget-object v5, Lcom/android/settings/wifi/WifiSliceBuilder;->WIFI_URI:Landroid/net/Uri;

    const-wide/16 v8, -0x1

    invoke-direct {v0, p0, v5, v8, v9}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 101
    invoke-virtual {v0, v4}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSliceBuilder$zGyWboi-khe6O7kGcUmHExYnEzU;

    invoke-direct {v0, v2, v3, v1, v7}, Lcom/android/settings/wifi/-$$Lambda$WifiSliceBuilder$zGyWboi-khe6O7kGcUmHExYnEzU;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/SliceAction;)V

    .line 102
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    .line 100
    return-object p0
.end method

.method private static getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    .line 152
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 154
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const v2, 0x7f12055e    # @string/disconnected 'Not connected'

    packed-switch v1, :pswitch_data_0

    .line 169
    const-string p0, ""

    return-object p0

    .line 156
    :pswitch_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string v1, "<unknown ssid>"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 161
    :cond_0
    return-object v0

    .line 163
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 166
    :pswitch_2
    const v0, 0x7f120db7    # @string/switch_off_text 'Off'

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static handleUriChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 115
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 116
    const-string v0, "android.app.slice.extra.TOGGLE_STATE"

    .line 117
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 118
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 122
    return-void
.end method

.method private static isWifiEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 137
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 139
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 147
    const/4 p0, 0x0

    return p0

    .line 142
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$getSlice$0(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 0

    .line 102
    nop

    .line 103
    invoke-virtual {p4, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 104
    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 105
    invoke-virtual {p0, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 106
    invoke-virtual {p0, p3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 102
    return-void
.end method
