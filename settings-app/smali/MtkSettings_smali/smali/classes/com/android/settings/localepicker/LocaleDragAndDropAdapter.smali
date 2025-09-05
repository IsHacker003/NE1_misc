.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDragEnabled:Z

.field private final mFeedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private mLocalesSetLast:Landroid/os/LocaleList;

.field private mLocalesToSetNext:Landroid/os/LocaleList;

.field private mNumberFormatter:Ljava/text/NumberFormat;

.field private mParentView:Landroid/support/v7/widget/RecyclerView;

.field private mRemoveMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroid/support/v7/widget/RecyclerView;

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    .line 56
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    .line 57
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    .line 269
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    .line 270
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    .line 85
    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    .line 88
    nop

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 88
    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {v2, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 91
    new-instance p2, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;IIF)V

    invoke-direct {p2, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Ljava/text/NumberFormat;)Ljava/text/NumberFormat;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    return-object p1
.end method

.method private setDragEnabled(Z)V
    .locals 0

    .line 303
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    .line 304
    return-void
.end method


# virtual methods
.method addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyItemInserted(I)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    .line 254
    return-void
.end method

.method public doTheUpdate()V
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 258
    new-array v1, v0, [Ljava/util/Locale;

    .line 260
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 261
    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 262
    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLocalesWhenAnimationStops(Landroid/os/LocaleList;)V

    .line 267
    return-void
.end method

.method getCheckedCount()I
    .locals 3

    .line 241
    nop

    .line 242
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 243
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    add-int/lit8 v1, v1, 0x1

    .line 246
    :cond_0
    goto :goto_0

    .line 247
    :cond_1
    return v1
.end method

.method public getItemCount()I
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 178
    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setDragEnabled(Z)V

    goto :goto_2

    .line 179
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setDragEnabled(Z)V

    .line 183
    :goto_2
    return v0
.end method

.method isRemoveMode()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 46
    check-cast p1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onBindViewHolder(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;I)V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 153
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->getLocaleDragCell()Lcom/android/settings/localepicker/LocaleDragCell;

    move-result-object p1

    .line 154
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {p1, v1, v2}, Lcom/android/settings/localepicker/LocaleDragCell;->setLabelAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/settings/localepicker/LocaleDragCell;->setLocalized(Z)V

    .line 158
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    const/4 v2, 0x1

    add-int/2addr p2, v2

    int-to-long v3, p2

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/localepicker/LocaleDragCell;->setMiniLabel(Ljava/lang/String;)V

    .line 159
    iget-boolean p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    invoke-virtual {p1, p2}, Lcom/android/settings/localepicker/LocaleDragCell;->setShowCheckbox(Z)V

    .line 160
    iget-boolean p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Lcom/android/settings/localepicker/LocaleDragCell;->setShowMiniLabel(Z)V

    .line 161
    iget-boolean p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/settings/localepicker/LocaleDragCell;->setShowHandle(Z)V

    .line 162
    iget-boolean p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v1

    nop

    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/settings/localepicker/LocaleDragCell;->setChecked(Z)V

    .line 163
    invoke-virtual {p1, v0}, Lcom/android/settings/localepicker/LocaleDragCell;->setTag(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object p2

    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;)V

    .line 165
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 173
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;
    .locals 2

    .line 145
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 146
    const v0, 0x7f0d00b2    # @layout/locale_drag_cell 'res/layout/locale_drag_cell.xml'

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/localepicker/LocaleDragCell;

    .line 147
    new-instance p2, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;)V

    return-object p2
.end method

.method onItemMove(II)V
    .locals 6

    .line 187
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 189
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 191
    goto :goto_0

    .line 194
    :cond_0
    const-string v0, "LocaleDragAndDropAdapter"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Negative position in onItemMove %d -> %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 194
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyItemChanged(I)V

    .line 198
    invoke-virtual {p0, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyItemChanged(I)V

    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyItemMoved(II)V

    .line 202
    return-void
.end method

.method removeChecked()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 231
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 231
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    .line 238
    return-void
.end method

.method removeItem(I)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 219
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    .line 227
    return-void

    .line 223
    :cond_2
    :goto_0
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 3

    .line 329
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v0, :cond_3

    .line 330
    const-string v0, "selectedLocales"

    .line 331
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 332
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 336
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    .line 337
    goto :goto_0

    .line 338
    :cond_1
    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyItemRangeChanged(II)V

    goto :goto_2

    .line 333
    :cond_2
    :goto_1
    return-void

    .line 340
    :cond_3
    :goto_2
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 4

    .line 312
    if-eqz p1, :cond_2

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 315
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_0
    goto :goto_0

    .line 319
    :cond_1
    const-string v1, "selectedLocales"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 321
    :cond_2
    return-void
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 139
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroid/support/v7/widget/RecyclerView;

    .line 140
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 141
    return-void
.end method

.method setRemoveMode(Z)V
    .locals 3

    .line 205
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    .line 206
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 207
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyItemChanged(I)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method public updateLocalesWhenAnimationStops(Landroid/os/LocaleList;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    return-void

    .line 279
    :cond_0
    invoke-static {p1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 281
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    .line 282
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    .line 283
    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    .line 300
    return-void
.end method
