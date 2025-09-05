.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0

    .line 446
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .locals 0

    .line 504
    packed-switch p0, :pswitch_data_0

    .line 514
    const/4 p0, 0x4

    return p0

    .line 512
    :pswitch_0
    const/4 p0, 0x3

    return p0

    .line 508
    :pswitch_1
    const/4 p0, 0x1

    return p0

    .line 510
    :pswitch_2
    const/4 p0, 0x2

    return p0

    .line 506
    :pswitch_3
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1

    .line 458
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 459
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    .line 460
    const/4 v0, 0x4

    if-nez p1, :cond_0

    .line 461
    return v0

    .line 463
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$802(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 464
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    if-nez p1, :cond_1

    .line 465
    return v0

    .line 468
    :cond_1
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result p1

    return p1
.end method

.method public getButtonDescription()I
    .locals 1

    .line 450
    const v0, 0x7f120695    # @string/gadget_bluetooth 'Bluetooth'

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .line 448
    const v0, 0x7f0a01a5    # @id/img_bluetooth

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 0

    .line 452
    if-eqz p1, :cond_0

    const p1, 0x7f0800c4    # @drawable/ic_appwidget_settings_bluetooth_on_holo 'res/drawable-xhdpi/ic_appwidget_settings_bluetooth_on_holo.png'

    goto :goto_0

    .line 453
    :cond_0
    const p1, 0x7f0800c3    # @drawable/ic_appwidget_settings_bluetooth_off_holo 'res/drawable-xhdpi/ic_appwidget_settings_bluetooth_off_holo.png'

    .line 452
    :goto_0
    return p1
.end method

.method public getContainerId()I
    .locals 1

    .line 447
    const v0, 0x7f0a007f    # @id/btn_bluetooth

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .line 449
    const v0, 0x7f0a01ad    # @id/ind_bluetooth

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 492
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    return-void

    .line 495
    :cond_0
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 496
    invoke-static {p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 497
    return-void
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 0

    .line 473
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    .line 474
    const-string p1, "SettingsAppWidgetProvider"

    const-string p2, "No LocalBluetoothManager"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void

    .line 481
    :cond_0
    new-instance p1, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;Z)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 487
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 488
    return-void
.end method
