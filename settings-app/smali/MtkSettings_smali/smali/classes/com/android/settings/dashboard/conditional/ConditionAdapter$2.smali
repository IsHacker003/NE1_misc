.class Lcom/android/settings/dashboard/conditional/ConditionAdapter$2;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
.source "ConditionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/conditional/ConditionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/conditional/ConditionAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionAdapter;II)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter$2;->this$0:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getSwipeDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2

    .line 70
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const v1, 0x7f0d0055    # @layout/condition_tile 'res/layout/condition_tile.xml'

    if-ne v0, v1, :cond_0

    .line 71
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 70
    :goto_0
    return p1
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 65
    const/4 p1, 0x1

    return p1
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 76
    iget-object p2, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter$2;->this$0:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->getItem(J)Ljava/lang/Object;

    move-result-object p1

    .line 78
    if-eqz p1, :cond_0

    .line 79
    check-cast p1, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/Condition;->silence()V

    .line 81
    :cond_0
    return-void
.end method
