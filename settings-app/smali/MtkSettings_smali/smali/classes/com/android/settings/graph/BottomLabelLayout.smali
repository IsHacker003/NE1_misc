.class public Lcom/android/settings/graph/BottomLabelLayout;
.super Landroid/widget/LinearLayout;
.source "BottomLabelLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method private isStacked()Z
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/graph/BottomLabelLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .line 48
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/graph/BottomLabelLayout;->isStacked()Z

    move-result v1

    .line 50
    nop

    .line 56
    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_0

    .line 57
    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 60
    nop

    .line 65
    move v3, v2

    goto :goto_0

    .line 62
    :cond_0
    nop

    .line 65
    const/4 v0, 0x0

    move v3, v0

    move v0, p1

    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 66
    if-nez v1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/graph/BottomLabelLayout;->getMeasuredWidthAndState()I

    move-result v0

    .line 68
    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    .line 70
    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_1

    .line 71
    invoke-virtual {p0, v2}, Lcom/android/settings/graph/BottomLabelLayout;->setStacked(Z)V

    .line 73
    goto :goto_1

    .line 77
    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    .line 78
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 81
    :cond_2
    return-void
.end method

.method setStacked(Z)V
    .locals 1

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/settings/graph/BottomLabelLayout;->setOrientation(I)V

    .line 86
    if-eqz p1, :cond_0

    const v0, 0x800003

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/graph/BottomLabelLayout;->setGravity(I)V

    .line 88
    const v0, 0x7f0a0325    # @id/spacer

    invoke-virtual {p0, v0}, Lcom/android/settings/graph/BottomLabelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_2
    return-void
.end method
