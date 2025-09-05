.class public Lcom/android/setupwizardlib/DividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;
    }
.end annotation


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerCondition:I

.field private mDividerHeight:I

.field private mDividerIntrinsicHeight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 92
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 93
    sget-object v0, Lcom/android/setupwizardlib/R$styleable;->SuwDividerItemDecoration:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 94
    sget v0, Lcom/android/setupwizardlib/R$styleable;->SuwDividerItemDecoration_android_listDivider:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwDividerItemDecoration_android_dividerHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 98
    sget v3, Lcom/android/setupwizardlib/R$styleable;->SuwDividerItemDecoration_suwDividerCondition:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 101
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDividerHeight(I)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDividerCondition(I)V

    .line 106
    return-void
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 4

    .line 135
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 137
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/DividerItemDecoration;->isDividerAllowedBelow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 139
    iget p1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerCondition:I

    if-nez p1, :cond_1

    .line 142
    return v2

    .line 144
    :cond_0
    iget p1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerCondition:I

    if-eq p1, v2, :cond_3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    if-ge v0, v1, :cond_2

    .line 153
    add-int/2addr v0, v2

    .line 154
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/DividerItemDecoration;->isDividerAllowedAbove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 157
    return v3

    .line 160
    :cond_2
    return v2

    .line 149
    :cond_3
    :goto_0
    return v3
.end method


# virtual methods
.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 129
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/DividerItemDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 130
    iget p2, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerIntrinsicHeight:I

    :goto_0
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 132
    :cond_1
    return-void
.end method

.method protected isDividerAllowedAbove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 173
    instance-of v0, p1, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;

    .line 174
    invoke-interface {p1}, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;->isDividerAllowedAbove()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 173
    :goto_1
    return p1
.end method

.method protected isDividerAllowedBelow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 187
    instance-of v0, p1, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;

    .line 188
    invoke-interface {p1}, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;->isDividerAllowedBelow()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 187
    :goto_1
    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 7

    .line 110
    iget-object p3, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p3

    .line 114
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    .line 115
    iget v1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerIntrinsicHeight:I

    .line 116
    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, p3, :cond_3

    .line 117
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 118
    invoke-direct {p0, v4, p2}, Lcom/android/setupwizardlib/DividerItemDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v5, v4

    .line 120
    iget-object v4, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    add-int v6, v5, v1

    invoke-virtual {v4, v2, v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    iget-object v4, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 124
    :cond_3
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 195
    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerIntrinsicHeight:I

    goto :goto_0

    .line 198
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerIntrinsicHeight:I

    .line 200
    :goto_0
    iput-object p1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 201
    return-void
.end method

.method public setDividerCondition(I)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerCondition:I

    .line 231
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    .line 214
    iput p1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    .line 215
    return-void
.end method
