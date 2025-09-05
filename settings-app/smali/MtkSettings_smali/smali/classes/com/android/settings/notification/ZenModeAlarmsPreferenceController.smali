.class public Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeAlarmsPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 35
    const-string v0, "zen_mode_alarms"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "zen_mode_alarms"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 71
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 72
    sget-boolean p2, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 73
    const-string p2, "PrefControllerMixin"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrefChange allowAlarms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x4ca

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 78
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 v0, 0x20

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/notification/ZenModeBackend;->saveSoundPolicy(IZ)V

    .line 79
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 52
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->getZenMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 63
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 59
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 60
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 61
    goto :goto_0

    .line 55
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 56
    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 57
    nop

    .line 67
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
