.class public Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenAutomaticRuleHeaderPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$RuleNameChangeListener;
    }
.end annotation


# instance fields
.field private final KEY:Ljava/lang/String;

.field private mController:Lcom/android/settings/widget/EntityHeaderController;

.field private final mFragment:Landroid/support/v14/preference/PreferenceFragment;

.field private mId:Ljava/lang/String;

.field private mRule:Landroid/app/AutomaticZenRule;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 51
    const-string v0, "pref_app_header"

    invoke-direct {p0, p1, v0, p3}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 43
    const-string p1, "pref_app_header"

    iput-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->KEY:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)Landroid/support/v14/preference/PreferenceFragment;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)Landroid/app/AutomaticZenRule;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mId:Ljava/lang/String;

    return-object p0
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    .line 104
    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f0801a5    # @drawable/ic_timelapse 'res/drawable/ic_timelapse.xml'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f0800f7    # @drawable/ic_event 'res/drawable/ic_event.xml'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 112
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string v0, "PrefControllerMixin"

    const-string v1, "Unable to load icon - PackageManager.NameNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "pref_app_header"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    .line 122
    iput-object p2, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mId:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-nez v0, :cond_0

    .line 67
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    if-eqz v0, :cond_2

    .line 71
    check-cast p1, Lcom/android/settings/applications/LayoutPreference;

    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mController:Lcom/android/settings/widget/EntityHeaderController;

    const v1, 0x7f0a0136    # @id/entity_header

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    .line 75
    invoke-virtual {v0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    .line 76
    invoke-virtual {p1, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 75
    invoke-static {v0, v2, p1}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mController:Lcom/android/settings/widget/EntityHeaderController;

    .line 78
    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mController:Lcom/android/settings/widget/EntityHeaderController;

    new-instance v0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$1;-><init>(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setEditZenRuleNameListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/EntityHeaderController;

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mController:Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {p0}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    .line 88
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    .line 89
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setUid(I)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    const/4 v2, 0x2

    .line 92
    invoke-virtual {p1, v2, v0}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    .line 94
    invoke-virtual {v2}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;

    move-result-object p1

    .line 96
    invoke-virtual {p1, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_2
    return-void
.end method
