.class public Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeRepeatCallersPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mBackend:Lcom/android/settings/notification/ZenModeBackend;

.field private final mRepeatCallersThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 1

    .line 41
    const-string v0, "zen_mode_repeat_callers"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 43
    iput p3, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mRepeatCallersThreshold:I

    .line 44
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    .line 45
    return-void
.end method

.method private setRepeatCallerSummary(Landroid/support/v7/preference/Preference;)V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mRepeatCallersThreshold:I

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 103
    const v2, 0x7f12119f    # @string/zen_mode_repeat_callers_summary 'If the same person calls a second time within a %d minute period'

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 60
    const-string v0, "zen_mode_repeat_callers"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->setRepeatCallerSummary(Landroid/support/v7/preference/Preference;)V

    .line 61
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "zen_mode_repeat_callers"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 92
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 93
    sget-boolean p2, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 94
    const-string p2, "PrefControllerMixin"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrefChange allowRepeatCallers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0xab

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 98
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 v0, 0x10

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/notification/ZenModeBackend;->saveSoundPolicy(IZ)V

    .line 99
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 67
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->getZenMode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    .line 77
    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityCallSenders()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    move v0, v2

    goto :goto_0

    .line 71
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 72
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 73
    goto :goto_1

    .line 77
    :cond_0
    nop

    .line 79
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 81
    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRepeatCallersPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 88
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
