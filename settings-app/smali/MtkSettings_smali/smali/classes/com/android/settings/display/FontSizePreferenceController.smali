.class public Lcom/android/settings/display/FontSizePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FontSizePreferenceController.java"


# instance fields
.field private customFontSizePref:Lcom/mediatek/settings/ext/IDisplaySettingsExt;

.field private mContext:Landroid/content/Context;

.field private mSupportFontSizeLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/settings/display/FontSizePreferenceController;->mSupportFontSizeLevel:I

    .line 36
    iput-object p1, p0, Lcom/android/settings/display/FontSizePreferenceController;->mContext:Landroid/content/Context;

    .line 38
    iget-object p1, p0, Lcom/android/settings/display/FontSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0005    # @integer/config_support_font_size_level '4'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/FontSizePreferenceController;->mSupportFontSizeLevel:I

    .line 40
    return-void
.end method

.method private getSmallArray([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 73
    iget v0, p0, Lcom/android/settings/display/FontSizePreferenceController;->mSupportFontSizeLevel:I

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/settings/display/FontSizePreferenceController;->mSupportFontSizeLevel:I

    if-ge v1, v2, :cond_0

    .line 75
    aget-object v2, p1, v1

    aput-object v2, v0, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/settings/display/FontSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getDisplaySettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDisplaySettingsExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/FontSizePreferenceController;->customFontSizePref:Lcom/mediatek/settings/ext/IDisplaySettingsExt;

    .line 45
    iget-object v0, p0, Lcom/android/settings/display/FontSizePreferenceController;->customFontSizePref:Lcom/mediatek/settings/ext/IDisplaySettingsExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IDisplaySettingsExt;->isCustomPrefPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    return v0

    .line 48
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/android/settings/display/FontSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/android/settings/display/FontSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 56
    const v2, 0x7f030055    # @array/entries_font_size

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 57
    const v3, 0x7f030056    # @array/entryvalues_font_size

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 59
    array-length v3, v2

    .line 60
    iget v4, p0, Lcom/android/settings/display/FontSizePreferenceController;->mSupportFontSizeLevel:I

    if-ge v4, v3, :cond_0

    iget v3, p0, Lcom/android/settings/display/FontSizePreferenceController;->mSupportFontSizeLevel:I

    if-lez v3, :cond_0

    .line 61
    invoke-direct {p0, v2}, Lcom/android/settings/display/FontSizePreferenceController;->getSmallArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-direct {p0, v1}, Lcom/android/settings/display/FontSizePreferenceController;->getSmallArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_0
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v0

    .line 68
    aget-object v0, v2, v0

    return-object v0
.end method
