.class public Lcom/android/settings/slices/SliceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SliceBroadcastReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "SettSliceBroadcastRec"

    sput-object v0, Lcom/android/settings/slices/SliceBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getPreferenceController(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;
    .locals 1

    .line 169
    new-instance v0, Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-direct {v0, p1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v0, p2}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceDataFromKey(Ljava/lang/String;)Lcom/android/settings/slices/SliceData;

    move-result-object p2

    .line 171
    invoke-static {p1, p2}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p1

    return-object p1
.end method

.method private handleSliderAction(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 2

    .line 121
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 126
    const/4 v0, -0x1

    if-eq p3, v0, :cond_3

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBroadcastReceiver;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    .line 132
    instance-of v1, v0, Lcom/android/settings/core/SliderPreferenceController;

    if-eqz v1, :cond_2

    .line 136
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    sget-object p3, Lcom/android/settings/slices/SliceBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " since the setting is unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/slices/SliceBroadcastReceiver;->updateUri(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 139
    return-void

    .line 142
    :cond_0
    check-cast v0, Lcom/android/settings/core/SliderPreferenceController;

    .line 143
    invoke-virtual {v0}, Lcom/android/settings/core/SliderPreferenceController;->getMaxSteps()I

    move-result v1

    .line 144
    if-ltz p3, :cond_1

    if-gt p3, v1, :cond_1

    .line 150
    invoke-virtual {v0, p3}, Lcom/android/settings/core/SliderPreferenceController;->setSliderPosition(I)Z

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/slices/SliceBroadcastReceiver;->logSliceValueChange(Landroid/content/Context;Ljava/lang/String;I)V

    .line 152
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/slices/SliceBroadcastReceiver;->updateUri(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 153
    return-void

    .line 145
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid position passed to Slider controller. Expected between 0 and "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " but found "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Slider action passed for a non-slider key: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid position passed to Slider controller"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No key passed to Intent for slider controller. Use extra: com.android.settings.slice.extra.key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleToggleAction(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 3

    .line 91
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBroadcastReceiver;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    .line 97
    instance-of v1, v0, Lcom/android/settings/core/TogglePreferenceController;

    if-eqz v1, :cond_3

    .line 101
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    sget-object p3, Lcom/android/settings/slices/SliceBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " since the setting is unavailable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->hasAsyncUpdate()Z

    move-result p3

    if-nez p3, :cond_0

    .line 104
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/slices/SliceBroadcastReceiver;->updateUri(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 106
    :cond_0
    return-void

    .line 111
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/android/settings/core/TogglePreferenceController;

    .line 112
    invoke-virtual {v1, p3}, Lcom/android/settings/core/TogglePreferenceController;->setChecked(Z)Z

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/slices/SliceBroadcastReceiver;->logSliceValueChange(Landroid/content/Context;Ljava/lang/String;I)V

    .line 114
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->hasAsyncUpdate()Z

    move-result p3

    if-nez p3, :cond_2

    .line 115
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/slices/SliceBroadcastReceiver;->updateUri(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 117
    :cond_2
    return-void

    .line 98
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Toggle action passed for a non-toggle key: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No key passed to Intent for toggle controller"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private logSliceValueChange(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 160
    nop

    .line 161
    const/16 v0, 0x356

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 160
    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    .line 162
    nop

    .line 163
    const/16 v0, 0x441

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 162
    invoke-static {v0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p3

    .line 164
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/util/Pair;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    .line 165
    const/16 p2, 0x55c

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 166
    return-void
.end method

.method private updateUri(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 175
    if-eqz p3, :cond_0

    .line 176
    const-string p3, "android.settings.slices"

    goto :goto_0

    .line 177
    :cond_0
    const-string p3, "com.android.settings.slices"

    .line 178
    :goto_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 179
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    const-string v0, "action"

    .line 181
    invoke-virtual {p3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 182
    invoke-virtual {p3, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 183
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 185
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v1, "com.android.settings.slice.extra.key"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "com.android.settings.slice.extra.platform"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "com.android.settings.notification.ZEN_MODE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v4, "com.android.settings.wifi.action.WIFI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v4, "com.android.settings.slice.action.SLIDER_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v4, "com.android.settings.wifi.calling.action.WIFI_CALLING_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v4, "com.android.settings.bluetooth.action.BLUETOOTH_MODE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v4, "com.android.settings.slice.action.TOGGLE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 84
    :pswitch_0
    invoke-static {p1, p2}, Lcom/android/settings/notification/ZenModeSliceBuilder;->handleUriChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    .line 78
    :pswitch_1
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v0

    .line 80
    invoke-interface {v0, p1}, Lcom/android/settings/slices/SlicesFeatureProvider;->getNewWifiCallingSliceHelper(Landroid/content/Context;)Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    move-result-object p1

    .line 81
    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->handleWifiCallingChanged(Landroid/content/Intent;)V

    .line 82
    goto :goto_2

    .line 75
    :pswitch_2
    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiSliceBuilder;->handleUriChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 76
    goto :goto_2

    .line 72
    :pswitch_3
    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->handleUriChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 73
    goto :goto_2

    .line 68
    :pswitch_4
    const-string v0, "android.app.slice.extra.RANGE_VALUE"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 69
    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/settings/slices/SliceBroadcastReceiver;->handleSliderAction(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 70
    goto :goto_2

    .line 64
    :pswitch_5
    const-string v0, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 65
    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/settings/slices/SliceBroadcastReceiver;->handleToggleAction(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 66
    nop

    .line 87
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7bba0bda -> :sswitch_5
        -0x379033de -> :sswitch_4
        -0x1598e57d -> :sswitch_3
        0x10bd4b3 -> :sswitch_2
        0x2e31cf48 -> :sswitch_1
        0x720b8ab8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
