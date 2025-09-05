.class public abstract Lcom/android/settings/dashboard/DashboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DashboardFragment.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;


# instance fields
.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private final mDashboardTilePrefKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListeningToCategoryChange:Z

.field private mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

.field private final mPreferenceControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 60
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    return-void
.end method

.method private displayResourceTiles()V
    .locals 3

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreenResId()I

    move-result v0

    .line 288
    if-gtz v0, :cond_0

    .line 289
    return-void

    .line 291
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->addPreferencesFromResource(I)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/settings/dashboard/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;->INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$wmCpqAavTrPCWLW0gqd6-3n9DOU;

    invoke-direct {v2, v0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$wmCpqAavTrPCWLW0gqd6-3n9DOU;-><init>(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 295
    return-void
.end method

.method static synthetic lambda$displayResourceTiles$2(Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 294
    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method static synthetic lambda$onAttach$0(Lcom/android/settings/core/BasePreferenceController;)Z
    .locals 0

    .line 94
    instance-of p0, p0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    return p0
.end method

.method static synthetic lambda$onAttach$1(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/core/BasePreferenceController;)V
    .locals 0

    .line 96
    check-cast p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private refreshAllPreferences(Ljava/lang/String;)V
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;->displayResourceTiles()V

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshDashboardTiles(Ljava/lang/String;)V

    .line 337
    return-void
.end method


# virtual methods
.method protected addPreferenceController(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 256
    const/4 p1, 0x0

    return-object p1
.end method

.method protected displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 0

    .line 263
    const/4 p1, 0x1

    return p1
.end method

.method public getCategoryKey()Ljava/lang/String;
    .locals 2

    .line 244
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method protected abstract getPreferenceScreenResId()I
.end method

.method public notifySummaryChanged(Lcom/android/settingslib/drawer/Tile;)V
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 157
    if-nez v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t find pref by key %s, skipping update summary %s/%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    aput-object p1, v3, v0

    .line 159
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 163
    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 70
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    nop

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 77
    nop

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreenResId()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/settings/core/PreferenceControllerListHelper;->getPreferenceControllersFromXml(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 80
    nop

    .line 81
    invoke-static {v2, v1}, Lcom/android/settings/core/PreferenceControllerListHelper;->filterControllers(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 85
    if-eqz v1, :cond_0

    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 92
    nop

    .line 93
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$S-iRpeKDC_3jmfXOTbVaWpa8f5Y;->INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$S-iRpeKDC_3jmfXOTbVaWpa8f5Y;

    .line 94
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$iYpWkssUBFPuOKWOC_GeIjRUfdk;

    invoke-direct {v3, v1}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$iYpWkssUBFPuOKWOC_GeIjRUfdk;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 95
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 98
    new-instance v1, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    .line 100
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->addPreferenceController(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method

.method public onCategoriesChanged()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    .line 123
    if-nez v0, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->refreshDashboardTiles(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    new-instance v1, Landroid/support/v7/preference/PreferenceManager$SimplePreferenceComparisonCallback;

    invoke-direct {v1}, Landroid/support/v7/preference/PreferenceManager$SimplePreferenceComparisonCallback;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->setPreferenceComparisonCallback(Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;)V

    .line 112
    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 117
    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshAllPreferences(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 209
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 210
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SummaryLoader;->release()V

    .line 213
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 175
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v4

    .line 177
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logDashboardStartIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 180
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 181
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 182
    invoke-virtual {v2, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const/4 p1, 0x1

    return p1

    .line 185
    :cond_0
    goto :goto_1

    .line 186
    :cond_1
    goto :goto_0

    .line 187
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 168
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 170
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 136
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    .line 139
    if-nez v0, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 147
    instance-of v2, v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    if-eqz v2, :cond_2

    .line 148
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    .line 149
    check-cast v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->addCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    .line 151
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 192
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 193
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 197
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 199
    instance-of v2, v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    if-eqz v2, :cond_1

    .line 200
    check-cast v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->remCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    .line 202
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    .line 204
    :cond_2
    return-void
.end method

.method refreshDashboardTiles(Ljava/lang/String;)V
    .locals 14

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v1

    .line 348
    if-nez v1, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NO dashboard tiles for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 352
    :cond_0
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v2

    .line 353
    if-nez v2, :cond_1

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tile list is empty, skipping category "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void

    .line 358
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 361
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v3, :cond_2

    .line 362
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/SummaryLoader;->release()V

    .line 364
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 365
    new-instance v4, Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/settings/dashboard/SummaryLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 366
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v4, p0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummaryConsumer(Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;)V

    .line 367
    const/4 v4, 0x1

    new-array v5, v4, [I

    const v6, 0x1010429    # @android:attr/colorControlNormal

    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-virtual {v3, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 369
    const v6, 0x106000b    # @android:color/white

    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v5, v7, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 370
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 372
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/android/settingslib/drawer/Tile;

    .line 373
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v5, v10}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v5

    .line 374
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tile does not contain a key, skipping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    goto :goto_0

    .line 378
    :cond_3
    invoke-virtual {p0, v10}, Lcom/android/settings/dashboard/DashboardFragment;->displayTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 379
    goto :goto_0

    .line 381
    :cond_4
    invoke-virtual {p0, v10}, Lcom/android/settings/dashboard/DashboardFragment;->tintTileIcon(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 382
    iget-object v6, v10, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 384
    :cond_5
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 386
    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    .line 387
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v8

    iget-object v11, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    .line 388
    invoke-virtual {v11}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->getOrder()I

    move-result v12

    .line 387
    move-object v11, v5

    invoke-interface/range {v6 .. v12}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->bindPreferenceToTile(Landroid/app/Activity;ILandroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V

    .line 389
    goto :goto_1

    .line 391
    :cond_6
    new-instance v13, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v13, v6}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 392
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v8

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    .line 393
    invoke-virtual {v9}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->getOrder()I

    move-result v12

    .line 392
    move-object v9, v13

    move-object v11, v5

    invoke-interface/range {v6 .. v12}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->bindPreferenceToTile(Landroid/app/Activity;ILandroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V

    .line 394
    invoke-virtual {v0, v13}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 395
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    :goto_1
    invoke-interface {v1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 398
    goto/16 :goto_0

    .line 400
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 401
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 403
    if-eqz v1, :cond_8

    .line 404
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 406
    :cond_8
    goto :goto_2

    .line 407
    :cond_9
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {p1, v4}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 408
    return-void
.end method

.method tintTileIcon(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 3

    .line 268
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 269
    return v1

    .line 272
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    .line 273
    if-eqz v0, :cond_1

    const-string v2, "com.android.settings.icon_tintable"

    .line 274
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    const-string p1, "com.android.settings.icon_tintable"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_2

    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 280
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    nop

    .line 279
    :cond_2
    return v1
.end method

.method protected updatePreferenceStates()V
    .locals 9

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 303
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 304
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 305
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 306
    invoke-virtual {v3}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 307
    goto :goto_1

    .line 309
    :cond_0
    invoke-virtual {v3}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 312
    if-nez v5, :cond_1

    .line 313
    const-string v5, "DashboardFragment"

    const-string v6, "Cannot find preference with key %s in Controller %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    .line 314
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    .line 313
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    goto :goto_1

    .line 317
    :cond_1
    invoke-virtual {v3, v5}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 318
    goto :goto_1

    .line 319
    :cond_2
    goto :goto_0

    .line 320
    :cond_3
    return-void
.end method

.method protected use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 221
    if-eqz v0, :cond_1

    .line 222
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 223
    const-string v1, "DashboardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple controllers of Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found, returning first one."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    return-object p1

    .line 229
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
