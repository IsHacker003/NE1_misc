.class public Lcom/android/settings/development/WindowAnimationScalePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "WindowAnimationScalePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final DEFAULT_VALUE:F = 1.0f

.field static final WINDOW_ANIMATION_SCALE_SELECTOR:I


# instance fields
.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 49
    const-string v0, "window"

    .line 50
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/WindowAnimationScalePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300c2    # @array/window_animation_scale_values

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/WindowAnimationScalePreferenceController;->mListValues:[Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300c1    # @array/window_animation_scale_entries

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/WindowAnimationScalePreferenceController;->mListSummaries:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method private updateAnimationScaleValue()V
    .locals 4

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/WindowAnimationScalePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v0

    .line 91
    nop

    .line 92
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/WindowAnimationScalePreferenceController;->mListValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/android/settings/development/WindowAnimationScalePreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 94
    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    .line 95
    nop

    .line 96
    nop

    .line 99
    move v1, v2

    goto :goto_1

    .line 92
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/development/WindowAnimationScalePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 100
    iget-object v2, p0, Lcom/android/settings/development/WindowAnimationScalePreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/android/settings/development/WindowAnimationScalePreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_2

    .line 102
    :catch_0
    move-exception v0

    .line 105
    :goto_2
    return-void
.end method

.method private writeAnimationScaleOption(Ljava/lang/Object;)V
    .locals 2

    .line 80
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    goto :goto_0

    .line 83
    :catch_0
    move-exception p1

    goto :goto_1

    .line 80
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/android/settings/development/WindowAnimationScalePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/development/WindowAnimationScalePreferenceController;->updateAnimationScaleValue()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_2

    .line 83
    :goto_1
    nop

    .line 86
    :goto_2
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "window_animation_scale"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/development/WindowAnimationScalePreferenceController;->writeAnimationScaleOption(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 63
    invoke-direct {p0, p2}, Lcom/android/settings/development/WindowAnimationScalePreferenceController;->writeAnimationScaleOption(Ljava/lang/Object;)V

    .line 64
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/development/WindowAnimationScalePreferenceController;->updateAnimationScaleValue()V

    .line 70
    return-void
.end method
