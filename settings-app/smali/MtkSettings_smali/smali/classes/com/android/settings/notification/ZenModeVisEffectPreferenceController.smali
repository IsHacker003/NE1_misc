.class public Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeVisEffectPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field protected final mEffect:I

.field protected final mKey:Ljava/lang/String;

.field protected final mMetricsCategory:I

.field protected final mParentSuppressedEffects:[I

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 43
    iput-object p3, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mKey:Ljava/lang/String;

    .line 44
    iput p4, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mEffect:I

    .line 45
    iput p5, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mMetricsCategory:I

    .line 46
    iput-object p6, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mParentSuppressedEffects:[I

    .line 47
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 67
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 56
    iget v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mEffect:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112007f    # @android:bool/config_localDisplaysPrivate

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 57
    return v0

    .line 60
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 91
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 93
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mMetricsCategory:I

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 94
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mEffect:I

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/notification/ZenModeBackend;->saveVisualEffectsPolicy(IZ)V

    .line 95
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 8

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget v1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mEffect:I

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->isVisualEffectSuppressed(I)Z

    move-result v0

    .line 73
    nop

    .line 74
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mParentSuppressedEffects:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mParentSuppressedEffects:[I

    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_1

    aget v6, v1, v4

    .line 76
    iget-object v7, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/ZenModeBackend;->isVisualEffectSuppressed(I)Z

    move-result v6

    or-int/2addr v5, v6

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    :cond_0
    move v5, v2

    :cond_1
    if-eqz v5, :cond_2

    .line 80
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 81
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    .line 82
    check-cast p1, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    goto :goto_1

    .line 84
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    .line 85
    check-cast p1, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 87
    :goto_1
    return-void
.end method
