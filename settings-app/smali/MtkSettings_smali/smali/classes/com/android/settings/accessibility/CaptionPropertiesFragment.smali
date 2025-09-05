.class public Lcom/android/settings/accessibility/CaptionPropertiesFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;


# instance fields
.field private mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mCustom:Landroid/support/v7/preference/PreferenceCategory;

.field private mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

.field private mFontSize:Landroid/support/v7/preference/ListPreference;

.field private mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

.field private mLocale:Lcom/android/settings/accessibility/LocalePreference;

.field private mPreset:Lcom/android/settings/accessibility/PresetPreference;

.field private mPreviewText:Lcom/android/internal/widget/SubtitleView;

.field private mPreviewViewport:Landroid/view/View;

.field private mPreviewWindow:Landroid/view/View;

.field private mShowingCustom:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mTypeface:Landroid/support/v7/preference/ListPreference;

.field private mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/SwitchBar;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    return-object p0
.end method

.method public static applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V
    .locals 3

    .line 212
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    .line 214
    invoke-virtual {p1}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 215
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 216
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    .line 217
    if-eqz p2, :cond_0

    .line 219
    const/16 v1, 0x9

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    const/16 v2, 0x10

    .line 220
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    mul-int/2addr v2, p2

    .line 219
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr p2, v1

    .line 221
    const v1, 0x3d5a511a    # 0.0533f

    mul-float/2addr p2, v1

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 222
    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070084    # @dimen/caption_preview_text_size '48.0dp'

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 225
    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 228
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p0

    .line 229
    const p2, 0x7f120370    # @string/captioning_preview_characters 'Aa'

    if-eqz p0, :cond_1

    .line 230
    invoke-static {p3, p0, p2}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 232
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    goto :goto_1

    .line 234
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    .line 236
    :goto_1
    return-void
.end method

.method private initializeAllPreferences()V
    .locals 9

    .line 265
    const-string v0, "captioning_locale"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/LocalePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    .line 266
    const-string v0, "captioning_font_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 269
    const v1, 0x7f03003a    # @array/captioning_preset_selector_values

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 270
    const v2, 0x7f030039    # @array/captioning_preset_selector_titles

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 271
    const-string v3, "captioning_preset"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/PresetPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    .line 272
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/accessibility/PresetPreference;->setValues([I)V

    .line 273
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/PresetPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 275
    const-string v1, "custom"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    .line 276
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 278
    const v2, 0x7f030032    # @array/captioning_color_selector_values

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 279
    const v3, 0x7f030031    # @array/captioning_color_selector_titles

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 280
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v5, "captioning_foreground_color"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 281
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 282
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v4, v2}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 284
    const v4, 0x7f030038    # @array/captioning_opacity_selector_values

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 285
    const v5, 0x7f030037    # @array/captioning_opacity_selector_titles

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v6, "captioning_foreground_opacity"

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    .line 288
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v5, v0}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 289
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v5, v4}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 291
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v6, "captioning_edge_color"

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 292
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v5, v3}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 293
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v5, v2}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 296
    array-length v5, v2

    add-int/2addr v5, v1

    new-array v5, v5, [I

    .line 297
    array-length v6, v3

    add-int/2addr v6, v1

    new-array v6, v6, [Ljava/lang/String;

    .line 298
    array-length v7, v2

    const/4 v8, 0x0

    invoke-static {v2, v8, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    array-length v2, v3

    invoke-static {v3, v8, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    aput v8, v5, v8

    .line 301
    const v1, 0x7f1203c3    # @string/color_none 'None'

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v8

    .line 302
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v2, "captioning_background_color"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 303
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v5}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 306
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v2, "captioning_background_opacity"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    .line 307
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 310
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v2, "captioning_window_color"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 311
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 312
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v5}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 314
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v2, "captioning_window_opacity"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    .line 315
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v1, "captioning_edge_type"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/EdgeTypePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    .line 319
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v1, "captioning_typeface"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/ListPreference;

    .line 320
    return-void
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V

    .line 256
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 257
    return-void
.end method

.method private installUpdateListeners()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/PresetPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/EdgeTypePreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 334
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/LocalePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 336
    return-void
.end method

.method private mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I
    .locals 1

    .line 399
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result p1

    .line 400
    invoke-virtual {p2}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result p2

    .line 403
    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    const p1, 0xffff00

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    or-int/2addr p1, p2

    goto :goto_0

    .line 406
    :cond_0
    if-nez p1, :cond_1

    .line 408
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    goto :goto_0

    .line 411
    :cond_1
    const v0, 0xffffff

    and-int/2addr p1, v0

    const/high16 v0, -0x1000000

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    .line 413
    :goto_0
    return p1
.end method

.method private parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V
    .locals 3

    .line 379
    invoke-static {p3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    const v1, 0xffffff

    if-nez v0, :cond_0

    .line 381
    nop

    .line 382
    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x18

    .line 394
    move v0, v1

    goto :goto_0

    .line 383
    :cond_0
    ushr-int/lit8 v0, p3, 0x18

    if-nez v0, :cond_1

    .line 385
    const/4 v0, 0x0

    .line 386
    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x18

    goto :goto_0

    .line 389
    :cond_1
    const/high16 v0, -0x1000000

    or-int v2, p3, v0

    .line 390
    and-int/2addr p3, v0

    .line 394
    move v0, v2

    :goto_0
    or-int/2addr p3, v1

    invoke-virtual {p2, p3}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    .line 395
    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    .line 396
    return-void
.end method

.method private refreshPreviewText()V
    .locals 5

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 181
    if-nez v0, :cond_0

    .line 183
    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 187
    if-eqz v1, :cond_3

    .line 188
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v2

    .line 189
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    invoke-static {v3, v1, v4, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    .line 191
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 192
    const v3, 0x7f120371    # @string/captioning_preview_text 'Captions will look like this'

    if-eqz v2, :cond_1

    .line 193
    invoke-static {v0, v2, v3}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 195
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 204
    :cond_2
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 205
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 208
    :cond_3
    :goto_1
    return-void
.end method

.method private refreshShowingCustom()V
    .locals 4

    .line 417
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 418
    move v0, v2

    goto :goto_0

    .line 417
    :cond_0
    nop

    .line 418
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-eqz v3, :cond_1

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 420
    iput-boolean v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    goto :goto_1

    .line 421
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-nez v0, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 423
    iput-boolean v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 425
    :cond_2
    :goto_1
    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 261
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 262
    return-void
.end method

.method private updateAllPreferences()V
    .locals 5

    .line 339
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v0

    .line 340
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/PresetPreference;->setValue(I)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    .line 343
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 346
    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/EdgeTypePreference;->setValue(I)V

    .line 348
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    .line 350
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v1

    const v2, 0xffffff

    if-eqz v1, :cond_0

    .line 351
    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_0

    .line 352
    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v3, v4, v1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 354
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_1

    .line 356
    :cond_1
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v3, v4, v1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 358
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 359
    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    nop

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 362
    iget-object v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 363
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/ListPreference;

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    .line 367
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 101
    const/4 v0, 0x3

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 156
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 158
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result p1

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 160
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 161
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v1, 0x7f12003f    # @string/accessibility_caption_master_switch_title 'Use captions'

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 168
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->installSwitchBarToggleSwitch()V

    .line 171
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const-string p1, "captioning"

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 110
    const p1, 0x7f15002c    # @xml/captioning_settings 'res/xml/captioning_settings.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->addPreferencesFromResource(I)V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->initializeAllPreferences()V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->installUpdateListeners()V

    .line 115
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 120
    const v0, 0x7f0d0046    # @layout/captioning_preview 'res/layout/captioning_preview.xml'

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 124
    instance-of v1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 128
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 129
    const p2, 0x7f0a028c    # @id/properties_fragment

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 132
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .line 175
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 176
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->removeSwitchBarToggleSwitch()V

    .line 177
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 252
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/ListPreference;

    if-ne v1, p1, :cond_0

    .line 458
    const-string p1, "accessibility_captioning_typeface"

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    if-ne v1, p1, :cond_1

    .line 461
    const-string p1, "accessibility_captioning_font_scale"

    check-cast p2, Ljava/lang/String;

    .line 463
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 461
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-ne v1, p1, :cond_2

    .line 465
    const-string p1, "accessibility_captioning_locale"

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 469
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 470
    const/4 p1, 0x1

    return p1
.end method

.method public onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V
    .locals 2

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_7

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_0

    goto :goto_2

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_6

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_1

    goto :goto_1

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_2

    goto :goto_0

    .line 442
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_3

    .line 443
    const-string p1, "accessibility_captioning_edge_color"

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 444
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-ne v1, p1, :cond_4

    .line 445
    const-string p1, "accessibility_captioning_preset"

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 446
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    goto :goto_3

    .line 447
    :cond_4
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    if-ne v1, p1, :cond_8

    .line 448
    const-string p1, "accessibility_captioning_edge_type"

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 439
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object p2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result p1

    .line 440
    const-string p2, "accessibility_captioning_window_color"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 442
    goto :goto_3

    .line 435
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object p2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result p1

    .line 436
    const-string p2, "accessibility_captioning_background_color"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 438
    goto :goto_3

    .line 431
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object p2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result p1

    .line 432
    const-string p2, "accessibility_captioning_foreground_color"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    nop

    .line 451
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 452
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 137
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 139
    iget-object p2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p2}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result p2

    .line 140
    const v0, 0x7f0a0271    # @id/preview_text

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 141
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 143
    const p2, 0x7f0a0273    # @id/preview_window

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    .line 144
    const p2, 0x7f0a0272    # @id/preview_viewport

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    .line 145
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    new-instance p2, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;

    invoke-direct {p2, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 152
    return-void
.end method
