.class public Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;
.super Landroid/support/v7/preference/PreferenceGroupAdapter;
.source "HighlightablePreferenceGroupAdapter.java"


# static fields
.field static final DELAY_HIGHLIGHT_DURATION_MILLIS:J = 0x258L


# instance fields
.field mFadeInAnimated:Z

.field final mHighlightColor:I

.field private final mHighlightKey:Ljava/lang/String;

.field private mHighlightPosition:I

.field private mHighlightRequested:Z

.field private final mNormalBackgroundRes:I


# direct methods
.method public constructor <init>(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V
    .locals 2

    .line 96
    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    .line 97
    iput-object p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    .line 98
    iput-boolean p3, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    .line 99
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 100
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v0, 0x101030e    # @android:attr/selectableItemBackground

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 103
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    iput p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    .line 104
    const p2, 0x7f060093    # @color/preference_highligh_color 'res/color/preference_highligh_color.xml'

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    return p0
.end method

.method private addHighlightBackground(Landroid/view/View;Z)V
    .locals 6

    .line 154
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x7f0a026a    # @id/preference_highlighted

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 155
    if-nez p2, :cond_0

    .line 156
    iget p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    const-string p2, "HighlightableAdapter"

    const-string v0, "AddHighlight: Not animation requested - setting highlight background"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->requestRemoveHighlightDelayed(Landroid/view/View;)V

    .line 159
    return-void

    .line 161
    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mFadeInAnimated:Z

    .line 163
    iget p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    .line 164
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 165
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    .line 164
    invoke-static {v1, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 166
    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 167
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$piymLpeUf2m74Yz5ep7jpdxw2ho;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$piymLpeUf2m74Yz5ep7jpdxw2ho;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 169
    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 170
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 171
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 172
    const-string p2, "HighlightableAdapter"

    const-string v0, "AddHighlight: starting fade in animation"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->requestRemoveHighlightDelayed(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method public static adjustInitialExpandedChildCount(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 3

    .line 70
    if-nez p0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 74
    if-nez v0, :cond_1

    .line 75
    return-void

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    const p0, 0x7fffffff

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceScreen;->setInitialExpandedChildrenCount(I)V

    .line 83
    return-void

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getInitialExpandedChildCount()I

    move-result p0

    .line 88
    if-gtz p0, :cond_3

    .line 89
    return-void

    .line 91
    :cond_3
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceScreen;->setInitialExpandedChildrenCount(I)V

    .line 92
    return-void
.end method

.method static synthetic lambda$addHighlightBackground$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 168
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic lambda$removeHighlightBackground$3(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 197
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static synthetic lambda$requestHighlight$0(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    .line 131
    if-gez v0, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    .line 135
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 136
    iput v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->notifyItemChanged(I)V

    .line 138
    return-void
.end method

.method public static synthetic lambda$requestRemoveHighlightDelayed$1(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V
    .locals 1

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->removeHighlightBackground(Landroid/view/View;Z)V

    .line 150
    return-void
.end method

.method private removeHighlightBackground(Landroid/view/View;Z)V
    .locals 4

    .line 177
    const/4 v0, 0x0

    const v1, 0x7f0a026a    # @id/preference_highlighted

    if-nez p2, :cond_0

    .line 178
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 179
    iget p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 180
    const-string p1, "HighlightableAdapter"

    const-string p2, "RemoveHighlight: No animation requested - setting normal background"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void

    .line 184
    :cond_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 186
    const-string p1, "HighlightableAdapter"

    const-string p2, "RemoveHighlight: Not highlighted - skipping"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 189
    :cond_1
    iget p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    .line 190
    const/4 v2, -0x1

    .line 192
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 193
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 194
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    const/4 p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p2

    .line 193
    invoke-static {v1, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 195
    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 196
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$HMY634RMu5R2WoggcFMdrEe8uA0;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$HMY634RMu5R2WoggcFMdrEe8uA0;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 198
    new-instance v0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;-><init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 206
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 207
    const-string p1, "HighlightableAdapter"

    const-string p2, "Starting fade out animation"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method


# virtual methods
.method public isHighlightRequested()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V
    .locals 0

    .line 109
    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->updateBackground(Landroid/support/v7/preference/PreferenceViewHolder;I)V

    .line 111
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 42
    check-cast p1, Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public requestHighlight(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .line 126
    iget-boolean v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$Xc5BA2nCks8YuSzn7LsPZS7EmPA;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$Xc5BA2nCks8YuSzn7LsPZS7EmPA;-><init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/support/v7/widget/RecyclerView;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    return-void

    .line 127
    :cond_1
    :goto_0
    return-void
.end method

.method requestRemoveHighlightDelayed(Landroid/view/View;)V
    .locals 3

    .line 147
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$CKVsKq8Jy7vb9RpitMwq8ps1ehE;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$CKVsKq8Jy7vb9RpitMwq8ps1ehE;-><init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    return-void
.end method

.method updateBackground(Landroid/support/v7/preference/PreferenceViewHolder;I)V
    .locals 1

    .line 115
    iget-object p1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 116
    iget v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    if-ne p2, v0, :cond_0

    .line 118
    iget-boolean p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mFadeInAnimated:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->addHighlightBackground(Landroid/view/View;Z)V

    goto :goto_0

    .line 119
    :cond_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v0, 0x7f0a026a    # @id/preference_highlighted

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 121
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->removeHighlightBackground(Landroid/view/View;Z)V

    .line 123
    :cond_1
    :goto_0
    return-void
.end method
