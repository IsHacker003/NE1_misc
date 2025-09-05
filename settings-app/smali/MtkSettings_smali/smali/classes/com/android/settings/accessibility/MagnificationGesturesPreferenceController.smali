.class public Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "MagnificationGesturesPreferenceController.java"


# instance fields
.field private mIsFromSUW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    .line 31
    return-void
.end method

.method static populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 1

    .line 85
    const-string p1, "preference_key"

    const-string v0, "accessibility_display_magnification_enabled"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string p1, "title_res"

    const v0, 0x7f12005f    # @string/accessibility_screen_magnification_gestures_title 'Magnify with triple-tap'

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string p1, "summary_res"

    const v0, 0x7f120066    # @string/accessibility_screen_magnification_summary '<b>To zoom</b>, quickly tap the screen 3 times.\n<ul><li>Drag 2 or more fingers to scroll</li><li>Pin ...'

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string p1, "video_resource"

    const v0, 0x7f110001    # @raw/accessibility_screen_magnification 'res/raw/accessibility_screen_magnification.mp4'

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 73
    nop

    .line 74
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    if-eqz v0, :cond_0

    .line 75
    const v0, 0x7f120064    # @string/accessibility_screen_magnification_short_summary 'Tap 3 times to zoom'

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->isChecked()Z

    move-result v0

    .line 78
    if-eqz v0, :cond_1

    const v0, 0x7f12004b    # @string/accessibility_feature_state_on 'On'

    goto :goto_0

    .line 79
    :cond_1
    const v0, 0x7f12004a    # @string/accessibility_feature_state_off 'Off'

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->getPreferenceKey()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 54
    const-string v0, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    const-string v0, "from_suw"

    iget-boolean v1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isChecked()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isChecked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_magnification_gestures_preference_screen"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, p1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->setChecked(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setIsFromSUW(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    .line 47
    return-void
.end method
