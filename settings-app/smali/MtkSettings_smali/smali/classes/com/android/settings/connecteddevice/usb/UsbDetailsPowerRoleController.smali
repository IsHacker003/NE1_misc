.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsPowerRoleController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final mFailureCallback:Ljava/lang/Runnable;

.field private mNextPowerRole:I

.field private mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    .line 41
    new-instance p1, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsPowerRoleController$jiVF0c0jApWPiJapsUjjyYudYlM;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsPowerRoleController$jiVF0c0jApWPiJapsUjjyYudYlM;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFailureCallback:Ljava/lang/Runnable;

    .line 51
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    .line 52
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;)V
    .locals 2

    .line 42
    iget v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f120ead    # @string/usb_switching_failed 'Couldn't switch'

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 58
    new-instance p1, Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 59
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const v0, 0x7f120ebf    # @string/usb_use_power_only 'Charge connected device'

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 62
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 126
    const-string v0, "usb_details_power_role"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 121
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    .line 100
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 102
    move p1, v0

    goto :goto_0

    .line 101
    :cond_0
    const/4 p1, 0x2

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getPowerRole()I

    move-result v1

    if-eq v1, p1, :cond_2

    iget v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-nez v1, :cond_2

    .line 103
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v1, p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setPowerRole(I)V

    .line 106
    iput p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    .line 107
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f120eac    # @string/usb_switching 'Switching...'

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFailureCallback:Ljava/lang/Runnable;

    .line 110
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0xbb8

    goto :goto_1

    .line 111
    :cond_1
    const-wide/16 v2, 0x3a98

    .line 109
    :goto_1
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 116
    return v0
.end method

.method protected refresh(ZJII)V
    .locals 0

    .line 67
    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result p2

    if-nez p2, :cond_0

    .line 68
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p2, p3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 69
    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 70
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p2, p3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 72
    :cond_1
    :goto_0
    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p4, p3, :cond_2

    .line 73
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, p3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p1, p3}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_1

    .line 75
    :cond_2
    const/4 p5, 0x2

    if-ne p4, p5, :cond_3

    .line 76
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 77
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p1, p3}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_1

    .line 78
    :cond_3
    if-eqz p1, :cond_4

    if-nez p4, :cond_5

    .line 79
    :cond_4
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 80
    iget p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-nez p1, :cond_5

    .line 81
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string p3, ""

    invoke-virtual {p1, p3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    :cond_5
    :goto_1
    iget p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-eqz p1, :cond_7

    if-eqz p4, :cond_7

    .line 86
    iget p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-ne p1, p4, :cond_6

    .line 88
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string p3, ""

    invoke-virtual {p1, p3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 91
    :cond_6
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const p3, 0x7f120ead    # @string/usb_switching_failed 'Couldn't switch'

    invoke-virtual {p1, p3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 93
    :goto_2
    iput p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    .line 94
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFailureCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    :cond_7
    return-void
.end method
