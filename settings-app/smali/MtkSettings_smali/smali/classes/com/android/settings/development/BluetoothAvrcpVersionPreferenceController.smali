.class public Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BluetoothAvrcpVersionPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final BLUETOOTH_AVRCP_VERSION_PROPERTY:Ljava/lang/String; = "persist.bluetooth.avrcpversion"


# instance fields
.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002b    # @array/bluetooth_avrcp_version_values

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListValues:[Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03002c    # @array/bluetooth_avrcp_versions

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListSummaries:[Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "bluetooth_select_avrcp_version"

    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 56
    const-string p1, "persist.bluetooth.avrcpversion"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 58
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 63
    check-cast p1, Landroid/support/v7/preference/ListPreference;

    .line 64
    const-string v0, "persist.bluetooth.avrcpversion"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    nop

    .line 67
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    nop

    .line 70
    goto :goto_1

    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const/4 v1, 0x3

    :goto_1
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method
