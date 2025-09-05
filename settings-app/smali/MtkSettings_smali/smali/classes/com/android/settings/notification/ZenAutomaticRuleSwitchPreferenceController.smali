.class public Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;
.source "ZenAutomaticRuleSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mId:Ljava/lang/String;

.field private mRule:Landroid/app/AutomaticZenRule;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 42
    const-string v0, "zen_automatic_rule_switch"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 43
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 58
    const-string v0, "zen_automatic_rule_switch"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/LayoutPreference;

    .line 59
    const v0, 0x7f0a036f    # @id/switch_bar

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 61
    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v0, 0x7f1211d7    # @string/zen_mode_use_automatic_rule 'Use rule'

    invoke-virtual {p1, v0, v0}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 65
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 69
    :goto_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 71
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "zen_automatic_rule_switch"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    .line 76
    iput-object p2, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 87
    nop

    .line 88
    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p1

    if-ne p2, p1, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, p2}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    .line 90
    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object p2, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, p2, v0}, Lcom/android/settings/notification/ZenModeBackend;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 91
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 83
    :cond_0
    return-void
.end method
