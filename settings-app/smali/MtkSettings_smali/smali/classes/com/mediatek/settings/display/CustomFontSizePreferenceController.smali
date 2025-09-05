.class public Lcom/mediatek/settings/display/CustomFontSizePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "CustomFontSizePreferenceController.java"


# static fields
.field private static final KEY_CUSTOM_FONT_SIZE:Ljava/lang/String; = "custom_font_size"


# instance fields
.field private customFontSizePref:Lcom/mediatek/settings/ext/IDisplaySettingsExt;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/mediatek/settings/display/CustomFontSizePreferenceController;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mediatek/settings/display/CustomFontSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getDisplaySettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDisplaySettingsExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/display/CustomFontSizePreferenceController;->customFontSizePref:Lcom/mediatek/settings/ext/IDisplaySettingsExt;

    .line 60
    iget-object v0, p0, Lcom/mediatek/settings/display/CustomFontSizePreferenceController;->customFontSizePref:Lcom/mediatek/settings/ext/IDisplaySettingsExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IDisplaySettingsExt;->isCustomPrefPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/mediatek/settings/display/CustomFontSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/mediatek/settings/display/CustomFontSizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 71
    const v2, 0x7f030046    # @array/custom_entries_font_size

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 72
    const v3, 0x7f030047    # @array/custom_entryvalues_font_size

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/mediatek/settings/accessibility/CustomToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v0

    .line 75
    aget-object v0, v2, v0

    return-object v0
.end method
