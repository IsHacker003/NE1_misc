.class public Lcom/android/settings/notification/ZenRulePreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "ZenRulePreference.java"


# static fields
.field private static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;


# instance fields
.field appExists:Z

.field final mBackend:Lcom/android/settings/notification/ZenModeBackend;

.field final mContext:Landroid/content/Context;

.field private final mDeleteListener:Landroid/view/View$OnClickListener;

.field final mId:Ljava/lang/String;

.field final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field final mName:Ljava/lang/CharSequence;

.field final mParent:Landroid/app/Fragment;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mPref:Landroid/support/v7/preference/Preference;

.field final mServiceListing:Lcom/android/settings/utils/ZenServiceListing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/ZenRulePreference;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map$Entry;Landroid/app/Fragment;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;",
            "Landroid/app/Fragment;",
            "Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Lcom/android/settings/notification/ZenRulePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenRulePreference$1;-><init>(Lcom/android/settings/notification/ZenRulePreference;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mDeleteListener:Landroid/view/View$OnClickListener;

    .line 59
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    .line 60
    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    .line 61
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AutomaticZenRule;

    .line 62
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    .line 63
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/notification/ZenRulePreference;->mId:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/android/settings/notification/ZenRulePreference;->mParent:Landroid/app/Fragment;

    .line 65
    iget-object p2, p0, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/ZenRulePreference;->mPm:Landroid/content/pm/PackageManager;

    .line 66
    new-instance p2, Lcom/android/settings/utils/ZenServiceListing;

    iget-object p3, p0, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/notification/ZenRulePreference;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {p2, p3, v0}, Lcom/android/settings/utils/ZenServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V

    iput-object p2, p0, Lcom/android/settings/notification/ZenRulePreference;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    .line 67
    iget-object p2, p0, Lcom/android/settings/notification/ZenRulePreference;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {p2}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    .line 68
    iput-object p0, p0, Lcom/android/settings/notification/ZenRulePreference;->mPref:Landroid/support/v7/preference/Preference;

    .line 69
    iput-object p4, p0, Lcom/android/settings/notification/ZenRulePreference;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenRulePreference;->setAttributes(Landroid/app/AutomaticZenRule;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenRulePreference;Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/ZenRulePreference;->showDeleteRuleDialog(Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private computeRuleSummary(Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 144
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120db8    # @string/switch_on_text 'On'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 145
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120db7    # @string/switch_off_text 'Off'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 144
    :goto_1
    return-object p1
.end method

.method private showDeleteRuleDialog(Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 102
    new-instance v0, Lcom/android/settings/notification/ZenRulePreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenRulePreference$2;-><init>(Lcom/android/settings/notification/ZenRulePreference;)V

    invoke-static {p1, p3, p2, v0}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->show(Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/notification/ZenDeleteRuleDialog$PositiveClickListener;)V

    .line 111
    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    const v0, 0x7f0d01ea    # @layout/zen_rule_widget 'res/layout/zen_rule_widget.xml'

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 87
    const v0, 0x7f0a0106    # @id/delete_zen_rule

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference;->mDeleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_0
    return-void
.end method

.method protected setAttributes(Landroid/app/AutomaticZenRule;)V
    .locals 7

    .line 114
    nop

    .line 115
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    .line 116
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v1

    .line 117
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    move v4, v3

    goto :goto_1

    .line 117
    :cond_1
    :goto_0
    nop

    .line 120
    move v4, v2

    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/notification/ZenRulePreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 121
    iget-object v6, p0, Lcom/android/settings/notification/ZenRulePreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, p1, v4, v5}, Lcom/android/settings/notification/ZenRulePreference;->computeRuleSummary(Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenRulePreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    nop

    .line 127
    iput-boolean v2, p0, Lcom/android/settings/notification/ZenRulePreference;->appExists:Z

    .line 128
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenRulePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenRulePreference;->setPersistent(Z)V

    .line 131
    if-eqz v0, :cond_2

    const-string v0, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    goto :goto_2

    .line 132
    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

    goto :goto_2

    :cond_3
    const-string v0, ""

    .line 133
    :goto_2
    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/utils/ZenServiceListing;->findService(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    .line 134
    nop

    .line 135
    invoke-static {p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->getSettingsActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object p1

    .line 136
    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference;->mId:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->getRuleIntent(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenRulePreference;->setIntent(Landroid/content/Intent;)V

    .line 138
    if-nez p1, :cond_5

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    nop

    :cond_5
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ZenRulePreference;->setSelectable(Z)V

    .line 139
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference;->mId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenRulePreference;->setKey(Ljava/lang/String;)V

    .line 140
    return-void

    .line 122
    :catch_0
    move-exception p1

    .line 123
    iput-boolean v3, p0, Lcom/android/settings/notification/ZenRulePreference;->appExists:Z

    .line 124
    return-void
.end method
