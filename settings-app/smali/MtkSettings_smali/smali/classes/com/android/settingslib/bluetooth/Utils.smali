.class public Lcom/android/settingslib/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/Utils$ErrorListener;
    }
.end annotation


# static fields
.field private static sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;


# direct methods
.method public static getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 118
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 119
    invoke-static {p0, p1, p2, p3}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->createLayerDrawable(Landroid/content/Context;IIF)Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;

    move-result-object p0

    return-object p0

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/bluetooth/Utils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;F)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;F)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            "F)",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBatteryLevel()I

    move-result v1

    .line 60
    if-eqz v0, :cond_4

    .line 61
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x100

    if-eq v2, v3, :cond_3

    const/16 v3, 0x200

    if-eq v2, v3, :cond_2

    const/16 v3, 0x500

    if-eq v2, v3, :cond_1

    const/16 v3, 0x600

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Landroid/util/Pair;

    sget v0, Lcom/android/settingslib/R$drawable;->ic_settings_print:I

    .line 81
    invoke-static {p0, v0, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_imaging:I

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    return-object p1

    .line 74
    :cond_1
    new-instance p1, Landroid/util/Pair;

    .line 75
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    invoke-static {p0, v0, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_input_peripheral:I

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    return-object p1

    .line 68
    :cond_2
    new-instance p1, Landroid/util/Pair;

    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_cellphone:I

    .line 69
    invoke-static {p0, v0, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_phone:I

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    return-object p1

    .line 63
    :cond_3
    new-instance p1, Landroid/util/Pair;

    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_laptop:I

    invoke-static {p0, v0, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_computer:I

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    return-object p1

    .line 90
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object p1

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 92
    invoke-interface {v2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v2

    .line 93
    if-eqz v2, :cond_5

    .line 94
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0, v2, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 96
    :cond_5
    goto :goto_1

    .line 97
    :cond_6
    if-eqz v0, :cond_8

    .line 98
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 99
    new-instance p1, Landroid/util/Pair;

    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp:I

    .line 100
    invoke-static {p0, v0, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_headset:I

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    return-object p1

    .line 104
    :cond_7
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 105
    new-instance p1, Landroid/util/Pair;

    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_headphones_a2dp:I

    .line 106
    invoke-static {p0, v0, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_headphone:I

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    return-object p1

    .line 111
    :cond_8
    new-instance p1, Landroid/util/Pair;

    sget v0, Lcom/android/settingslib/R$drawable;->ic_settings_bluetooth:I

    .line 112
    invoke-static {p0, v0, v1, p2}, Lcom/android/settingslib/bluetooth/Utils;->getBluetoothDrawable(Landroid/content/Context;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_talkback_bluetooth:I

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    return-object p1
.end method

.method public static getConnectionStateSummary(I)I
    .locals 0

    .line 23
    packed-switch p0, :pswitch_data_0

    .line 33
    const/4 p0, 0x0

    return p0

    .line 31
    :pswitch_0
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_disconnecting:I

    return p0

    .line 25
    :pswitch_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_connected:I

    return p0

    .line 27
    :pswitch_2
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_connecting:I

    return p0

    .line 29
    :pswitch_3
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_disconnected:I

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

.method public static setErrorListener(Lcom/android/settingslib/bluetooth/Utils$ErrorListener;)V
    .locals 0

    .line 44
    sput-object p0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    .line 45
    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 38
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/settingslib/bluetooth/Utils$ErrorListener;->onShowError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 41
    :cond_0
    return-void
.end method
