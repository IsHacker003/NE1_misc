.class public Lcom/android/settings/accessibility/ColorPreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "ColorPreference.java"


# instance fields
.field private mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

.field private mPreviewEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const p1, 0x7f0d00a4    # @layout/grid_picker_dialog 'res/layout/grid_picker_dialog.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ColorPreference;->setDialogLayoutResource(I)V

    .line 44
    const p1, 0x7f0d0050    # @layout/color_picker_item 'res/layout/color_picker_item.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ColorPreference;->setListItemLayoutResource(I)V

    .line 45
    return-void
.end method


# virtual methods
.method protected getTitleAt(I)Ljava/lang/CharSequence;
    .locals 6

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ColorPreference;->getValueAt(I)I

    move-result p1

    .line 76
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 77
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 78
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1203b7    # @string/color_custom '#%1$02X%2$02X%3$02X'

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onBindListItem(Landroid/view/View;I)V
    .locals 4

    .line 115
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ColorPreference;->getValueAt(I)I

    move-result v0

    .line 116
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 118
    const v2, 0x7f0a00c7    # @id/color_swatch

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 119
    const/16 v3, 0xff

    if-ge v1, v3, :cond_0

    .line 120
    const v1, 0x7f080211    # @drawable/transparency_tileable 'res/drawable/transparency_tileable.xml'

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 122
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 126
    instance-of v3, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_1

    .line 127
    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_1

    .line 129
    :cond_1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ColorPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 133
    if-eqz p2, :cond_2

    .line 134
    const v0, 0x7f0a034a    # @id/summary

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 135
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_2
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 86
    iget-boolean v0, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewEnabled:Z

    if-eqz v0, :cond_4

    .line 87
    const v0, 0x7f0a00c6    # @id/color_preview

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v0

    .line 89
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 90
    const v1, 0x7f080211    # @drawable/transparency_tileable 'res/drawable/transparency_tileable.xml'

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_1

    .line 96
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    .line 97
    iget-object v0, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 102
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const v0, 0x3e4ccccd    # 0.2f

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 111
    :cond_4
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
