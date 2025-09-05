.class public Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SuggestionAdapter.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;,
        Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;",
        ">;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;"
    }
.end annotation


# instance fields
.field private final mCache:Lcom/android/settingslib/utils/IconCache;

.field private final mCallback:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;

.field private final mConfig:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;

.field private final mContext:Landroid/content/Context;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

.field private final mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestionsShownLogged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/suggestions/SuggestionControllerMixin;Landroid/os/Bundle;Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    .line 83
    new-instance p2, Lcom/android/settingslib/utils/IconCache;

    invoke-direct {p2, p1}, Lcom/android/settingslib/utils/IconCache;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mCache:Lcom/android/settingslib/utils/IconCache;

    .line 84
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 85
    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 86
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    .line 87
    iput-object p4, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mCallback:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;

    .line 88
    if-eqz p3, :cond_0

    .line 89
    const-string p2, "suggestion_list"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    .line 90
    const-string p2, "suggestions_shown_logged"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    goto :goto_0

    .line 93
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    .line 96
    :goto_0
    if-eqz p5, :cond_1

    .line 97
    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 99
    :cond_1
    invoke-static {p1}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mConfig:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;

    .line 101
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->setHasStableIds(Z)V

    .line 102
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;Landroid/service/settings/suggestions/Suggestion;Landroid/view/View;)V
    .locals 2

    .line 146
    iget-object p2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    invoke-interface {p2, v0, v1, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->dismissSuggestion(Landroid/content/Context;Lcom/android/settingslib/suggestions/SuggestionControllerMixin;Landroid/service/settings/suggestions/Suggestion;)V

    .line 148
    iget-object p2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mCallback:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;

    if-eqz p2, :cond_0

    .line 149
    iget-object p2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mCallback:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;

    invoke-interface {p2, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$Callback;->onSuggestionClosed(Landroid/service/settings/suggestions/Suggestion;)V

    .line 151
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;Ljava/lang/String;Landroid/service/settings/suggestions/Suggestion;Landroid/view/View;)V
    .locals 3

    .line 162
    iget-object p3, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x182

    invoke-virtual {p3, v0, v2, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 164
    :try_start_0
    invoke-virtual {p2}, Landroid/service/settings/suggestions/Suggestion;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V

    .line 165
    iget-object p1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->launchSuggestion(Landroid/service/settings/suggestions/Suggestion;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 166
    :catch_0
    move-exception p1

    .line 167
    const-string p1, "SuggestionAdapter"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to start suggestion "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/settings/suggestions/Suggestion;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 174
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/settings/suggestions/Suggestion;

    invoke-virtual {p1}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->getSuggestion(I)Landroid/service/settings/suggestions/Suggestion;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroid/service/settings/suggestions/Suggestion;->getFlags()I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 181
    const p1, 0x7f0d0167    # @layout/suggestion_tile_with_button 'res/layout/suggestion_tile_with_button.xml'

    return p1

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->getItemCount()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 184
    const p1, 0x7f0d0165    # @layout/suggestion_tile 'res/layout/suggestion_tile.xml'

    return p1

    .line 186
    :cond_1
    const p1, 0x7f0d0166    # @layout/suggestion_tile_two_cards 'res/layout/suggestion_tile_two_cards.xml'

    return p1
.end method

.method public getSuggestion(I)Landroid/service/settings/suggestions/Suggestion;
    .locals 7

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->getItemId(I)J

    move-result-wide v0

    .line 196
    iget-object p1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 197
    return-object v2

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/settings/suggestions/Suggestion;

    .line 200
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_1

    .line 201
    return-object v3

    .line 203
    :cond_1
    goto :goto_0

    .line 204
    :cond_2
    return-object v2
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 54
    check-cast p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
    .locals 8

    .line 112
    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/settings/suggestions/Suggestion;

    .line 113
    invoke-virtual {v0}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 115
    iget-object v3, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v5, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mContext:Landroid/content/Context;

    const/16 v6, 0x180

    new-array v7, v4, [Landroid/util/Pair;

    invoke-virtual {v3, v5, v6, v1, v7}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 118
    iget-object v3, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    invoke-virtual {v0}, Landroid/service/settings/suggestions/Suggestion;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 121
    iget-object v5, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mCache:Lcom/android/settingslib/utils/IconCache;

    invoke-virtual {v5, v3}, Lcom/android/settingslib/utils/IconCache;->getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 122
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/service/settings/suggestions/Suggestion;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 123
    iget-object v5, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 125
    :cond_1
    iget-object v5, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/service/settings/suggestions/Suggestion;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mContext:Landroid/content/Context;

    const v6, 0x1040145    # @android:string/config_helpPackageNameKey

    .line 128
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-static {v5, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 131
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 132
    invoke-virtual {v0}, Landroid/service/settings/suggestions/Suggestion;->getSummary()Ljava/lang/CharSequence;

    move-result-object p2

    .line 133
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 134
    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object p2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :goto_0
    goto :goto_1

    .line 140
    :cond_3
    iget-object v2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mConfig:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;

    invoke-virtual {v2, p1, p2}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->setCardLayout(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V

    .line 143
    :goto_1
    iget-object p2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a00c1    # @id/close_button

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 144
    if-eqz p2, :cond_4

    .line 145
    new-instance v2, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$3YCJShAgHMZGvTmpJ4rD8V_2WkA;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$3YCJShAgHMZGvTmpJ4rD8V_2WkA;-><init>(Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;Landroid/service/settings/suggestions/Suggestion;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_4
    iget-object p2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    .line 157
    iget-object p1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v2, 0x102000c    # @android:id/primary

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 158
    if-eqz p1, :cond_5

    .line 159
    goto :goto_2

    .line 161
    :cond_5
    move-object p1, p2

    :goto_2
    new-instance p2, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$o_nlX1JhE-RQCl3p5ch8A_R_uN0;

    invoke-direct {p2, p0, v1, v0}, Lcom/android/settings/dashboard/suggestions/-$$Lambda$SuggestionAdapter$o_nlX1JhE-RQCl3p5ch8A_R_uN0;-><init>(Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;Ljava/lang/String;Landroid/service/settings/suggestions/Suggestion;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .locals 3

    .line 106
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

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "suggestion_list"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 219
    :cond_0
    const-string v0, "suggestions_shown_logged"

    iget-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 220
    return-void
.end method

.method public setSuggestions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;->mSuggestions:Ljava/util/List;

    .line 224
    return-void
.end method
