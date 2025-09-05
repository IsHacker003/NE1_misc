.class public Lcom/android/settings/dashboard/conditional/ConditionAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ConditionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mConditionClickListener:Landroid/view/View$OnClickListener;

.field private mConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExpanded:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field mSwipeCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;Z)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/ConditionAdapter$1;-><init>(Lcom/android/settings/dashboard/conditional/ConditionAdapter;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->mConditionClickListener:Landroid/view/View$OnClickListener;

    .line 59
    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionAdapter$2;

    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/dashboard/conditional/ConditionAdapter$2;-><init>(Lcom/android/settings/dashboard/conditional/ConditionAdapter;II)V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->mSwipeCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;

    .line 85
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->mConditions:Ljava/util/List;

    .line 87
    iput-boolean p3, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->mExpanded:Z

    .line 88
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 90
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->setHasStableIds(Z)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/conditional/ConditionAdapter;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/conditional/ConditionAdapter;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method private bindViews(Lcom/android/settings/dashboard/conditional/Condition;Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;ZLandroid/view/View$OnClickListener;)V
    .locals 5

    .line 140
    instance-of v0, p1, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "ConditionAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Airplane mode condition has been bound with isActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/Condition;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ". Airplane mode is currently "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 143
    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget-object v0, p2, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a00d1    # @id/content

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object p4, p2, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/Condition;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object p4, p2, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/Condition;->getActions()[Ljava/lang/CharSequence;

    move-result-object p4

    .line 152
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 153
    move v0, v2

    goto :goto_0

    .line 152
    :cond_1
    nop

    .line 153
    move v0, v1

    :goto_0
    iget-object v3, p2, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a008f    # @id/buttonBar

    invoke-direct {p0, v3, v4, v0}, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->setViewVisibility(Landroid/view/View;IZ)V

    .line 155
    iget-object v0, p2, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/Condition;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    move v0, v1

    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_4

    .line 157
    iget-object v3, p2, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 158
    const v4, 0x7f0a0166    # @id/first_action

    goto :goto_2

    :cond_2
    const v4, 0x7f0a02dd    # @id/second_action

    .line 157
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 159
    array-length v4, p4

    if-le v4, v0, :cond_3

    .line 160
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    aget-object v4, p4, v0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    nop

    .line 163
    new-instance v4, Lcom/android/settings/dashboard/conditional/ConditionAdapter$3;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/settings/dashboard/conditional/ConditionAdapter$3;-><init>(Lcom/android/settings/dashboard/conditional/ConditionAdapter;Lcom/android/settings/dashboard/conditional/Condition;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    goto :goto_3

    .line 174
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_4
    iget-object p1, p2, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a0112    # @id/divider

    xor-int/2addr p3, v2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->setViewVisibility(Landroid/view/View;IZ)V

    .line 178
    return-void
.end method

.method private setViewVisibility(Landroid/view/View;IZ)V
    .locals 0

    .line 181
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 182
    if-eqz p1, :cond_1

    .line 183
    if-eqz p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_1
    return-void
.end method


# virtual methods
.method public addDismissHandling(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 133
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->mSwipeCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 135
    return-void
.end method

.method public getItem(J)Ljava/lang/Object;
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->mConditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/conditional/Condition;

    .line 95
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 96
    return-object v1

    .line 98
    :cond_0
    goto :goto_0

    .line 99
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->mConditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->mConditions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 121
    const p1, 0x7f0d0055    # @layout/condition_tile 'res/layout/condition_tile.xml'

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 38
    check-cast p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->mConditions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/conditional/Condition;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->mConditions:Ljava/util/List;

    .line 111
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->mConditionClickListener:Landroid/view/View$OnClickListener;

    .line 110
    invoke-direct {p0, v0, p1, v2, p2}, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->bindViews(Lcom/android/settings/dashboard/conditional/Condition;Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;ZLandroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .locals 3

    .line 104
    new-instance v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
