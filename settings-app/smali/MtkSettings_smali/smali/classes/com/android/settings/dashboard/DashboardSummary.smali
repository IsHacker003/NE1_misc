.class public Lcom/android/settings/dashboard/DashboardSummary;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "DashboardSummary.java"

# interfaces
.implements Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;
.implements Lcom/android/settings/dashboard/conditional/FocusRecyclerView$DetachListener;
.implements Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;
.implements Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;
.implements Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;


# instance fields
.field private mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

.field private mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

.field private mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private final mHandler:Landroid/os/Handler;

.field mIsOnCategoriesChangedCalled:Z

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mOnConditionsChangedCalled:Z

.field private mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

.field private mStagingSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

.field private mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$rebuildUI$0(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->updateCategory()V

    return-void
.end method

.method public static synthetic lambda$updateCategory$1(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V

    return-void
.end method

.method public static synthetic lambda$updateCategory$2(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingSuggestions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setSuggestions(Ljava/util/List;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V

    .line 306
    return-void
.end method

.method public static synthetic lambda$updateCategory$3(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V

    return-void
.end method


# virtual methods
.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 83
    const/16 v0, 0x23

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 89
    const-string v0, "DashboardSummary"

    const-string v1, "Creating SuggestionControllerMixin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    nop

    .line 91
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 93
    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->isSuggestionEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    .line 96
    invoke-interface {v0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSuggestionServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {v1, p1, p0, v2, v0}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;-><init>(Landroid/content/Context;Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/content/ComponentName;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    .line 98
    :cond_0
    return-void
.end method

.method public onCategoriesChanged()V
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsOnCategoriesChangedCalled:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    .line 247
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsOnCategoriesChangedCalled:Z

    .line 248
    return-void
.end method

.method public onConditionsChanged()V
    .locals 4

    .line 252
    const-string v0, "DashboardSummary"

    const-string v1, "onConditionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mOnConditionsChangedCalled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 261
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/dashboard/DashboardAdapter;->setConditions(Ljava/util/List;)V

    .line 263
    if-eqz v1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->scrollToPosition(I)V

    .line 266
    :cond_1
    goto :goto_1

    .line 267
    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mOnConditionsChangedCalled:Z

    .line 269
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const-string v0, "DashboardSummary"

    const-string v1, "Starting DashboardSummary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 115
    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 117
    new-instance v1, Lcom/android/settings/dashboard/SummaryLoader;

    const-string v2, "com.android.settings.category.ia.homepage"

    invoke-direct {v1, v0, v2}, Lcom/android/settings/dashboard/SummaryLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 119
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;Z)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 121
    if-eqz p1, :cond_0

    .line 122
    const-string v0, "categories_change_called"

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsOnCategoriesChangedCalled:Z

    .line 128
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 207
    const v0, 0x7f0d0071    # @layout/dashboard 'res/layout/dashboard.xml'

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 208
    const p2, 0x7f0a00eb    # @id/dashboard_container

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    .line 209
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 210
    iget-object p2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 211
    if-eqz p3, :cond_0

    .line 212
    const-string p2, "scroll_position"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 213
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 215
    :cond_0
    iget-object p2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2, v1}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 216
    iget-object p2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {p2, v0}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setHasFixedSize(Z)V

    .line 217
    iget-object p2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {p2, p0}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setListener(Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;)V

    .line 218
    iget-object p2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {p2, p0}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setDetachListener(Lcom/android/settings/dashboard/conditional/FocusRecyclerView$DetachListener;)V

    .line 219
    iget-object p2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    new-instance v0, Lcom/android/settings/dashboard/DashboardItemAnimator;

    invoke-direct {v0}, Lcom/android/settings/dashboard/DashboardItemAnimator;-><init>()V

    invoke-virtual {p2, v0}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 220
    new-instance p2, Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 221
    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    move-object v1, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/dashboard/DashboardAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/util/List;Lcom/android/settingslib/suggestions/SuggestionControllerMixin;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    .line 222
    iget-object p2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object p3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {p2, p3}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 223
    iget-object p2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object p3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {p2, p3}, Lcom/android/settings/dashboard/SummaryLoader;->setSummaryConsumer(Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;)V

    .line 224
    nop

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const p3, 0x7f0a02d3    # @id/search_bar_container

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p3

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    .line 224
    invoke-static {p2, p3, v0}, Lcom/android/settings/widget/ActionBarShadowController;->attachToRecyclerView(Landroid/view/View;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)Lcom/android/settings/widget/ActionBarShadowController;

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    .line 231
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SummaryLoader;->release()V

    .line 133
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroy()V

    .line 134
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 189
    const-string v0, "DashboardSummary"

    const-string v1, "Detached from window, stop listening for condition changes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->remListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V

    .line 191
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 157
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->remCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/conditional/Condition;

    .line 162
    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/Condition;->shouldShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->hidden(Landroid/content/Context;I)V

    .line 165
    :cond_0
    goto :goto_0

    .line 166
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->addCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getMetricsCategory()I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    .line 145
    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/Condition;->shouldShow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 147
    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v2

    .line 146
    invoke-virtual {v3, v4, v0, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;II)V

    .line 149
    :cond_0
    goto :goto_0

    .line 153
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 196
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    const-string v0, "categories_change_called"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsOnCategoriesChangedCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    const-string v0, "scroll_position"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    return-void
.end method

.method public onSuggestionReady(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcust/settings/CustomizedUtils;->isInDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    if-eqz p1, :cond_0

    .line 276
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 280
    :cond_0
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingSuggestions:Ljava/util/List;

    .line 281
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->setSuggestions(Ljava/util/List;)V

    .line 282
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    if-eqz p1, :cond_1

    .line 283
    const-string p1, "DashboardSummary"

    const-string v0, "Category has loaded, setting category from suggestionReady"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 285
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {p1, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V

    .line 287
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 171
    if-eqz p1, :cond_0

    .line 172
    const-string p1, "DashboardSummary"

    const-string v0, "Listening for condition changes"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {p1, p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V

    .line 174
    const-string p1, "DashboardSummary"

    const-string v0, "conditions refreshed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->refreshAll()V

    goto :goto_0

    .line 177
    :cond_0
    const-string p1, "DashboardSummary"

    const-string v0, "Stopped listening for condition changes"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {p1, p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->remListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V

    .line 184
    :goto_0
    return-void
.end method

.method rebuildUI()V
    .locals 1

    .line 236
    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$8s9N5t2Nn47oUx2XbtJ_BLsLzIY;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$8s9N5t2Nn47oUx2XbtJ_BLsLzIY;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method updateCategory()V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    const-string v1, "com.android.settings.category.ia.homepage"

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/SummaryLoader;->updateSummaryToCache(Lcom/android/settingslib/drawer/DashboardCategory;)V

    .line 294
    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    .line 295
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$IEZgZ97m6Eczh4OO9ztmxtZNqM8;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$IEZgZ97m6Eczh4OO9ztmxtZNqM8;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 297
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->isSuggestionLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    const-string v0, "DashboardSummary"

    const-string v1, "Suggestion has loaded, setting suggestion/category"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$S4ZnJYAtpWnSKH5Ya-6PeP-43T4;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$S4ZnJYAtpWnSKH5Ya-6PeP-43T4;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 308
    :cond_1
    const-string v0, "DashboardSummary"

    const-string v1, "Suggestion NOT loaded, delaying setCategory by 3000ms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$kCUZowpTTsEozF-ygTzgGisYUiM;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$kCUZowpTTsEozF-ygTzgGisYUiM;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 311
    :goto_0
    return-void
.end method
