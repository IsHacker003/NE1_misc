.class public Lcom/android/settingslib/notification/ZenRadioLayout;
.super Landroid/widget/LinearLayout;
.source "ZenRadioLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private findFirstClickable(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 72
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 73
    check-cast p1, Landroid/view/ViewGroup;

    .line 74
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settingslib/notification/ZenRadioLayout;->findFirstClickable(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    return-object v1

    .line 74
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private findLastClickable(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 84
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 85
    check-cast p1, Landroid/view/ViewGroup;

    .line 86
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settingslib/notification/ZenRadioLayout;->findLastClickable(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_1

    return-object v1

    .line 86
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 91
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11

    .line 40
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/ZenRadioLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 43
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settingslib/notification/ZenRadioLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 44
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 45
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 48
    nop

    .line 49
    const/4 v5, 0x0

    .line 50
    move v6, v0

    :goto_0
    if-ge v0, v4, :cond_3

    .line 51
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 52
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 53
    if-eqz v5, :cond_0

    .line 54
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 56
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/settingslib/notification/ZenRadioLayout;->findFirstClickable(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 57
    if-eqz v5, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 58
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/settingslib/notification/ZenRadioLayout;->findLastClickable(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 59
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-eq v9, v10, :cond_2

    .line 60
    nop

    .line 61
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50
    move v6, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_3
    if-eqz v6, :cond_4

    .line 66
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 68
    :cond_4
    return-void

    .line 46
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Expected matching children"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
