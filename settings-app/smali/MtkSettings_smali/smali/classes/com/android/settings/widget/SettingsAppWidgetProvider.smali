.class public Lcom/android/settings/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field private static final IND_DRAWABLE_MID:[I

.field private static final IND_DRAWABLE_OFF:[I

.field private static final IND_DRAWABLE_ON:[I

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static final sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private static final sLocationState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

.field private static final sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 85
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    .line 91
    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    .line 97
    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    .line 108
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 109
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 110
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 111
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f08008b    # @drawable/appwidget_settings_ind_off_l_holo 'res/drawable-xhdpi/appwidget_settings_ind_off_l_holo.9.png'
        0x7f08008a    # @drawable/appwidget_settings_ind_off_c_holo 'res/drawable-xhdpi/appwidget_settings_ind_off_c_holo.9.png'
        0x7f08008c    # @drawable/appwidget_settings_ind_off_r_holo 'res/drawable-xhdpi/appwidget_settings_ind_off_r_holo.9.png'
    .end array-data

    :array_1
    .array-data 4
        0x7f080088    # @drawable/appwidget_settings_ind_mid_l_holo 'res/drawable-xhdpi/appwidget_settings_ind_mid_l_holo.9.png'
        0x7f080087    # @drawable/appwidget_settings_ind_mid_c_holo 'res/drawable-xhdpi/appwidget_settings_ind_mid_c_holo.9.png'
        0x7f080089    # @drawable/appwidget_settings_ind_mid_r_holo 'res/drawable-xhdpi/appwidget_settings_ind_mid_r_holo.9.png'
    .end array-data

    :array_2
    .array-data 4
        0x7f08008e    # @drawable/appwidget_settings_ind_on_l_holo 'res/drawable-xhdpi/appwidget_settings_ind_on_l_holo.9.png'
        0x7f08008d    # @drawable/appwidget_settings_ind_on_c_holo 'res/drawable-xhdpi/appwidget_settings_ind_on_c_holo.9.png'
        0x7f08008f    # @drawable/appwidget_settings_ind_on_r_holo 'res/drawable-xhdpi/appwidget_settings_ind_on_r_holo.9.png'
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$400()[I
    .locals 1

    .line 55
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .line 55
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .line 55
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    .line 55
    sput-object p0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3

    .line 685
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d01cd    # @layout/widget 'res/layout/widget.xml'

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 687
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0a0083    # @id/btn_wifi

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 689
    nop

    .line 690
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 689
    const v2, 0x7f0a0080    # @id/btn_brightness

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 692
    nop

    .line 693
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 692
    const v2, 0x7f0a0082    # @id/btn_sync

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 695
    nop

    .line 696
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 695
    const v2, 0x7f0a0081    # @id/btn_location

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 697
    nop

    .line 698
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 697
    const v2, 0x7f0a007f    # @id/btn_bluetooth

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 701
    invoke-static {v0, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 702
    return-object v0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 2

    .line 650
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 652
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 653
    sget-object p0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;->startObserving()V

    .line 655
    :cond_0
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 1

    .line 844
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    return p0

    .line 847
    :catch_0
    move-exception p0

    .line 849
    const/4 p0, 0x0

    return p0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 4

    .line 860
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "screen_brightness_mode"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 863
    :catch_0
    move-exception p0

    .line 864
    const-string v1, "SettingsAppWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrightnessMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return v0
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3

    .line 784
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 785
    const-class v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 786
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 788
    const/4 p1, 0x0

    invoke-static {p0, p1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 790
    return-object p0
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 9

    .line 876
    :try_start_0
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 877
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 879
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 880
    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 882
    nop

    .line 884
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120026    # @android:bool/config_bluetooth_le_peripheral_mode_supported

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 886
    const-string v4, "screen_brightness_mode"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 892
    :cond_0
    move v4, v6

    :goto_0
    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    .line 893
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    .line 894
    nop

    .line 904
    move v4, v6

    goto :goto_1

    .line 895
    :cond_1
    invoke-virtual {v1}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 896
    invoke-virtual {v1}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v1

    goto :goto_1

    .line 897
    :cond_2
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 898
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    goto :goto_1

    .line 900
    :cond_3
    nop

    .line 901
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    .line 904
    move v4, v7

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 907
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "screen_brightness_mode"

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 912
    :cond_4
    nop

    .line 914
    move v4, v6

    :goto_2
    if-nez v4, :cond_5

    .line 915
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    .line 916
    const-string p1, "screen_brightness"

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    :cond_5
    goto :goto_3

    .line 918
    :catch_0
    move-exception p1

    .line 919
    const-string v0, "SettingsAppWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :goto_3
    return-void
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 11

    .line 725
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 726
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 727
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 728
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 730
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f08008f    # @drawable/appwidget_settings_ind_on_r_holo 'res/drawable-xhdpi/appwidget_settings_ind_on_r_holo.9.png'

    const v2, 0x7f0a01ae    # @id/ind_brightness

    const v3, 0x7f0a01a6    # @id/img_brightness

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x7f12069a    # @string/gadget_brightness_template 'Brightness %1$s'

    const v7, 0x7f0a0080    # @id/btn_brightness

    if-eqz v0, :cond_0

    .line 731
    new-array v0, v5, [Ljava/lang/Object;

    const v5, 0x7f120696    # @string/gadget_brightness_state_auto 'auto'

    .line 733
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 732
    invoke-virtual {p1, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 731
    invoke-virtual {p0, v7, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 734
    const p1, 0x7f0800c5    # @drawable/ic_appwidget_settings_brightness_auto_holo 'res/drawable-xhdpi/ic_appwidget_settings_brightness_auto_holo.png'

    invoke-virtual {p0, v3, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 736
    invoke-virtual {p0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    .line 739
    :cond_0
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v0

    .line 740
    const-class v8, Landroid/os/PowerManager;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 742
    invoke-virtual {v8}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 744
    invoke-virtual {v8}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v8

    int-to-float v8, v8

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v10

    float-to-int v8, v8

    .line 746
    if-le v0, v9, :cond_1

    .line 747
    new-array v5, v5, [Ljava/lang/Object;

    const v9, 0x7f120697    # @string/gadget_brightness_state_full 'full'

    .line 749
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v4

    .line 748
    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 747
    invoke-virtual {p0, v7, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 750
    const p1, 0x7f0800c6    # @drawable/ic_appwidget_settings_brightness_full_holo 'res/drawable-xhdpi/ic_appwidget_settings_brightness_full_holo.png'

    invoke-virtual {p0, v3, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 752
    :cond_1
    if-le v0, v8, :cond_2

    .line 753
    new-array v5, v5, [Ljava/lang/Object;

    const v9, 0x7f120698    # @string/gadget_brightness_state_half 'half'

    .line 755
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v4

    .line 754
    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 753
    invoke-virtual {p0, v7, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 756
    const p1, 0x7f0800c7    # @drawable/ic_appwidget_settings_brightness_half_holo 'res/drawable-ldrtl-xhdpi/ic_appwidget_settings_brightness_half_holo.png'

    invoke-virtual {p0, v3, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 759
    :cond_2
    new-array v5, v5, [Ljava/lang/Object;

    const v9, 0x7f120699    # @string/gadget_brightness_state_off 'off'

    .line 761
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v4

    .line 760
    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 759
    invoke-virtual {p0, v7, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 762
    const p1, 0x7f0800c8    # @drawable/ic_appwidget_settings_brightness_off_holo 'res/drawable-xhdpi/ic_appwidget_settings_brightness_off_holo.png'

    invoke-virtual {p0, v3, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 766
    :goto_0
    if-le v0, v8, :cond_3

    .line 767
    invoke-virtual {p0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 770
    :cond_3
    const p1, 0x7f08008c    # @drawable/appwidget_settings_ind_off_r_holo 'res/drawable-xhdpi/appwidget_settings_ind_off_r_holo.9.png'

    invoke-virtual {p0, v2, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 774
    :goto_1
    return-void
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3

    .line 711
    invoke-static {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 713
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 714
    sget-object v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 715
    invoke-static {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 716
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    .line 675
    sget-object p1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-eqz p1, :cond_0

    .line 676
    sget-object p1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;->stopObserving()V

    .line 677
    const/4 p1, 0x0

    sput-object p1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 679
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    .line 670
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 671
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 801
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 802
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 803
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 804
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 805
    :cond_0
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 807
    :cond_1
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 808
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 809
    :cond_2
    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 810
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 811
    :cond_3
    const-string v0, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 812
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 813
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 814
    if-nez p2, :cond_4

    .line 815
    sget-object p2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 816
    :cond_4
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 817
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto :goto_0

    .line 818
    :cond_5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 819
    sget-object p2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 820
    :cond_6
    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    .line 821
    sget-object p2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 822
    :cond_7
    const/4 v0, 0x4

    if-ne p2, v0, :cond_8

    .line 823
    sget-object p2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 825
    :cond_8
    :goto_0
    nop

    .line 833
    :goto_1
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 834
    return-void

    .line 829
    :cond_9
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2

    .line 661
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 663
    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 664
    aget v1, p3, v0

    invoke-virtual {p2, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    :cond_0
    return-void
.end method
