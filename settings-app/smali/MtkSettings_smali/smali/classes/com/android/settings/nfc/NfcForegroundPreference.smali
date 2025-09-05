.class public Lcom/android/settings/nfc/NfcForegroundPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "NfcForegroundPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;


# instance fields
.field private final mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 3

    .line 29
    invoke-direct {p0, p1}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 31
    iget-object p1, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p1, p0}, Lcom/android/settings/nfc/PaymentBackend;->registerCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120958    # @string/nfc_payment_use_default 'Use default'

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/NfcForegroundPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    const/4 p1, 0x2

    new-array p2, p1, [Ljava/lang/CharSequence;

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120950    # @string/nfc_payment_favor_open 'Except when another payment app is open'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f12094f    # @string/nfc_payment_favor_default 'Always'

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p2, v2

    .line 34
    invoke-virtual {p0, p2}, Lcom/android/settings/nfc/NfcForegroundPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 38
    new-array p1, p1, [Ljava/lang/CharSequence;

    const-string p2, "1"

    aput-object p2, p1, v1

    const-string p2, "0"

    aput-object p2, p1, v2

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/NfcForegroundPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->refresh()V

    .line 40
    invoke-virtual {p0, p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onPaymentAppsChanged()V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->refresh()V

    .line 46
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 60
    check-cast p2, Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/android/settings/nfc/NfcForegroundPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/NfcForegroundPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    .line 63
    return v0
.end method

.method refresh()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcForegroundPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcForegroundPreference;->setValue(Ljava/lang/String;)V

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcForegroundPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method
