.class public Lcom/mediatek/settings/ext/DefaultAudioProfileExt;
.super Landroid/content/ContextWrapper;
.source "DefaultAudioProfileExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IAudioProfileExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public addCustomizedPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 25
    return-void
.end method

.method public onAudioProfileSettingPaused(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 0

    .line 38
    return-void
.end method

.method public onAudioProfileSettingResumed(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 0

    .line 34
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 29
    const/4 p1, 0x0

    return p1
.end method
