.class public Lcom/android/setupwizardlib/template/ListMixin;
.super Ljava/lang/Object;
.source "ListMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private mDefaultDivider:Landroid/graphics/drawable/Drawable;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerInsetEnd:I

.field private mDividerInsetStart:I

.field private mListView:Landroid/widget/ListView;

.field private mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/setupwizardlib/template/ListMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    .line 63
    invoke-virtual {p1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 64
    sget-object v0, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 67
    sget p3, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin_android_entries:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 68
    if-eqz p3, :cond_0

    .line 69
    new-instance v0, Lcom/android/setupwizardlib/items/ItemInflater;

    invoke-direct {v0, p1}, Lcom/android/setupwizardlib/items/ItemInflater;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0, p3}, Lcom/android/setupwizardlib/items/ItemInflater;->inflate(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/setupwizardlib/items/ItemGroup;

    .line 71
    new-instance p3, Lcom/android/setupwizardlib/items/ItemAdapter;

    invoke-direct {p3, p1}, Lcom/android/setupwizardlib/items/ItemAdapter;-><init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    invoke-virtual {p0, p3}, Lcom/android/setupwizardlib/template/ListMixin;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    :cond_0
    sget p1, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin_suwDividerInset:I

    .line 74
    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 75
    if-eq p1, p3, :cond_1

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/template/ListMixin;->setDividerInset(I)V

    goto :goto_0

    .line 78
    :cond_1
    sget p1, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin_suwDividerInsetStart:I

    .line 79
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 80
    sget p3, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin_suwDividerInsetEnd:I

    .line 81
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 82
    invoke-virtual {p0, p1, p3}, Lcom/android/setupwizardlib/template/ListMixin;->setDividerInsets(II)V

    .line 84
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-void
.end method

.method private getListViewInternal()Landroid/widget/ListView;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    const v1, 0x102000a    # @android:id/list

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mListView:Landroid/widget/ListView;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private updateDivider()V
    .locals 8

    .line 195
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object v0

    .line 196
    if-nez v0, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    const/4 v1, 0x1

    .line 200
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 201
    iget-object v1, p0, Lcom/android/setupwizardlib/template/ListMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-virtual {v1}, Lcom/android/setupwizardlib/TemplateLayout;->isLayoutDirectionResolved()Z

    move-result v1

    .line 203
    :cond_1
    if-eqz v1, :cond_3

    .line 204
    iget-object v1, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 205
    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 207
    :cond_2
    iget-object v2, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetStart:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetEnd:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/setupwizardlib/template/ListMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-static/range {v2 .. v7}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 214
    iget-object v1, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_3
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .line 127
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 130
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 131
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    return-object v0

    .line 135
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getDividerInsetStart()I

    move-result v0

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetEnd:I

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetStart:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public onLayout()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->updateDivider()V

    .line 118
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    :cond_0
    return-void
.end method

.method public setDividerInset(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/setupwizardlib/template/ListMixin;->setDividerInsets(II)V

    .line 154
    return-void
.end method

.method public setDividerInsets(II)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetStart:I

    .line 167
    iput p2, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetEnd:I

    .line 168
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->updateDivider()V

    .line 169
    return-void
.end method
