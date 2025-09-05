.class public Lcom/android/settings/development/AnimatorDurationScalePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AnimatorDurationScalePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final ANIMATOR_DURATION_SCALE_SELECTOR:I = 0x2

.field static final DEFAULT_VALUE:F = 1.0f


# instance fields
.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 48
    const-string v0, "window"

    .line 49
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001    # @array/animator_duration_scale_values

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mListValues:[Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f030000    # @array/animator_duration_scale_entries

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mListSummaries:[Ljava/lang/String;

    .line 53
    return-void
.end method

.method private updateAnimationScaleValue()V
    .locals 4

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v0

    .line 90
    nop

    .line 91
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mListValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 93
    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    .line 94
    nop

    .line 95
    nop

    .line 98
    move v1, v2

    goto :goto_1

    .line 91
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 99
    iget-object v2, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_2

    .line 101
    :catch_0
    move-exception v0

    .line 104
    :goto_2
    return-void
.end method

.method private writeAnimationScaleOption(Ljava/lang/Object;)V
    .locals 2

    .line 79
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    goto :goto_0

    .line 82
    :catch_0
    move-exception p1

    goto :goto_1

    .line 79
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->updateAnimationScaleValue()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_2

    .line 82
    :goto_1
    nop

    .line 85
    :goto_2
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "animator_duration_scale"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->writeAnimationScaleOption(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 62
    invoke-direct {p0, p2}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->writeAnimationScaleOption(Ljava/lang/Object;)V

    .line 63
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;->updateAnimationScaleValue()V

    .line 69
    return-void
.end method
