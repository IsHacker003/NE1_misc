.class public Lcom/android/setupwizardlib/items/RecyclerItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerItemAdapter.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/items/RecyclerItemAdapter$PatchedLayerDrawable;,
        Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/setupwizardlib/items/ItemViewHolder;",
        ">;",
        "Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;"
    }
.end annotation


# instance fields
.field private final mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

.field private mListener:Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 67
    iget-object p1, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {p1, p0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->registerObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/setupwizardlib/items/RecyclerItemAdapter;)Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mListener:Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;

    return-object p0
.end method


# virtual methods
.method public getItem(I)Lcom/android/setupwizardlib/items/IItem;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0, p1}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getItemAt(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 3

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object p1

    .line 82
    instance-of v0, p1, Lcom/android/setupwizardlib/items/AbstractItem;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 83
    check-cast p1, Lcom/android/setupwizardlib/items/AbstractItem;

    invoke-virtual {p1}, Lcom/android/setupwizardlib/items/AbstractItem;->getId()I

    move-result p1

    .line 84
    if-lez p1, :cond_0

    int-to-long v1, p1

    nop

    :cond_0
    return-wide v1

    .line 86
    :cond_1
    return-wide v1
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object p1

    .line 156
    invoke-interface {p1}, Lcom/android/setupwizardlib/items/IItem;->getLayoutResource()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 37
    check-cast p1, Lcom/android/setupwizardlib/items/ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->onBindViewHolder(Lcom/android/setupwizardlib/items/ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/setupwizardlib/items/ItemViewHolder;I)V
    .locals 1

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object p2

    .line 146
    invoke-interface {p2}, Lcom/android/setupwizardlib/items/IItem;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/setupwizardlib/items/ItemViewHolder;->setEnabled(Z)V

    .line 147
    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/items/ItemViewHolder;->setItem(Lcom/android/setupwizardlib/items/IItem;)V

    .line 148
    iget-object p1, p1, Lcom/android/setupwizardlib/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p2, p1}, Lcom/android/setupwizardlib/items/IItem;->onBindView(Landroid/view/View;)V

    .line 149
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/setupwizardlib/items/ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/setupwizardlib/items/ItemViewHolder;
    .locals 6

    .line 97
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 99
    new-instance v0, Lcom/android/setupwizardlib/items/ItemViewHolder;

    invoke-direct {v0, p2}, Lcom/android/setupwizardlib/items/ItemViewHolder;-><init>(Landroid/view/View;)V

    .line 101
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 102
    const-string v3, "noBackground"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 103
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerItemAdapter:[I

    .line 104
    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 105
    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerItemAdapter_android_selectableItemBackground:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 107
    if-nez v2, :cond_0

    .line 108
    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerItemAdapter_selectableItemBackground:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 112
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 113
    if-nez v3, :cond_1

    .line 114
    sget v3, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerItemAdapter_android_colorBackground:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 118
    :cond_1
    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    .line 123
    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v4, v1

    const/4 v1, 0x1

    aput-object v2, v4, v1

    .line 124
    new-instance v1, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$PatchedLayerDrawable;

    invoke-direct {v1, v4}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$PatchedLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 119
    :cond_3
    :goto_0
    const-string v1, "RecyclerItemAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot resolve required attributes. selectableItemBackground="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " background="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    :cond_4
    new-instance p1, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$1;

    invoke-direct {p1, p0, v0}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$1;-><init>(Lcom/android/setupwizardlib/items/RecyclerItemAdapter;Lcom/android/setupwizardlib/items/ItemViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-object v0
.end method

.method public onItemRangeChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .locals 0

    .line 166
    invoke-virtual {p0, p2, p3}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->notifyItemRangeChanged(II)V

    .line 167
    return-void
.end method

.method public onItemRangeInserted(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .locals 0

    .line 171
    invoke-virtual {p0, p2, p3}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->notifyItemRangeInserted(II)V

    .line 172
    return-void
.end method
