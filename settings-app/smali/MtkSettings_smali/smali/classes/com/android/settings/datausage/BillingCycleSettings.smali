.class public Lcom/android/settings/datausage/BillingCycleSettings;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataUsageEditController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
    }
.end annotation


# static fields
.field static final KEY_SET_DATA_LIMIT:Ljava/lang/String; = "set_data_limit"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mBillingCycle:Landroid/support/v7/preference/Preference;

.field private mDataLimit:Landroid/support/v7/preference/Preference;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataWarning:Landroid/support/v7/preference/Preference;

.field private mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

.field private mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

.field private mNetworkTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object p0
.end method

.method private setPolicyWarningBytes(J)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 206
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 192
    const/16 v0, 0x156

    return v0
.end method

.method public getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    return-object v0
.end method

.method public getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 96
    new-instance p1, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 99
    const-string v0, "network_template"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkTemplate;

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 101
    const p1, 0x7f150025    # @xml/billing_cycle 'res/xml/billing_cycle.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings;->addPreferencesFromResource(I)V

    .line 102
    const-string p1, "billing_cycle"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    .line 103
    const-string p1, "set_data_warning"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    .line 104
    iget-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    const-string p1, "data_warning"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    .line 106
    const-string p1, "set_data_limit"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    .line 107
    iget-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    const-string p1, "data_limit"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    .line 110
    iget-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    const v0, 0x7f1204cd    # @string/data_warning_footnote 'Data warning and data limit are measured by your device. This may be different from carrier data.'

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 111
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 168
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    if-ne v0, p1, :cond_1

    .line 169
    const-string p1, "BillingCycleSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataLimitPreferenceChange newValue: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 171
    if-nez p1, :cond_0

    .line 172
    invoke-virtual {p0, v3, v4}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    .line 173
    return v2

    .line 175
    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;)V

    .line 177
    return v1

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_3

    .line 179
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 180
    if-eqz p1, :cond_2

    .line 181
    iget-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->getDefaultWarningLevel()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyWarningBytes(J)V

    goto :goto_0

    .line 183
    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyWarningBytes(J)V

    .line 185
    :goto_0
    return v2

    .line 187
    :cond_3
    return v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 154
    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;)V

    .line 155
    return v1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 157
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/DataUsageEditController;Z)V

    .line 158
    return v1

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 160
    invoke-static {p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/DataUsageEditController;Z)V

    .line 161
    return v1

    .line 163
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 115
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 117
    return-void
.end method

.method setPolicyLimitBytes(J)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 200
    return-void
.end method

.method setUpForTest(Lcom/android/settingslib/NetworkPolicyEditor;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v14/preference/SwitchPreference;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iput-object p1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 85
    iput-object p2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    .line 86
    iput-object p3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    .line 87
    iput-object p4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    .line 88
    iput-object p5, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    .line 89
    iput-object p6, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    .line 90
    return-void
.end method

.method public updateDataUsage()V
    .locals 0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 221
    return-void
.end method

.method updatePrefs()V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v0

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "settings_data_usage_v2"

    invoke-static {v1, v2}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 124
    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    const v5, 0x7f120255    # @string/billing_cycle_fragment_summary 'Monthly on day %1$s'

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/datausage/BillingCycleSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    .line 130
    const-wide/16 v5, -0x1

    cmp-long v7, v0, v5

    if-eqz v7, :cond_2

    .line 131
    iget-object v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 139
    :goto_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    .line 140
    cmp-long v5, v0, v5

    if-eqz v5, :cond_3

    .line 141
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 149
    :goto_2
    return-void
.end method
