.class public final Lcom/android/settings/bluetooth/DevicePickerActivity;
.super Landroid/app/Activity;
.source "DevicePickerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const p1, 0x7f0d003f    # @layout/bluetooth_device_picker 'res/layout/bluetooth_device_picker.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->setContentView(I)V

    .line 34
    return-void
.end method
