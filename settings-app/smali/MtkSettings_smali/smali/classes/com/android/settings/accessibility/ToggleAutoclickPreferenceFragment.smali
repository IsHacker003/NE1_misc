.class public Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleAutoclickPreferenceFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final mAutoclickPreferenceSummaries:[I


# instance fields
.field private mDelay:Lcom/android/settings/widget/SeekBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100003    # @plurals/accessibilty_autoclick_preference_subtitle_extremely_short_delay
        0x7f100007    # @plurals/accessibilty_autoclick_preference_subtitle_very_short_delay
        0x7f100005    # @plurals/accessibilty_autoclick_preference_subtitle_short_delay
        0x7f100004    # @plurals/accessibilty_autoclick_preference_subtitle_long_delay
        0x7f100006    # @plurals/accessibilty_autoclick_preference_subtitle_very_long_delay
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method private delayToSeekBarProgress(I)I
    .locals 0

    .line 178
    add-int/lit16 p1, p1, -0xc8

    div-int/lit8 p1, p1, 0x64

    return p1
.end method

.method static getAutoclickPreferenceSummary(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
    .locals 4

    .line 74
    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getAutoclickPreferenceSummaryIndex(I)I

    move-result v0

    .line 75
    sget-object v1, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    aget v0, v1, v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 75
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAutoclickPreferenceSummaryIndex(I)I
    .locals 3

    .line 83
    const/16 v0, 0xc8

    if-gt p0, v0, :cond_0

    .line 84
    const/4 p0, 0x0

    return p0

    .line 86
    :cond_0
    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_1

    .line 87
    sget-object p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 89
    :cond_1
    const/16 v1, 0x320

    sget-object v2, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    .line 91
    sub-int/2addr p0, v0

    div-int/2addr p0, v1

    return p0
.end method

.method private seekBarProgressToDelay(I)I
    .locals 0

    .line 170
    mul-int/lit8 p1, p1, 0x64

    add-int/lit16 p1, p1, 0xc8

    return p1
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 107
    const v0, 0x7f1206f4    # @string/help_url_autoclick ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 102
    const/16 v0, 0x14f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 112
    const v0, 0x7f150001    # @xml/accessibility_autoclick_settings 'res/xml/accessibility_autoclick_settings.xml'

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    nop

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_autoclick_delay"

    .line 119
    const/16 v1, 0x258

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 125
    const-string v0, "autoclick_delay"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    .line 126
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v1, 0x3e8

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->delayToSeekBarProgress(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->delayToSeekBarProgress(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    .line 130
    const v0, 0x7f12003d    # @string/accessibility_autoclick_description 'If you are using a mouse, you can set the cursor to take action automatically when it stops moving f ...'

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 131
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 5

    .line 135
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_autoclick_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    if-ne v0, v3, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    .line 142
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    if-ne p1, v0, :cond_0

    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_autoclick_delay"

    check-cast p2, Ljava/lang/Integer;

    .line 160
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->seekBarProgressToDelay(I)I

    move-result p2

    .line 158
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    const/4 p1, 0x1

    return p1

    .line 163
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    .line 98
    return-void
.end method

.method protected onRemoveSwitchBarToggleSwitch()V
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchBarToggleSwitch()V

    .line 147
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 148
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 152
    const-string p1, "accessibility_autoclick_enabled"

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 153
    return-void
.end method
