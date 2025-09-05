.class public Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;
.source "ZenModeAutomaticRulesPreferenceController.java"


# instance fields
.field protected mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 41
    const-string v0, "zen_mode_automatic_rules"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 42
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 58
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceCategory;->setPersistent(Z)V

    .line 59
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "zen_mode_automatic_rules"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 7

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->sortedRules()[Ljava/util/Map$Entry;

    move-result-object p1

    .line 67
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 68
    new-instance v3, Lcom/android/settings/notification/ZenRulePreference;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->mParent:Landroid/app/Fragment;

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/android/settings/notification/ZenRulePreference;-><init>(Landroid/content/Context;Ljava/util/Map$Entry;Landroid/app/Fragment;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    .line 70
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method
