.class public Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;
.super Ljava/lang/Object;
.source "WifiCallingSliceHelper.java"


# static fields
.field public static final WIFI_CALLING_URI:Landroid/net/Uri;


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 86
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.settings.slices"

    .line 87
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "wifi_calling"

    .line 88
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->WIFI_CALLING_URI:Landroid/net/Uri;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method private getActivityIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 361
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 363
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getBroadcastIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 351
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 353
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getNonActionableWifiCallingSlice(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;)Landroidx/slice/Slice;
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f080214    # @drawable/wifi_signal 'res/drawable/wifi_signal.xml'

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    .line 270
    new-instance v1, Landroidx/slice/builders/ListBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const-wide/16 v3, -0x1

    invoke-direct {v1, v2, p3, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 271
    const p3, 0x7f060070    # @color/material_blue_500 '#4285f4'

    invoke-virtual {v1, p3}, Landroidx/slice/builders/ListBuilder;->setColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p3

    new-instance v1, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$6JNBI7DQgipwzIQhGGlqsYB5PlI;

    invoke-direct {v1, p1, p2, p4, v0}, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$6JNBI7DQgipwzIQhGGlqsYB5PlI;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;)V

    .line 272
    invoke-virtual {p3, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p1

    .line 270
    return-object p1
.end method

.method public static getSettingsIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getSimCarrierName()Ljava/lang/String;
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 371
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCarrierIdName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 372
    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f120381    # @string/carrier 'Carrier'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 375
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWifiCallingSlice(Landroid/net/Uri;Landroid/content/Context;Z)Landroidx/slice/Slice;
    .locals 5

    .line 190
    const v0, 0x7f080214    # @drawable/wifi_signal 'res/drawable/wifi_signal.xml'

    invoke-static {p2, v0}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    .line 191
    const v1, 0x7f120ff3    # @string/wifi_calling_settings_title 'Wi-Fi calling'

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    new-instance v2, Landroidx/slice/builders/ListBuilder;

    const-wide/16 v3, -0x1

    invoke-direct {v2, p2, p1, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 193
    const p1, 0x7f060070    # @color/material_blue_500 '#4285f4'

    invoke-virtual {v2, p1}, Landroidx/slice/builders/ListBuilder;->setColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$zbtZymRgbM5OtQTuVraAeUKJDfQ;

    invoke-direct {p2, p0, v1, p3, v0}, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSliceHelper$zbtZymRgbM5OtQTuVraAeUKJDfQ;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;Ljava/lang/String;ZLandroid/support/v4/graphics/drawable/IconCompat;)V

    .line 194
    invoke-virtual {p1, p2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p1

    .line 192
    return-object p1
.end method

.method private isWifiCallingEnabled(Lcom/android/ims/ImsManager;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;Lcom/android/ims/ImsManager;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 174
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 175
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 177
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 178
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 180
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method static synthetic lambda$getNonActionableWifiCallingSlice$1(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 0

    .line 272
    nop

    .line 273
    invoke-virtual {p4, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p4

    .line 274
    invoke-virtual {p4, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    new-instance p4, Landroidx/slice/builders/SliceAction;

    invoke-direct {p4, p2, p3, p0}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {p1, p4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 272
    return-void
.end method

.method public static synthetic lambda$getWifiCallingSlice$0(Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;Ljava/lang/String;ZLandroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 3

    .line 194
    nop

    .line 195
    invoke-virtual {p4, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p4

    new-instance v0, Landroidx/slice/builders/SliceAction;

    const-string v1, "com.android.settings.wifi.calling.action.WIFI_CALLING_CHANGED"

    .line 198
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getBroadcastIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    .line 196
    invoke-virtual {p4, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p2

    new-instance p4, Landroidx/slice/builders/SliceAction;

    const-string v0, "android.settings.WIFI_CALLING_SETTINGS"

    .line 201
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getActivityIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p4, v0, p3, p1}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {p2, p4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 194
    return-void
.end method


# virtual methods
.method public createWifiCallingSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 8

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getDefaultVoiceSubId()I

    move-result v0

    .line 118
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getSimCarrierName()Ljava/lang/String;

    move-result-object v1

    .line 120
    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f120fe9    # @string/wifi_calling_not_supported 'Wi‑Fi calling is not supported for %1$s'

    const v5, 0x7f120ff3    # @string/wifi_calling_settings_title 'Wi-Fi calling'

    const/4 v6, -0x1

    if-gt v0, v6, :cond_0

    .line 121
    const-string v0, "WifiCallingSliceHelper"

    const-string v6, "Invalid subscription Id"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 124
    invoke-virtual {v5, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    .line 125
    invoke-static {v2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getSettingsIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 122
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getNonActionableWifiCallingSlice(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;)Landroidx/slice/Slice;

    move-result-object p1

    return-object p1

    .line 128
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getImsManager(I)Lcom/android/ims/ImsManager;

    move-result-object v6

    .line 130
    invoke-virtual {v6}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 131
    invoke-virtual {v6}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    :try_start_0
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->isWifiCallingEnabled(Lcom/android/ims/ImsManager;)Z

    move-result v1

    .line 141
    nop

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getWifiCallingCarrierActivityIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 147
    const-string v0, "WifiCallingSliceHelper"

    const-string v1, "Needs Activation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f120ff2    # @string/wifi_calling_settings_activation_instructions 'Activate Wi‑Fi Calling'

    .line 152
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.settings.WIFI_CALLING_SETTINGS"

    .line 154
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getActivityIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 150
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getNonActionableWifiCallingSlice(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getWifiCallingSlice(Landroid/net/Uri;Landroid/content/Context;Z)Landroidx/slice/Slice;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const-string v1, "WifiCallingSliceHelper"

    const-string v2, "Unable to read the current WiFi calling status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f120ff7    # @string/wifi_calling_turn_on 'Turn on Wi‑Fi calling'

    .line 161
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.settings.WIFI_CALLING_SETTINGS"

    .line 162
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getActivityIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 159
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getNonActionableWifiCallingSlice(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;)Landroidx/slice/Slice;

    move-result-object p1

    return-object p1

    .line 132
    :cond_3
    :goto_0
    const-string v0, "WifiCallingSliceHelper"

    const-string v6, "Wifi calling is either not provisioned or not enabled by Platform"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 135
    invoke-virtual {v5, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    .line 136
    invoke-static {v2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getSettingsIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 133
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getNonActionableWifiCallingSlice(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;)Landroidx/slice/Slice;

    move-result-object p1

    return-object p1
.end method

.method protected getCarrierConfigManager(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;
    .locals 1

    .line 298
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    return-object p1
.end method

.method protected getDefaultVoiceSubId()I
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 308
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    return v0
.end method

.method protected getImsManager(I)Lcom/android/ims/ImsManager;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    return-object p1
.end method

.method protected getWifiCallingCarrierActivityIntent(I)Landroid/content/Intent;
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getCarrierConfigManager(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;

    move-result-object v0

    .line 317
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 318
    return-object v1

    .line 321
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 322
    if-nez p1, :cond_1

    .line 323
    return-object v1

    .line 326
    :cond_1
    const-string v0, "wfc_emergency_address_carrier_app_string"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    return-object v1

    .line 332
    :cond_2
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 333
    if-nez p1, :cond_3

    .line 334
    return-object v1

    .line 337
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 338
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 339
    return-object v0
.end method

.method public handleWifiCallingChanged(Landroid/content/Intent;)V
    .locals 5

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getDefaultVoiceSubId()I

    move-result v0

    .line 233
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_3

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getImsManager(I)Lcom/android/ims/ImsManager;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    :cond_0
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 239
    :cond_1
    move v3, v1

    :goto_0
    const-string v4, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 241
    nop

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->getWifiCallingCarrierActivityIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 243
    if-eqz p1, :cond_2

    if-nez v0, :cond_3

    .line 246
    :cond_2
    if-eq p1, v3, :cond_3

    .line 247
    invoke-virtual {v2, p1}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    .line 254
    :cond_3
    const-string p1, "wifi_calling"

    invoke-static {p1, v1}, Lcom/android/settings/slices/SliceBuilderUtils;->getUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p1

    .line 255
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 256
    return-void
.end method
