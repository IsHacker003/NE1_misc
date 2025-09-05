.class public Lcom/android/settings/security/trustagent/TrustAgentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TrustAgentSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;
    }
.end annotation


# instance fields
.field private final mActiveAgents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableAgents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 52
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    return-void
.end method

.method private findAvailableTrustAgents()Landroid/util/ArrayMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;",
            ">;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 158
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.trust.TrustAgentService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 162
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 163
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 164
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 165
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 166
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 167
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v6, :cond_0

    .line 168
    goto :goto_1

    .line 170
    :cond_0
    iget-object v6, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    invoke-virtual {v6, v5, v0}, Lcom/android/settings/security/trustagent/TrustAgentManager;->shouldProvideTrust(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 171
    goto :goto_1

    .line 173
    :cond_1
    iget-object v6, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    invoke-virtual {v6, v5}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    .line 174
    new-instance v7, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;

    invoke-direct {v7}, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;-><init>()V

    .line 175
    invoke-virtual {v5, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->label:Ljava/lang/CharSequence;

    .line 176
    invoke-virtual {v5, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v7, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 177
    iput-object v6, v7, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    .line 178
    invoke-virtual {v2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    :cond_2
    return-object v2
.end method

.method private loadActiveAgents()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 145
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 144
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 149
    :cond_0
    return-void
.end method

.method private saveActiveAgents()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    .line 153
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    .line 154
    return-void
.end method

.method private updateAgents()V
    .locals 10

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->findAvailableTrustAgents()Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_1

    .line 109
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->loadActiveAgents()V

    .line 112
    nop

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "trust_agents"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    .line 114
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 116
    const/16 v2, 0x10

    .line 117
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 116
    invoke-static {v0, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 119
    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 120
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 121
    iget-object v5, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;

    .line 122
    new-instance v6, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 124
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/settingslib/RestrictedSwitchPreference;->useAdminDisabledSummary(Z)V

    .line 125
    iput-object v6, v5, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->preference:Landroid/support/v14/preference/SwitchPreference;

    .line 126
    invoke-virtual {v6, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setPersistent(Z)V

    .line 127
    iget-object v7, v5, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/android/settingslib/RestrictedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v7, v5, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/android/settingslib/RestrictedSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {v6, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setPersistent(Z)V

    .line 130
    invoke-virtual {v6, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    iget-object v7, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v8, v5, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 133
    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v8, 0x0

    iget-object v9, v5, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    .line 134
    invoke-virtual {v7, v8, v9}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_2

    .line 135
    invoke-virtual {v6, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 136
    invoke-virtual {v6, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 139
    :cond_2
    iget-object v5, v5, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->preference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    :cond_3
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 83
    const v0, 0x7f120718    # @string/help_url_trust_agent ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 78
    const/16 v0, 0x5b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object p1

    .line 92
    invoke-interface {p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    .line 94
    const p1, 0x7f1500ab    # @xml/trust_agent_settings 'res/xml/trust_agent_settings.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->addPreferencesFromResource(I)V

    .line 95
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 185
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 187
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 188
    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;

    .line 189
    iget-object v4, v3, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->preference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v4, p1, :cond_2

    .line 190
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object p2, v3, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object p2, v3, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object p2, v3, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 197
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->saveActiveAgents()V

    .line 198
    const/4 p1, 0x1

    return p1

    .line 187
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_3
    return v1
.end method

.method public onResume()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 99
    const-string v0, "dummy_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->removePreference(Ljava/lang/String;)Z

    .line 100
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentSettings;->updateAgents()V

    .line 101
    return-void
.end method
