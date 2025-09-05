.class public Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsMacAddressController.java"


# instance fields
.field mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 41
    new-instance p1, Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-direct {p1, p2, p4}, Lcom/android/settingslib/widget/FooterPreferenceMixin;-><init>(Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    .line 42
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4

    .line 46
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 47
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 48
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 47
    const v2, 0x7f12028f    # @string/bluetooth_device_mac_address 'Device's Bluetooth address: %1$s'

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method protected refresh()V
    .locals 0

    .line 53
    return-void
.end method
