.class public Lcom/mediatek/nfc/NfcServicePreference;
.super Landroid/support/v7/preference/Preference;
.source "NfcServicePreference.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field mComponent:Landroid/content/ComponentName;

.field mSelected:Z

.field private mShowCheckBox:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/nfcsettingsadapter/ServiceEntry;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 39
    const v0, 0x7f0d00c5    # @layout/nfc_service 'res/layout/nfc_service.xml'

    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/NfcServicePreference;->setLayoutResource(I)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/NfcServicePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-virtual {p2}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/NfcServicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p2}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getWantEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mediatek/nfc/NfcServicePreference;->mSelected:Z

    .line 43
    invoke-virtual {p2}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/nfc/NfcServicePreference;->mComponent:Landroid/content/ComponentName;

    .line 44
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServicePreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 61
    const v0, 0x7f0a00b6    # @id/checkbox

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/mediatek/nfc/NfcServicePreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 62
    iget-object p1, p0, Lcom/mediatek/nfc/NfcServicePreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/mediatek/nfc/NfcServicePreference;->mSelected:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    iget-object p1, p0, Lcom/mediatek/nfc/NfcServicePreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/mediatek/nfc/NfcServicePreference;->mShowCheckBox:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 64
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mediatek/nfc/NfcServicePreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 56
    return-void
.end method

.method public setShowCheckbox(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/mediatek/nfc/NfcServicePreference;->mShowCheckBox:Z

    .line 48
    return-void
.end method
