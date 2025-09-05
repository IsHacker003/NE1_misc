.class public Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseTimeZoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;,
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;,
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;,
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final TYPE_HEADER:I = 0x0

.field static final TYPE_ITEM:I = 0x1


# instance fields
.field private mFilter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter<",
            "TT;>.com/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;"
        }
    .end annotation
.end field

.field private final mHeaderText:Ljava/lang/CharSequence;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mLocale:Ljava/util/Locale;

.field private final mOnListItemClickListener:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mOriginalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mShowHeader:Z

.field private final mShowItemSummary:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;Ljava/util/Locale;ZLjava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener<",
            "TT;>;",
            "Ljava/util/Locale;",
            "Z",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mOriginalItems:Ljava/util/List;

    .line 66
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mItems:Ljava/util/List;

    .line 67
    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mOnListItemClickListener:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;

    .line 68
    iput-object p3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mLocale:Ljava/util/Locale;

    .line 69
    iput-boolean p4, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mShowItemSummary:Z

    .line 70
    const/4 p1, 0x1

    if-eqz p5, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mShowHeader:Z

    .line 71
    iput-object p5, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mHeaderText:Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->setHasStableIds(Z)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)Ljava/util/Locale;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mOriginalItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mItems:Ljava/util/List;

    return-object p1
.end method

.method private getHeaderCount()I
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mShowHeader:Z

    return v0
.end method

.method private isPositionHeader(I)Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mShowHeader:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getDataItem(I)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getHeaderCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;

    return-object p1
.end method

.method public getFilter()Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter<",
            "TT;>.com/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mFilter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;

    invoke-direct {v0, p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;-><init>(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)V

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mFilter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mFilter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getHeaderCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 108
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->isPositionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getDataItem(I)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;->getItemId()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->isPositionHeader(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 96
    instance-of v0, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;

    iget-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 98
    :cond_0
    instance-of v0, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;

    if-eqz v0, :cond_2

    .line 99
    check-cast p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;

    .line 100
    invoke-virtual {p0, p2}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getDataItem(I)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->setAdapterItem(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;)V

    .line 101
    iget-object p1, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->mSummaryFrame:Landroid/view/View;

    iget-boolean p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mShowItemSummary:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 79
    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 90
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected viewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :pswitch_0
    const p2, 0x7f0d01ae    # @layout/time_zone_search_item 'res/layout/time_zone_search_item.xml'

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 87
    new-instance p2, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mOnListItemClickListener:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;

    invoke-direct {p2, p1, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;)V

    return-object p2

    .line 81
    :pswitch_1
    const p2, 0x7f0d00e4    # @layout/preference_category_material_settings 'res/layout/preference_category_material_settings.xml'

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 83
    new-instance p2, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;

    invoke-direct {p2, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setHasStableIds(Z)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 128
    return-void
.end method
