.class public Lcom/android/settings/notification/ZenModeEventsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeEventsPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 36
    const-string v0, "zen_mode_events"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "zen_mode_events"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 69
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 70
    sget-boolean p2, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 71
    const-string p2, "PrefControllerMixin"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrefChange allowEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeEventsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventsPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0xa8

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 75
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeEventsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/notification/ZenModeBackend;->saveSoundPolicy(IZ)V

    .line 76
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 53
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventsPreferenceController;->getZenMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 61
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 57
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 58
    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 59
    nop

    .line 65
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
