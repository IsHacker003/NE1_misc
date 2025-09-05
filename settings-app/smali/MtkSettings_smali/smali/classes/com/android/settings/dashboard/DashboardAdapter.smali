.class public Lcom/android/settings/dashboard/DashboardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DashboardAdapter.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;
.implements Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardAdapter$SuggestionContainerHolder;,
        Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;,
        Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;,
        Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;",
        ">;",
        "Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;",
        "Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;"
    }
.end annotation


# static fields
.field static final STATE_CONDITION_EXPANDED:Ljava/lang/String; = "condition_expanded"


# instance fields
.field private final mCache:Lcom/android/settingslib/utils/IconCache;

.field private final mContext:Landroid/content/Context;

.field mDashboardData:Lcom/android/settings/dashboard/DashboardData;

.field private final mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mFirstFrameDrawn:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSuggestionAdapter:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

.field private mTileClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/util/List;Lcom/android/settingslib/suggestions/SuggestionControllerMixin;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;",
            "Lcom/android/settingslib/suggestions/SuggestionControllerMixin;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 77
    new-instance v0, Lcom/android/settings/dashboard/DashboardAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardAdapter$1;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTileClickListener:Landroid/view/View$OnClickListener;

    .line 89
    nop

    .line 90
    nop

    .line 92
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 95
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 96
    new-instance v0, Lcom/android/settingslib/utils/IconCache;

    invoke-direct {v0, p1}, Lcom/android/settingslib/utils/IconCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settingslib/utils/IconCache;

    .line 97
    new-instance p1, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p0

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;-><init>(Landroid/content/Context;Lcom/android/settingslib/suggestions/SuggestionControllerMixin;Landroid/os/Bundle;Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionAdapter:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

    .line 100
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->setHasStableIds(Z)V

    .line 102
    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 103
    const-string p4, "category_list"

    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 104
    const-string v0, "condition_expanded"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    .line 108
    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eqz p5, :cond_1

    .line 109
    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 112
    :cond_1
    new-instance p2, Lcom/android/settings/dashboard/DashboardData$Builder;

    invoke-direct {p2}, Lcom/android/settings/dashboard/DashboardData$Builder;-><init>()V

    .line 113
    invoke-virtual {p2, p3}, Lcom/android/settings/dashboard/DashboardData$Builder;->setConditions(Ljava/util/List;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionAdapter:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

    .line 114
    invoke-virtual {p3}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->getSuggestions()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/settings/dashboard/DashboardData$Builder;->setSuggestions(Ljava/util/List;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object p2

    .line 115
    invoke-virtual {p2, p4}, Lcom/android/settings/dashboard/DashboardData$Builder;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object p2

    .line 116
    invoke-virtual {p2, p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->setConditionExpanded(Z)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->build()Lcom/android/settings/dashboard/DashboardData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/DashboardAdapter;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    return-object p0
.end method

.method public static synthetic lambda$onBindConditionHeader$1(Lcom/android/settings/dashboard/DashboardAdapter;Landroid/view/View;)V
    .locals 3

    .line 280
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/16 v2, 0x175

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 282
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    .line 283
    new-instance v0, Lcom/android/settings/dashboard/DashboardData$Builder;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/DashboardData$Builder;-><init>(Lcom/android/settings/dashboard/DashboardData;)V

    .line 284
    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardData$Builder;->setConditionExpanded(Z)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardData$Builder;->build()Lcom/android/settings/dashboard/DashboardData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDashboardDataChanged(Lcom/android/settings/dashboard/DashboardData;)V

    .line 286
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->scrollToTopOfConditions()V

    .line 287
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/android/settings/dashboard/DashboardAdapter;Landroid/view/View;)V
    .locals 3

    .line 209
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/16 v2, 0x175

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 211
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    .line 212
    new-instance v0, Lcom/android/settings/dashboard/DashboardData$Builder;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/DashboardData$Builder;-><init>(Lcom/android/settings/dashboard/DashboardData;)V

    .line 213
    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardData$Builder;->setConditionExpanded(Z)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardData$Builder;->build()Lcom/android/settings/dashboard/DashboardData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDashboardDataChanged(Lcom/android/settings/dashboard/DashboardData;)V

    .line 215
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->scrollToTopOfConditions()V

    .line 216
    return-void
.end method

.method private scrollToTopOfConditions()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardData;->hasSuggestion()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 374
    return-void
.end method

.method private updateConditionIcons(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 357
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 361
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 362
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 363
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    .line 364
    const v4, 0x7f0d0054    # @layout/condition_header_icon 'res/layout/condition_header_icon.xml'

    invoke-virtual {v0, v4, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 366
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 370
    return-void

    .line 358
    :cond_2
    :goto_1
    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 359
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardData;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardData;->getItemIdByPosition(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardData;->getItemTypeByPosition(I)I

    move-result p1

    return p1
.end method

.method notifyDashboardDataChanged(Lcom/android/settings/dashboard/DashboardData;)V
    .locals 2

    .line 254
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mFirstFrameDrawn:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 255
    new-instance v0, Lcom/android/settings/dashboard/DashboardData$ItemsDataDiffCallback;

    .line 256
    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardData;->getItemList()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardData;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/settings/dashboard/DashboardData$ItemsDataDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 255
    invoke-static {v0}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object p1

    .line 257
    invoke-virtual {p1, p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 258
    goto :goto_0

    .line 259
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mFirstFrameDrawn:Z

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    .line 262
    :goto_0
    return-void
.end method

.method public notifySummaryChanged(Lcom/android/settingslib/drawer/Tile;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardData;->getPositionByTile(Lcom/android/settingslib/drawer/Tile;)I

    move-result p1

    .line 165
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardData;->getItemTypeByPosition(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 238
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 241
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 242
    return-void
.end method

.method onBindCondition(Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;I)V
    .locals 3

    .line 292
    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    .line 293
    invoke-virtual {v2, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemEntityByPosition(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    .line 294
    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardData;->isConditionExpanded()Z

    move-result v2

    invoke-direct {v0, v1, p2, v2}, Lcom/android/settings/dashboard/conditional/ConditionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 295
    iget-object p2, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;->data:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p2}, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->addDismissHandling(Landroid/support/v7/widget/RecyclerView;)V

    .line 296
    iget-object p2, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;->data:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 297
    iget-object p1, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;->data:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 298
    return-void
.end method

.method onBindConditionHeader(Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;)V
    .locals 6

    .line 266
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;->conditionIcons:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    iget v0, p2, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;->conditionCount:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 268
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->title:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object p2, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object p2, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->icons:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f1203e3    # @string/condition_summary '%1$d'

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p2, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;->conditionCount:I

    .line 274
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object p2, p2, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;->conditionIcons:Ljava/util/List;

    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->icons:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->updateConditionIcons(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 276
    iget-object p2, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->icons:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    :goto_0
    iget-object p1, p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/settings/dashboard/-$$Lambda$DashboardAdapter$rjSGP6Cnddhw6FvR740SjWmziQ4;

    invoke-direct {p2, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardAdapter$rjSGP6Cnddhw6FvR740SjWmziQ4;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    return-void
.end method

.method onBindSuggestion(Lcom/android/settings/dashboard/DashboardAdapter$SuggestionContainerHolder;I)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    .line 305
    invoke-virtual {v0, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemEntityByPosition(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 306
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionAdapter:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->setSuggestions(Ljava/util/List;)V

    .line 308
    iget-object p2, p1, Lcom/android/settings/dashboard/DashboardAdapter$SuggestionContainerHolder;->data:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionAdapter:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 310
    :cond_0
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 312
    iget-object p1, p1, Lcom/android/settings/dashboard/DashboardAdapter$SuggestionContainerHolder;->data:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 313
    return-void
.end method

.method onBindTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/Tile;)V
    .locals 5

    .line 317
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settingslib/utils/IconCache;

    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/IconCache;->getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 318
    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/android/settings/dashboard/RoundedHomepageIcon;

    if-nez v1, :cond_1

    .line 320
    new-instance v1, Lcom/android/settings/dashboard/RoundedHomepageIcon;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lcom/android/settings/dashboard/RoundedHomepageIcon;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 322
    :try_start_0
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.bg.hint"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 325
    if-eqz v0, :cond_0

    .line 326
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    .line 327
    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    .line 328
    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 329
    move-object v3, v1

    check-cast v3, Lcom/android/settings/dashboard/RoundedHomepageIcon;

    invoke-virtual {v3, v0}, Lcom/android/settings/dashboard/RoundedHomepageIcon;->setBackgroundColor(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_0
    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    const-string v0, "DashboardAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set background color for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settingslib/utils/IconCache;

    iget-object v3, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v3, v1}, Lcom/android/settingslib/utils/IconCache;->updateIcon(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)V

    .line 337
    move-object v0, v1

    :cond_1
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 340
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object p1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 343
    :cond_2
    iget-object p1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    :goto_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 57
    check-cast p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemTypeByPosition(I)I

    move-result v0

    .line 190
    const v1, 0x7f0d0073    # @layout/dashboard_tile 'res/layout/dashboard_tile.xml'

    if-eq v0, v1, :cond_1

    const v1, 0x7f0d0164    # @layout/suggestion_container 'res/layout/suggestion_container.xml'

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 204
    :pswitch_0
    check-cast p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    .line 205
    invoke-virtual {v0, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemEntityByPosition(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;

    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindConditionHeader(Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;)V

    .line 206
    goto :goto_0

    .line 208
    :pswitch_1
    iget-object p1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/settings/dashboard/-$$Lambda$DashboardAdapter$EPKC8_9XatJQPDMMI1s2dy8ZY8c;

    invoke-direct {p2, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardAdapter$EPKC8_9XatJQPDMMI1s2dy8ZY8c;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 201
    :pswitch_2
    check-cast p1, Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindCondition(Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;I)V

    .line 202
    goto :goto_0

    .line 198
    :cond_0
    check-cast p1, Lcom/android/settings/dashboard/DashboardAdapter$SuggestionContainerHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindSuggestion(Lcom/android/settings/dashboard/DashboardAdapter$SuggestionContainerHolder;I)V

    .line 199
    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemEntityByPosition(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/drawer/Tile;

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/Tile;)V

    .line 194
    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 195
    iget-object p1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    nop

    .line 219
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0d0051
        :pswitch_2    # @layout/condition_container 'res/layout/condition_container.xml'
        :pswitch_1    # @layout/condition_footer 'res/layout/condition_footer.xml'
        :pswitch_0    # @layout/condition_header 'res/layout/condition_header.xml'
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .locals 2

    .line 174
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 175
    const v0, 0x7f0d0053    # @layout/condition_header 'res/layout/condition_header.xml'

    if-ne p2, v0, :cond_0

    .line 176
    new-instance p2, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;

    invoke-direct {p2, p1}, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 178
    :cond_0
    const v0, 0x7f0d0051    # @layout/condition_container 'res/layout/condition_container.xml'

    if-ne p2, v0, :cond_1

    .line 179
    new-instance p2, Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;

    invoke-direct {p2, p1}, Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 181
    :cond_1
    const v0, 0x7f0d0164    # @layout/suggestion_container 'res/layout/suggestion_container.xml'

    if-ne p2, v0, :cond_2

    .line 182
    new-instance p2, Lcom/android/settings/dashboard/DashboardAdapter$SuggestionContainerHolder;

    invoke-direct {p2, p1}, Lcom/android/settings/dashboard/DashboardAdapter$SuggestionContainerHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 184
    :cond_2
    new-instance p2, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-direct {p2, p1}, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardData;->getCategory()Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_0

    .line 351
    const-string v1, "category_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 353
    :cond_0
    const-string v0, "condition_expanded"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardData;->isConditionExpanded()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 354
    return-void
.end method

.method public onSuggestionClosed(Landroid/service/settings/suggestions/Suggestion;)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardData;->getSuggestions()Ljava/util/List;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 155
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->setSuggestions(Ljava/util/List;)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->setSuggestions(Ljava/util/List;)V

    .line 160
    :goto_0
    return-void

    .line 150
    :cond_2
    :goto_1
    return-void
.end method

.method public setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    .line 130
    const-string v1, "DashboardAdapter"

    const-string v2, "adapter setCategory called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v1, Lcom/android/settings/dashboard/DashboardData$Builder;

    invoke-direct {v1, v0}, Lcom/android/settings/dashboard/DashboardData$Builder;-><init>(Lcom/android/settings/dashboard/DashboardData;)V

    .line 132
    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->build()Lcom/android/settings/dashboard/DashboardData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDashboardDataChanged(Lcom/android/settings/dashboard/DashboardData;)V

    .line 135
    return-void
.end method

.method public setConditions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    .line 139
    const-string v1, "DashboardAdapter"

    const-string v2, "adapter setConditions called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v1, Lcom/android/settings/dashboard/DashboardData$Builder;

    invoke-direct {v1, v0}, Lcom/android/settings/dashboard/DashboardData$Builder;-><init>(Lcom/android/settings/dashboard/DashboardData;)V

    .line 141
    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->setConditions(Ljava/util/List;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->build()Lcom/android/settings/dashboard/DashboardData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDashboardDataChanged(Lcom/android/settings/dashboard/DashboardData;)V

    .line 144
    return-void
.end method

.method public setSuggestions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    .line 122
    new-instance v1, Lcom/android/settings/dashboard/DashboardData$Builder;

    invoke-direct {v1, v0}, Lcom/android/settings/dashboard/DashboardData$Builder;-><init>(Lcom/android/settings/dashboard/DashboardData;)V

    .line 123
    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->setSuggestions(Ljava/util/List;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->build()Lcom/android/settings/dashboard/DashboardData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDashboardDataChanged(Lcom/android/settings/dashboard/DashboardData;)V

    .line 126
    return-void
.end method
