.class public Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeSettingsFooterPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 33
    const-string v0, "footer_preference"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getFooterText()Ljava/lang/String;
    .locals 11

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 67
    const-string v1, ""

    .line 68
    nop

    .line 71
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    if-eqz v2, :cond_3

    .line 72
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 73
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 75
    sget-object v2, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f1211c4    # @string/zen_mode_settings_dnd_automatic_rule_app 'Do Not Disturb was automatically turned on by an app (%s)'

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v3

    invoke-virtual {v1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    :cond_0
    goto :goto_0

    .line 81
    :cond_1
    if-nez v2, :cond_2

    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1211c6    # @string/zen_mode_settings_dnd_manual_indefinite 'Do Not Disturb will stay on until you turn it off'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_2
    sget-object v5, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    invoke-virtual {v5, v2}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->parseManualRuleTime(Landroid/net/Uri;)J

    move-result-wide v5

    .line 86
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_3

    .line 87
    sget-object v1, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 87
    invoke-virtual {v1, v5, v6, v2}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->getFormattedTime(JI)Ljava/lang/CharSequence;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f1211c5    # @string/zen_mode_settings_dnd_manual_end_time 'Do Not Disturb is on until %s'

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v3

    invoke-virtual {v2, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_3
    :goto_0
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 99
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 101
    sget-object v7, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v8, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->isTimeRule(Landroid/net/Uri;)Z

    move-result v7

    const v8, 0x7f1211c3    # @string/zen_mode_settings_dnd_automatic_rule 'Do Not Disturb was automatically turned on by a rule (%s)'

    if-nez v7, :cond_4

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_4
    sget-object v7, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v9, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v7, v9}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->parseAutomaticRuleEndTime(Landroid/net/Uri;)J

    move-result-wide v9

    .line 108
    cmp-long v7, v9, v5

    if-lez v7, :cond_5

    .line 109
    nop

    .line 110
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v2, v5, v3

    invoke-virtual {v1, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 115
    move-wide v5, v9

    :cond_5
    goto :goto_1

    .line 116
    :cond_6
    return-object v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "footer_preference"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->getZenMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 45
    const/4 v0, 0x0

    return v0

    .line 42
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->isAvailable()Z

    move-result v0

    .line 59
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;->getFooterText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    return-void
.end method
