.class public Lcom/android/settings/nfc/NfcPaymentPreference;
.super Lcom/android/settingslib/CustomDialogPreference;
.source "NfcPaymentPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private mSettingsButtonView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 1

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-object p2, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 60
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p2, p0}, Lcom/android/settings/nfc/PaymentBackend;->registerCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    .line 62
    new-instance p2, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-direct {p2, p0}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;-><init>(Lcom/android/settings/nfc/NfcPaymentPreference;)V

    iput-object p2, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    .line 63
    const p2, 0x7f120953    # @string/nfc_payment_pay_with 'At a Tap & pay terminal, pay with:'

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/nfc/NfcPaymentPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 64
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 65
    const p1, 0x7f0d0102    # @layout/preference_widget_gear 'res/layout/preference_widget_gear.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreference;->setWidgetLayoutResource(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->refresh()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcPaymentPreference;)Landroid/view/LayoutInflater;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcPaymentPreference;)Lcom/android/settings/nfc/PaymentBackend;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcPaymentPreference;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 74
    const v0, 0x7f0a02f9    # @id/settings_button

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    .line 75
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->updateSettingsVisibility()V

    .line 78
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 114
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p1}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object p1

    .line 115
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object p1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 118
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception p1

    .line 122
    const-string p1, "NfcPaymentPreference"

    const-string v0, "Settings activity not found."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    :goto_0
    return-void
.end method

.method public onPaymentAppsChanged()V
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->refresh()V

    .line 110
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 102
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    return-void
.end method

.method public refresh()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v1

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 88
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->updateApps([Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 90
    :cond_0
    const v0, 0x7f12094d    # @string/nfc_payment_default 'Payment default'

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreference;->setTitle(I)V

    .line 91
    if-eqz v1, :cond_1

    .line 92
    iget-object v0, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f12094e    # @string/nfc_payment_default_not_set 'Not set'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->updateSettingsVisibility()V

    .line 97
    return-void
.end method

.method updateSettingsVisibility()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 131
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    :cond_2
    :goto_1
    return-void
.end method
