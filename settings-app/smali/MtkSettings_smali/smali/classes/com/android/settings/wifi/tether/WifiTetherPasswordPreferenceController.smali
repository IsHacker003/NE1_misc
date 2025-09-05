.class public Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherPasswordPreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;


# instance fields
.field private mPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    .line 42
    return-void
.end method

.method private static generateRandomPassword()Ljava/lang/String;
    .locals 4

    .line 111
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updatePasswordDisplay(Landroid/support/v7/preference/EditTextPreference;)V
    .locals 2

    .line 117
    check-cast p1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setIsSummaryPassword(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setVisible(Z)V

    goto :goto_0

    .line 124
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setIsSummaryPassword(Z)V

    .line 125
    const v1, 0x7f121056    # @string/wifi_hotspot_no_password_subtext 'No password set'

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(I)V

    .line 126
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setVisible(Z)V

    .line 128
    :goto_0
    return-void
.end method


# virtual methods
.method public getPasswordValidated(I)Ljava/lang/String;
    .locals 0

    .line 92
    if-nez p1, :cond_0

    .line 93
    const-string p1, ""

    return-object p1

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->isTextValid(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 95
    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->generateRandomPassword()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    .line 96
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast p1, Landroid/support/v7/preference/EditTextPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroid/support/v7/preference/EditTextPreference;)V

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "wifi_tether_network_password"

    return-object v0
.end method

.method public isTextValid(Ljava/lang/String;)Z
    .locals 0

    .line 107
    invoke-static {p1}, Lcom/android/settings/wifi/WifiUtils;->isHotspotPasswordValid(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 76
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    .line 77
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast p1, Landroid/support/v7/preference/EditTextPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroid/support/v7/preference/EditTextPreference;)V

    .line 78
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p1}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    .line 79
    const/4 p1, 0x1

    return p1
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 138
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    const/16 v2, 0xd

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    .line 141
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast p1, Landroid/support/v7/preference/EditTextPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroid/support/v7/preference/EditTextPreference;)V

    .line 143
    :cond_0
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    .line 133
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast p1, Landroid/support/v7/preference/EditTextPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroid/support/v7/preference/EditTextPreference;)V

    .line 134
    return-void
.end method

.method public updateDisplay()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    .line 57
    const-string v0, "PrefControllerMixin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating password in Preference, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->generateRandomPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPassword:Ljava/lang/String;

    .line 60
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setValidator(Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setIsPassword(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setIsSummaryPassword(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updatePasswordDisplay(Landroid/support/v7/preference/EditTextPreference;)V

    .line 72
    return-void
.end method

.method public updateVisibility(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 103
    return-void
.end method
