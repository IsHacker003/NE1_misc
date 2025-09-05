.class public Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "MagnificationNavbarPreferenceController.java"


# instance fields
.field private mIsFromSUW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mIsFromSUW:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isApplicable(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_0
    const/4 v0, 0x2

    .line 67
    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 80
    nop

    .line 81
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mIsFromSUW:Z

    if-eqz v0, :cond_0

    .line 82
    const v0, 0x7f120061    # @string/accessibility_screen_magnification_navbar_short_summary 'Tap a button to zoom'

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->isChecked()Z

    move-result v0

    .line 85
    if-eqz v0, :cond_1

    const v0, 0x7f12004b    # @string/accessibility_feature_state_on 'On'

    goto :goto_0

    .line 86
    :cond_1
    const v0, 0x7f12004a    # @string/accessibility_feature_state_off 'Off'

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 53
    const-string v0, "preference_key"

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "title_res"

    const v1, 0x7f120063    # @string/accessibility_screen_magnification_navbar_title 'Magnify with button'

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    const-string v0, "summary_res"

    const v1, 0x7f120062    # @string/accessibility_screen_magnification_navbar_summary 'When magnification is turned on, use the Accessibility button at the bottom of the screen to quickly ...'

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string v0, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    const-string v0, "from_suw"

    iget-boolean v1, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mIsFromSUW:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isChecked()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isChecked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_magnification_navbar_preference_screen"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v0, v1, p1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->setChecked(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setIsFromSUW(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mIsFromSUW:Z

    .line 47
    return-void
.end method
