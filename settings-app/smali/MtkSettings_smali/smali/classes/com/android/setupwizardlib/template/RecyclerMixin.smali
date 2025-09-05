.class public Lcom/android/setupwizardlib/template/RecyclerMixin;
.super Ljava/lang/Object;
.source "RecyclerMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private mDefaultDivider:Landroid/graphics/drawable/Drawable;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

.field private mDividerInsetEnd:I

.field private mDividerInsetStart:I

.field private mHeader:Landroid/view/View;

.field private final mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    .line 81
    new-instance p1, Lcom/android/setupwizardlib/DividerItemDecoration;

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/setupwizardlib/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    .line 84
    iput-object p2, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 85
    iget-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-virtual {v1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 87
    instance-of p1, p2, Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    if-eqz p1, :cond_0

    .line 88
    check-cast p2, Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    invoke-virtual {p2}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mHeader:Landroid/view/View;

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 92
    return-void
.end method

.method private updateDivider()V
    .locals 7

    .line 234
    nop

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/TemplateLayout;->isLayoutDirectionResolved()Z

    move-result v0

    goto :goto_0

    .line 238
    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/DividerItemDecoration;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDividerInsetStart:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDividerInsetEnd:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-static/range {v1 .. v6}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 249
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    iget-object v1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :cond_2
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 174
    instance-of v1, v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 175
    check-cast v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0

    .line 177
    :cond_0
    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getDividerInsetStart()I

    move-result v0

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDividerInsetEnd:I

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDividerInsetStart:I

    return v0
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public onLayout()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->updateDivider()V

    .line 163
    :cond_0
    return-void
.end method

.method public parseAttributes(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 108
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin_android_entries:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 109
    if-eqz p2, :cond_0

    .line 110
    new-instance v1, Lcom/android/setupwizardlib/items/ItemInflater;

    invoke-direct {v1, v0}, Lcom/android/setupwizardlib/items/ItemInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/android/setupwizardlib/items/ItemInflater;->inflate(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 111
    new-instance v0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    invoke-direct {v0, p2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;-><init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    .line 112
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin_suwHasStableIds:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->setHasStableIds(Z)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 116
    :cond_0
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin_suwDividerInset:I

    .line 117
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 118
    if-eq p2, v0, :cond_1

    .line 119
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setDividerInset(I)V

    goto :goto_0

    .line 121
    :cond_1
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin_suwDividerInsetStart:I

    .line 122
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 123
    sget v0, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin_suwDividerInsetEnd:I

    .line 124
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 125
    invoke-virtual {p0, p2, v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setDividerInsets(II)V

    .line 128
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 185
    return-void
.end method

.method public setDividerInset(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setDividerInsets(II)V

    .line 193
    return-void
.end method

.method public setDividerInsets(II)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDividerInsetStart:I

    .line 206
    iput p2, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDividerInsetEnd:I

    .line 207
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->updateDivider()V

    .line 208
    return-void
.end method

.method public setDividerItemDecoration(Lcom/android/setupwizardlib/DividerItemDecoration;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 268
    iput-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    .line 269
    iget-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 270
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->updateDivider()V

    .line 271
    return-void
.end method
