.class public Lcom/android/settings/bluetooth/BluetoothSliceBuilder;
.super Ljava/lang/Object;
.source "BluetoothSliceBuilder.java"


# static fields
.field public static final BLUETOOTH_URI:Landroid/net/Uri;

.field public static final INTENT_FILTER:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 52
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.settings.slices"

    .line 53
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "action"

    .line 54
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bluetooth"

    .line 55
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->BLUETOOTH_URI:Landroid/net/Uri;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    .line 67
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private static getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.bluetooth.action.BLUETOOTH_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/settings/slices/SliceBroadcastReceiver;

    .line 140
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    .line 102
    const v0, 0x7f12032b    # @string/bluetooth_settings_title 'Bluetooth'

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 105
    const-class v2, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    .line 106
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 105
    const/4 v3, 0x0

    const/16 v4, 0x2eb

    invoke-static {p0, v2, v3, v0, v4}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 109
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    .line 105
    return-object p0
.end method

.method private static getPrimaryAction(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 133
    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 134
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getSlice(Landroid/content/Context;)Landroidx/slice/Slice;
    .locals 9

    .line 81
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->isBluetoothEnabled()Z

    move-result v0

    .line 82
    const v1, 0x7f120329    # @string/bluetooth_settings 'Bluetooth'

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 83
    const v2, 0x7f080163    # @drawable/ic_settings_bluetooth 'res/drawable/ic_settings_bluetooth.xml'

    invoke-static {p0, v2}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v2

    .line 85
    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v3

    .line 86
    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 87
    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->getPrimaryAction(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 88
    new-instance v6, Landroidx/slice/builders/SliceAction;

    invoke-direct {v6, v5, v2, v1}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 89
    new-instance v2, Landroidx/slice/builders/SliceAction;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v0}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    .line 92
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    sget-object v4, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->BLUETOOTH_URI:Landroid/net/Uri;

    const-wide/16 v7, -0x1

    invoke-direct {v0, p0, v4, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 93
    invoke-virtual {v0, v3}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    new-instance v0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothSliceBuilder$t1meuX4HmFYfZCMXndFcRlc9eII;

    invoke-direct {v0, v1, v2, v6}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothSliceBuilder$t1meuX4HmFYfZCMXndFcRlc9eII;-><init>(Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/SliceAction;)V

    .line 94
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    .line 92
    return-object p0
.end method

.method public static handleUriChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 117
    const-string v0, "android.app.slice.extra.TOGGLE_STATE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 118
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p0

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    .line 125
    return-void
.end method

.method private static isBluetoothEnabled()Z
    .locals 1

    .line 128
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getSlice$0(Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 0

    .line 94
    nop

    .line 95
    invoke-virtual {p3, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 96
    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 97
    invoke-virtual {p0, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 94
    return-void
.end method
