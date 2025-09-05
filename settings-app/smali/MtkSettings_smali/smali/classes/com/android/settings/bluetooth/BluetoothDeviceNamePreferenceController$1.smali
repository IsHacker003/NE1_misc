.class Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceNamePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 153
    const-string p2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 154
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    iget-object p2, p2, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->updatePreferenceState(Landroid/support/v7/preference/Preference;)V

    goto :goto_0

    .line 157
    :cond_0
    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    iget-object p2, p2, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->updatePreferenceState(Landroid/support/v7/preference/Preference;)V

    .line 160
    :cond_1
    :goto_0
    return-void
.end method
