.class Lcom/mediatek/nfc/SecurityItemPreference;
.super Landroid/support/v7/preference/Preference;
.source "CardEmulationSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mChecked:Z

.field private mPreferenceButton:Landroid/widget/RadioButton;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mTitleValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 405
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 399
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 400
    iput-object p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 401
    const-string p1, ""

    iput-object p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 402
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    .line 406
    const p1, 0x7f0d0047    # @layout/card_emulation_item 'res/layout/card_emulation_item.xml'

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/SecurityItemPreference;->setLayoutResource(I)V

    .line 407
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 446
    iget-boolean v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 411
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 412
    const v0, 0x7f0a026c    # @id/preference_title

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 413
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    const v0, 0x7f0a026b    # @id/preference_radiobutton

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 415
    iget-object p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    iget-boolean v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 417
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 432
    invoke-virtual {p0}, Lcom/mediatek/nfc/SecurityItemPreference;->isChecked()Z

    move-result p1

    .line 434
    xor-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    .line 435
    const-string p1, "@M_SecurityItemPreference"

    const-string v0, "button.onClick return"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void

    .line 439
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/SecurityItemPreference;->setChecked(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/SecurityItemPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 441
    const-string p1, "@M_SecurityItemPreference"

    const-string v0, "button.onClick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 451
    const-string v0, "@M_SecurityItemPreference"

    const-string v2, "setChecked return"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iput-boolean p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    .line 453
    return v1

    .line 456
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    if-eq v0, p1, :cond_1

    .line 457
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 458
    iput-boolean p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    .line 459
    const/4 p1, 0x1

    return p1

    .line 461
    :cond_1
    return v1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 422
    iput-object p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    iput-object p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 426
    iget-object p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :cond_1
    return-void
.end method
