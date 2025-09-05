.class final Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ActionBarShadowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ActionBarShadowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScrollChangeWatcher"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAnchorView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/widget/ActionBarShadowController;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/ActionBarShadowController;Landroid/app/Activity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->this$0:Lcom/android/settings/widget/ActionBarShadowController;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mActivity:Landroid/app/Activity;

    .line 106
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mAnchorView:Landroid/view/View;

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/widget/ActionBarShadowController;Landroid/view/View;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->this$0:Lcom/android/settings/widget/ActionBarShadowController;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mAnchorView:Landroid/view/View;

    .line 111
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mActivity:Landroid/app/Activity;

    .line 112
    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->updateDropShadow(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public updateDropShadow(Landroid/view/View;)V
    .locals 3

    .line 121
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    .line 122
    iget-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mAnchorView:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mAnchorView:Landroid/view/View;

    if-eqz p1, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_3

    .line 127
    if-eqz p1, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    .line 130
    :cond_3
    :goto_0
    return-void
.end method
