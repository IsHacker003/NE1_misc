.class public Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "EnterpriseSetDefaultAppsListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/EnumMap<",
            "Lcom/android/settings/applications/EnterpriseDefaultApps;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

.field private final mParent:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

.field private mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    .line 58
    nop

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    .line 64
    iput-object p3, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 65
    iput-object p2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    .line 66
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 67
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 68
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 69
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/UserFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    .line 70
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->buildAppList()V

    .line 71
    return-void
.end method

.method private buildAppList()V
    .locals 12

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    .line 79
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/users/UserFeatureProvider;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 80
    nop

    .line 81
    const/4 v2, 0x0

    .line 83
    invoke-static {}, Lcom/android/settings/applications/EnterpriseDefaultApps;->values()[Lcom/android/settings/applications/EnterpriseDefaultApps;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move-object v7, v2

    move v2, v5

    move v6, v2

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v8, v3, v2

    .line 84
    iget-object v9, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 85
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 86
    invoke-virtual {v8}, Lcom/android/settings/applications/EnterpriseDefaultApps;->getIntents()[Landroid/content/Intent;

    move-result-object v11

    .line 85
    invoke-interface {v9, v10, v11}, Lcom/android/settings/applications/ApplicationFeatureProvider;->findPersistentPreferredActivities(I[Landroid/content/Intent;)Ljava/util/List;

    move-result-object v9

    .line 87
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 88
    goto :goto_3

    .line 90
    :cond_0
    if-nez v6, :cond_1

    .line 91
    nop

    .line 92
    iget-object v6, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/UserAppInfo;

    iget-object v7, v7, Lcom/android/settings/applications/UserAppInfo;->userInfo:Landroid/content/pm/UserInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v7, Ljava/util/EnumMap;

    const-class v6, Lcom/android/settings/applications/EnterpriseDefaultApps;

    invoke-direct {v7, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 94
    iget-object v6, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v6, 0x1

    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/UserAppInfo;

    .line 98
    iget-object v11, v11, Lcom/android/settings/applications/UserAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    invoke-virtual {v7, v8, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    :cond_3
    goto :goto_0

    .line 103
    :cond_4
    new-instance v0, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseSetDefaultAppsListPreferenceController$iIsgYxioer_lSG0lJzt4UtTCm2Y;

    invoke-direct {v0, p0}, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseSetDefaultAppsListPreferenceController$iIsgYxioer_lSG0lJzt4UtTCm2Y;-><init>(Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method private buildSummaryString(Landroid/content/Context;Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 160
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 161
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 162
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v2

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 165
    aget-object p1, v0, v1

    return-object p1

    .line 166
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 167
    const p2, 0x7f12012f    # @string/app_names_concatenation_template_2 '%1$s, %2$s'

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v4, v0, v1

    aput-object v4, v2, v1

    aget-object v0, v0, v3

    aput-object v0, v2, v3

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 170
    :cond_2
    const p2, 0x7f120130    # @string/app_names_concatenation_template_3 '%1$s, %2$s, %3$s'

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, v0, v1

    aput-object v5, v4, v1

    aget-object v1, v0, v3

    aput-object v1, v4, v3

    aget-object v0, v0, v2

    aput-object v0, v4, v2

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createPreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/util/EnumMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v7/preference/PreferenceGroup;",
            "Ljava/util/EnumMap<",
            "Lcom/android/settings/applications/EnterpriseDefaultApps;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 142
    if-nez p2, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    invoke-static {}, Lcom/android/settings/applications/EnterpriseDefaultApps;->values()[Lcom/android/settings/applications/EnterpriseDefaultApps;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 146
    invoke-virtual {p3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 147
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 148
    goto :goto_1

    .line 150
    :cond_1
    new-instance v6, Landroid/support/v7/preference/Preference;

    invoke-direct {v6, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, p1, v4, v7}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->getTitle(Landroid/content/Context;Lcom/android/settings/applications/EnterpriseDefaultApps;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    invoke-direct {p0, p1, v5}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->buildSummaryString(Landroid/content/Context;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v4}, Lcom/android/settings/applications/EnterpriseDefaultApps;->ordinal()I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 154
    invoke-virtual {v6, v2}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 155
    invoke-virtual {p2, v6}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 145
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_3
    return-void
.end method

.method private getTitle(Landroid/content/Context;Lcom/android/settings/applications/EnterpriseDefaultApps;I)Ljava/lang/String;
    .locals 2

    .line 176
    sget-object v0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController$1;->$SwitchMap$com$android$settings$applications$EnterpriseDefaultApps:[I

    invoke-virtual {p2}, Lcom/android/settings/applications/EnterpriseDefaultApps;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 195
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type of default "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100011    # @plurals/default_camera_app_title

    .line 193
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    .line 192
    return-object p1

    .line 189
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100012    # @plurals/default_email_app_title

    .line 190
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    .line 189
    return-object p1

    .line 187
    :pswitch_2
    const p2, 0x7f120509    # @string/default_map_app_title 'Map app'

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 184
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100013    # @plurals/default_phone_app_title

    .line 185
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    .line 184
    return-object p1

    .line 182
    :pswitch_4
    const p2, 0x7f120503    # @string/default_contacts_app_title 'Contacts app'

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 180
    :pswitch_5
    const p2, 0x7f120502    # @string/default_calendar_app_title 'Calendar app'

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 178
    :pswitch_6
    const p2, 0x7f120500    # @string/default_browser_title 'Browser app'

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$buildAppList$0(Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->updateUi()V

    return-void
.end method

.method private updateUi()V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 119
    if-nez v1, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v2}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->isInCompMode()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EnumMap;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->createPreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/util/EnumMap;)V

    goto :goto_2

    .line 125
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 126
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 127
    new-instance v4, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v4, v0}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 129
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    const v2, 0x7f1208a6    # @string/managed_device_admin_title 'Work'

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_1

    .line 132
    :cond_2
    const v2, 0x7f120a1d    # @string/personal_device_admin_title 'Personal'

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 134
    :goto_1
    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceCategory;->setOrder(I)V

    .line 135
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EnumMap;

    invoke-direct {p0, v0, v4, v2}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->createPreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/util/EnumMap;)V

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 108
    const/4 v0, 0x1

    return v0
.end method
