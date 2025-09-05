.class public abstract Lcom/android/settings/gestures/GesturePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "GesturePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# static fields
.field static final KEY_VIDEO_PAUSED:Ljava/lang/String; = "key_video_paused"


# instance fields
.field mVideoPaused:Z

.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected canHandleClicks()Z
    .locals 1

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/gestures/GesturePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/gestures/GesturePreferenceController;->getVideoPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/VideoPreference;

    iput-object p1, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    .line 56
    :cond_0
    return-void
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/gestures/GesturePreferenceController;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1206b1    # @string/gesture_setting_on 'On'

    goto :goto_0

    :cond_0
    const v1, 0x7f1206b0    # @string/gesture_setting_off 'Off'

    .line 69
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getVideoPrefKey()Ljava/lang/String;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    if-eqz p1, :cond_0

    .line 76
    const-string v0, "key_video_paused"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPaused:Z

    .line 78
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/VideoPreference;->isVideoPaused()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPaused:Z

    .line 89
    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/VideoPreference;->onViewInvisible()V

    .line 91
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    iget-boolean v1, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPaused:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/VideoPreference;->onViewVisible(Z)V

    .line 98
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    const-string v0, "key_video_paused"

    iget-boolean v1, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPaused:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 61
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/gestures/GesturePreferenceController;->canHandleClicks()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 65
    :cond_0
    return-void
.end method
