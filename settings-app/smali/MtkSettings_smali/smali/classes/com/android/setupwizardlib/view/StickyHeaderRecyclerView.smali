.class public Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;
.super Lcom/android/setupwizardlib/view/HeaderRecyclerView;
.source "StickyHeaderRecyclerView.java"


# instance fields
.field private mStatusBarInset:I

.field private mSticky:Landroid/view/View;

.field private mStickyRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mStatusBarInset:I

    .line 45
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mStickyRect:Landroid/graphics/RectF;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mStatusBarInset:I

    .line 45
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mStickyRect:Landroid/graphics/RectF;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mStatusBarInset:I

    .line 45
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mStickyRect:Landroid/graphics/RectF;

    .line 57
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mStickyRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mStickyRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mStickyRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 138
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->getHeader()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 140
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 95
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 96
    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mSticky:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->getHeader()Landroid/view/View;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 100
    if-eqz v0, :cond_0

    .line 102
    move-object v2, v0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mSticky:Landroid/view/View;

    .line 102
    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mSticky:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_1

    .line 104
    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 105
    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mStatusBarInset:I

    if-lt v4, v5, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mStickyRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    goto :goto_3

    .line 107
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mStickyRect:Landroid/graphics/RectF;

    neg-int v5, v0

    iget v6, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mStatusBarInset:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 108
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v7, v0

    iget v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mStatusBarInset:I

    add-int/2addr v7, v0

    int-to-float v0, v7

    .line 107
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mStickyRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1, v3, v3, v0, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 111
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 115
    :goto_3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 117
    :cond_4
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mStatusBarInset:I

    .line 124
    nop

    .line 125
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    .line 128
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 124
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 131
    :cond_0
    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 61
    invoke-super/range {p0 .. p5}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->onLayout(ZIIII)V

    .line 62
    iget-object p1, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mSticky:Landroid/view/View;

    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->updateStickyView()V

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mSticky:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->getHeader()Landroid/view/View;

    move-result-object p1

    .line 67
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-nez p2, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    neg-int p2, p2

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 68
    const/4 p4, 0x0

    invoke-virtual {p1, p4, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 72
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 76
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->onMeasure(II)V

    .line 77
    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mSticky:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->getHeader()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->measureChild(Landroid/view/View;II)V

    .line 80
    :cond_0
    return-void
.end method

.method public updateStickyView()V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->getHeader()Landroid/view/View;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    const-string v1, "sticky"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderRecyclerView;->mSticky:Landroid/view/View;

    .line 91
    :cond_0
    return-void
.end method
