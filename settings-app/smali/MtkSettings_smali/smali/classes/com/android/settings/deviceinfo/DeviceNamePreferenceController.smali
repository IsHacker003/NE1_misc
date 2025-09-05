.class public Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DeviceNamePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;
    }
.end annotation


# static fields
.field public static final DEVICE_NAME_SET_WARNING_ID:I = 0x1

.field private static final KEY_PENDING_DEVICE_NAME:Ljava/lang/String; = "key_pending_device_name"

.field private static final PREF_KEY:Ljava/lang/String; = "device_name"

.field private static final TAG:Ljava/lang/String; = "DeviceNameferenceController"


# instance fields
.field private mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mDeviceName:Ljava/lang/String;

.field private mHost:Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;

.field private mPendingDeviceName:Ljava/lang/String;

.field private mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

.field private final mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 69
    const-string v0, "device_name"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 72
    new-instance p1, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-direct {p1}, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->initializeDeviceName()V

    .line 75
    return-void
.end method

.method private static final getFilteredBluetoothString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 189
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Landroid/text/SpannedString;

    const-string v1, ""

    invoke-direct {v4, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 193
    if-nez v0, :cond_0

    .line 194
    return-object p0

    .line 196
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initializeDeviceName()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    .line 91
    const-string v0, "DeviceNameferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDeviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 93
    const-string v0, "ro.product.nickname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    .line 96
    const-string v0, "DeviceNameferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_nickNameProp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    .line 99
    const-string v0, "DeviceNameferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_modelProp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    :goto_0
    return-void
.end method

.method private setBluetoothDeviceName(Ljava/lang/String;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_1

    .line 180
    invoke-static {p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getFilteredBluetoothString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 182
    :cond_1
    return-void
.end method

.method private setDeviceName(Ljava/lang/String;)V
    .locals 1

    .line 160
    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    .line 161
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setSettingsGlobalDeviceName(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setBluetoothDeviceName(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setTetherSsidName(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method private setSettingsGlobalDeviceName(Ljava/lang/String;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 170
    return-void
.end method

.method private setTetherSsidName(Ljava/lang/String;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 201
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 203
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 204
    return-void
.end method


# virtual methods
.method public confirmDeviceName()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setDeviceName(Ljava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 80
    const-string v0, "device_name"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setValidator(Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;)V

    .line 85
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050031    # @bool/config_show_product_nickname 'true'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 116
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 122
    const-string v0, "device_name"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public isTextValid(Ljava/lang/String;)Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;->isTextValid(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 208
    if-eqz p1, :cond_0

    .line 209
    const-string v0, "key_pending_device_name"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    .line 211
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 127
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    .line 128
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mHost:Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mHost:Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;->showDeviceNameWarningDialog(Ljava/lang/String;)V

    .line 131
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 215
    const-string v0, "key_pending_device_name"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public setHost(Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mHost:Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;

    .line 154
    return-void
.end method

.method public setLocalBluetoothManager(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 144
    return-void
.end method
