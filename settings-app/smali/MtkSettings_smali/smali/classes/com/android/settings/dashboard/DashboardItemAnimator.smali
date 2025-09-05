.class public Lcom/android/settings/dashboard/DashboardItemAnimator;
.super Landroid/support/v7/widget/DefaultItemAnimator;
.source "DashboardItemAnimator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 7

    .line 28
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 29
    instance-of v0, v0, Lcom/android/settingslib/drawer/Tile;

    if-eqz v0, :cond_1

    if-ne p1, p2, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    int-to-float p3, p3

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 34
    int-to-float p4, p4

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    add-float/2addr p4, v0

    float-to-int p4, p4

    .line 37
    :cond_0
    if-ne p3, p5, :cond_1

    if-ne p4, p6, :cond_1

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 39
    const/4 p1, 0x0

    return p1

    .line 42
    :cond_1
    move v3, p3

    move v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Landroid/support/v7/widget/DefaultItemAnimator;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1
.end method
