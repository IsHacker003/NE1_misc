.class public Lcom/android/settings/nfc/AndroidBeamEnabler;
.super Lcom/android/settings/nfc/BaseNfcEnabler;
.source "AndroidBeamEnabler.java"


# instance fields
.field private final mBeamDisallowedBySystem:Z

.field private final mPreference:Lcom/android/settingslib/RestrictedPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedPreference;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/BaseNfcEnabler;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    .line 39
    const-string p2, "no_outgoing_beam"

    .line 40
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 39
    invoke-static {p1, p2, v0}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mBeamDisallowedBySystem:Z

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeamEnabler;->isNfcAvailable()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 44
    return-void

    .line 46
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mBeamDisallowedBySystem:Z

    if-eqz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 49
    :cond_1
    return-void
.end method


# virtual methods
.method protected handleNfcStateChanged(I)V
    .locals 2

    .line 53
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 75
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_1

    .line 59
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mBeamDisallowedBySystem:Z

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const-string v0, "no_outgoing_beam"

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 65
    :goto_0
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const v0, 0x7f1200ed    # @string/android_beam_on_summary 'Ready to transmit app content via NFC'

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    goto :goto_1

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const v0, 0x7f1200ec    # @string/android_beam_off_summary 'Off'

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    .line 70
    goto :goto_1

    .line 72
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 73
    goto :goto_1

    .line 55
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 56
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const v0, 0x7f1200e9    # @string/android_beam_disabled_summary 'Unavailable because NFC is turned off'

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    .line 57
    nop

    .line 78
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
