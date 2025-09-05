.class public Lcom/android/settings/accessibility/EdgeTypePreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "EdgeTypePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 43
    const p2, 0x7f030034    # @array/captioning_edge_type_selector_values

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/EdgeTypePreference;->setValues([I)V

    .line 44
    const p2, 0x7f030033    # @array/captioning_edge_type_selector_titles

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/EdgeTypePreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 45
    const p1, 0x7f0d00a4    # @layout/grid_picker_dialog 'res/layout/grid_picker_dialog.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/EdgeTypePreference;->setDialogLayoutResource(I)V

    .line 46
    const p1, 0x7f0d0111    # @layout/preset_picker_item 'res/layout/preset_picker_item.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/EdgeTypePreference;->setListItemLayoutResource(I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onBindListItem(Landroid/view/View;I)V
    .locals 3

    .line 56
    const v0, 0x7f0a026f    # @id/preview

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    .line 58
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SubtitleView;->setForegroundColor(I)V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SubtitleView;->setBackgroundColor(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/accessibility/EdgeTypePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 62
    const/high16 v2, 0x42000000    # 32.0f

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/EdgeTypePreference;->getValueAt(I)I

    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SubtitleView;->setEdgeType(I)V

    .line 66
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SubtitleView;->setEdgeColor(I)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/EdgeTypePreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 69
    if-eqz p2, :cond_0

    .line 70
    const v0, 0x7f0a034a    # @id/summary

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/accessibility/EdgeTypePreference;->getValue()I

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
