.class public Lcom/android/settings/nfc/PaymentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PaymentSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$1;

    invoke-direct {v0}, Lcom/android/settings/nfc/PaymentSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/nfc/PaymentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 51
    const/16 v0, 0x46

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 56
    const v0, 0x7f150071    # @xml/nfc_payment_settings 'res/xml/nfc_payment_settings.xml'

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    new-instance p1, Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 64
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/PaymentSettings;->setHasOptionsMenu(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/settings/nfc/NfcPaymentPreference;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/nfc/NfcPaymentPreference;-><init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend;)V

    .line 72
    const-string v1, "payment"

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcPaymentPreference;->setKey(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 74
    new-instance v0, Lcom/android/settings/nfc/NfcForegroundPreference;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/nfc/NfcForegroundPreference;-><init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend;)V

    .line 76
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 78
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 105
    const p2, 0x7f120951    # @string/nfc_payment_how_it_works 'How it works'

    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 106
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings/nfc/HowItWorks;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 108
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 109
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->onPause()V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->onResume()V

    .line 94
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 82
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00c2    # @layout/nfc_payment_empty 'res/layout/nfc_payment_empty.xml'

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0, p2}, Lcom/android/settings/nfc/PaymentSettings;->setEmptyView(Landroid/view/View;)V

    .line 88
    return-void
.end method
