.class public Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;
.super Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;
.source "CustomToggleFontSizePreferenceFragment.java"


# instance fields
.field private mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method

.method public static fontSizeValueToIndex(F[Ljava/lang/String;)I
    .locals 6

    .line 108
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 109
    const/4 v1, 0x1

    move v2, v0

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 110
    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 111
    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    cmpg-float v2, p0, v2

    if-gez v2, :cond_0

    .line 112
    sub-int/2addr v0, v1

    return v0

    .line 114
    :cond_0
    nop

    .line 109
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    .line 116
    :cond_1
    array-length p0, p1

    sub-int/2addr p0, v1

    return p0
.end method


# virtual methods
.method protected commit()V
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    const-string v1, "font_scale"

    iget-object v2, p0, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->mValues:[F

    iget v3, p0, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->mCurrentIndex:I

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 90
    return-void
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 1

    .line 77
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 78
    iget-object p1, p0, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->mValues:[F

    aget p1, p1, p2

    iput p1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 79
    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 94
    const v0, 0x7f120703    # @string/help_url_font_size ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 99
    const/16 v0, 0x154

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const p1, 0x7f0d00a2    # @layout/font_size_activity 'res/layout/font_size_activity.xml'

    iput p1, p0, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->mActivityLayoutResId:I

    .line 57
    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const v1, 0x7f0d00a3    # @layout/font_size_preview 'res/layout/font_size_preview.xml'

    aput v1, p1, v0

    iput-object p1, p0, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->mPreviewSampleResIds:[I

    .line 59
    invoke-virtual {p0}, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 62
    const v2, 0x7f030046    # @array/custom_entries_font_size

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->mEntries:[Ljava/lang/String;

    .line 63
    const v2, 0x7f030047    # @array/custom_entryvalues_font_size

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 64
    const-string v2, "font_scale"

    .line 65
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 66
    invoke-static {v1, p1}, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->mInitialIndex:I

    .line 67
    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->mValues:[F

    .line 68
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->mValues:[F

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f120dfa    # @string/title_font_size 'Font size'

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 72
    return-void
.end method
