.class public Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "AssistGestureSettingsPreferenceController.java"


# static fields
.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_assist_video"

.field private static final SECURE_KEY_ASSIST:Ljava/lang/String; = "assist_gesture_enabled"

.field private static final SECURE_KEY_SILENCE:Ljava/lang/String; = "assist_gesture_silence_alerts_enabled"


# instance fields
.field private final mAssistGesturePrefKey:Ljava/lang/String;

.field mAssistOnly:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mWasAvailable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getAssistGestureFeatureProvider()Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mWasAvailable:Z

    .line 59
    iput-object p2, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mAssistGesturePrefKey:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private isAssistGestureEnabled()Z
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_gesture_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isSilenceGestureEnabled()Z
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_gesture_silence_alerts_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private updatePreference()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 103
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 71
    iput-object p1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/gestures/GesturePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 74
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 64
    iget-boolean v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mAssistOnly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/gestures/AssistGestureFeatureProvider;->isSupported(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/gestures/AssistGestureFeatureProvider;->isSensorAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 66
    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    return v0
.end method

.method public getResultPayload()Lcom/android/settings/search/ResultPayload;
    .locals 11

    .line 144
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/gestures/AssistGestureSettings;

    .line 145
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mAssistGesturePrefKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mContext:Landroid/content/Context;

    .line 146
    const v4, 0x7f12056c    # @string/display_settings 'Display'

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 148
    new-instance v0, Lcom/android/settings/search/InlineSwitchPayload;

    const-string v5, "assist_gesture_enabled"

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isAvailable()Z

    move-result v9

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/search/InlineSwitchPayload;-><init>(Ljava/lang/String;IILandroid/content/Intent;ZI)V

    .line 148
    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 128
    invoke-direct {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isAssistGestureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v3}, Lcom/android/settings/gestures/AssistGestureFeatureProvider;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    move v0, v2

    goto :goto_0

    .line 128
    :cond_0
    nop

    .line 129
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mAssistOnly:Z

    if-nez v3, :cond_3

    .line 130
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isSilenceGestureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    move v0, v1

    goto :goto_2

    .line 130
    :cond_2
    :goto_1
    nop

    .line 132
    move v0, v2

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mContext:Landroid/content/Context;

    .line 133
    if-eqz v0, :cond_4

    const v0, 0x7f1206b1    # @string/gesture_setting_on 'On'

    goto :goto_3

    :cond_4
    const v0, 0x7f1206b0    # @string/gesture_setting_off 'Off'

    .line 132
    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 1

    .line 123
    const-string v0, "gesture_assist_video"

    return-object v0
.end method

.method public isChecked()Z
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_gesture_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 78
    iget-boolean v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mWasAvailable:Z

    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->updatePreference()V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mWasAvailable:Z

    .line 84
    :cond_0
    return-void
.end method

.method public setAssistOnly(Z)Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mAssistOnly:Z

    .line 88
    return-object p0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_gesture_enabled"

    .line 118
    nop

    .line 117
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
