.class public Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MatchParentShrinkingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 186
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    .line 96
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    .line 104
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    .line 110
    const v3, 0x800033

    iput v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    .line 169
    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mLayoutDirection:I

    .line 188
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 191
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 192
    if-ltz p2, :cond_0

    .line 193
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setOrientation(I)V

    .line 196
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 197
    if-ltz p2, :cond_1

    .line 198
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setGravity(I)V

    .line 201
    :cond_1
    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 202
    if-nez p2, :cond_2

    .line 203
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setBaselineAligned(Z)V

    .line 206
    :cond_2
    const/4 p2, 0x4

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    .line 208
    const/4 p2, 0x3

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    .line 211
    const/4 p2, 0x6

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    .line 213
    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    const/4 p2, 0x7

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    .line 215
    const/16 p2, 0x8

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    .line 217
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 10

    .line 959
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 961
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 962
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 963
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 964
    nop

    .line 965
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 967
    iget v2, v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 970
    iget v9, v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    .line 971
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    .line 974
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 975
    iput v9, v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    .line 961
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 979
    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 0

    .line 1340
    add-int/2addr p4, p2

    add-int/2addr p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 1341
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1443
    instance-of p1, p1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    return p1
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 6

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->isLayoutRtl()Z

    move-result v1

    .line 360
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 361
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 363
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 364
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 367
    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 370
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    sub-int/2addr v3, v4

    .line 372
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 360
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 378
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 380
    if-nez v0, :cond_4

    .line 381
    if-eqz v1, :cond_3

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingLeft()I

    move-result v0

    goto :goto_2

    .line 384
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 387
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 388
    if-eqz v1, :cond_5

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 391
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 394
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 396
    :cond_6
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 5

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 332
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 333
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 335
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 336
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 338
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 339
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 332
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 346
    nop

    .line 347
    if-nez v0, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 350
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 351
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 353
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 355
    :cond_3
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 399
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 401
    iget-object p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 402
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 405
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 405
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 407
    iget-object p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 408
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 1454
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1455
    const-string v0, "layout:baselineAligned"

    iget-boolean v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1456
    const-string v0, "layout:baselineAlignedChildIndex"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1457
    const-string v0, "measurement:baselineChildTop"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1458
    const-string v0, "measurement:orientation"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1459
    const-string v0, "measurement:gravity"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1460
    const-string v0, "measurement:totalLength"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1461
    const-string v0, "layout:totalLength"

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1462
    const-string v0, "layout:useLargestChild"

    iget-boolean v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1463
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->generateDefaultLayoutParams()Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .locals 3

    .line 1426
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 1427
    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1428
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1429
    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1431
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .locals 2

    .line 1413
    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .locals 1

    .line 1436
    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1448
    const-class v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    .line 467
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    .line 468
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_6

    .line 476
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 479
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 480
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v0, :cond_1

    .line 482
    return v2

    .line 486
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_2
    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    .line 498
    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 499
    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 500
    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    .line 501
    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 503
    :cond_3
    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBottom:I

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v2, v3

    .line 504
    goto :goto_0

    .line 507
    :cond_4
    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBottom:I

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 514
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 515
    iget v0, v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    .line 472
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 524
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 0

    .line 1032
    const/4 p1, 0x0

    return p1
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 0

    .line 1074
    const/4 p1, 0x0

    return p1
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 0

    .line 1086
    const/4 p1, 0x0

    return p1
.end method

.method public getOrientation()I
    .locals 1

    .line 1364
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method getVirtualChildCount()I
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 576
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4

    .line 613
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 614
    iget p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 615
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 616
    iget p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    .line 617
    :cond_3
    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 618
    nop

    .line 619
    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    .line 620
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    .line 621
    nop

    .line 622
    nop

    .line 625
    move v0, v1

    goto :goto_1

    .line 619
    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 625
    :cond_5
    :goto_1
    return v0

    .line 627
    :cond_6
    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 26

    move-object/from16 v6, p0

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->isLayoutRtl()Z

    move-result v2

    .line 1217
    iget v7, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    .line 1223
    sub-int v3, p4, p2

    .line 1224
    iget v4, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int v8, v3, v4

    .line 1227
    sub-int/2addr v3, v7

    iget v4, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    sub-int v9, v3, v4

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v10

    .line 1231
    iget v3, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    const v4, 0x800007

    and-int/2addr v3, v4

    .line 1232
    iget v4, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v11, v4, 0x70

    .line 1234
    iget-boolean v12, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    .line 1236
    iget-object v13, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mMaxAscent:[I

    .line 1237
    iget-object v14, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mMaxDescent:[I

    .line 1239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLayoutDirection()I

    move-result v4

    .line 1240
    invoke-static {v3, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    .line 1253
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    goto :goto_0

    .line 1243
    :cond_0
    iget v3, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    add-int v3, v3, p3

    sub-int v3, v3, p1

    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int v0, v3, v0

    .line 1244
    goto :goto_0

    .line 1248
    :cond_1
    iget v3, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    sub-int v0, p3, p1

    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    div-int/2addr v0, v15

    add-int/2addr v0, v3

    .line 1249
    nop

    .line 1257
    :goto_0
    nop

    .line 1258
    nop

    .line 1260
    const/4 v1, 0x0

    if-eqz v2, :cond_2

    .line 1261
    add-int/lit8 v2, v10, -0x1

    .line 1262
    nop

    .line 1265
    move/from16 v16, v2

    const/16 v17, -0x1

    goto :goto_1

    :cond_2
    move/from16 v16, v1

    move/from16 v17, v5

    :goto_1
    move v3, v1

    :goto_2
    if-ge v3, v10, :cond_e

    .line 1266
    mul-int v1, v17, v3

    add-int v2, v16, v1

    .line 1267
    invoke-virtual {v6, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1269
    if-nez v1, :cond_3

    .line 1270
    invoke-virtual {v6, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1265
    move/from16 v18, v5

    move/from16 v25, v7

    move/from16 v22, v10

    move/from16 v23, v11

    :goto_3
    const/16 v20, -0x1

    goto/16 :goto_9

    .line 1271
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v15, 0x8

    if-eq v5, v15, :cond_d

    .line 1272
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1273
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1274
    nop

    .line 1276
    nop

    .line 1277
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v4, v20

    check-cast v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 1279
    if-eqz v12, :cond_4

    move/from16 v21, v3

    iget v3, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    move/from16 v22, v10

    const/4 v10, -0x1

    if-eq v3, v10, :cond_5

    .line 1280
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v3

    goto :goto_4

    .line 1283
    :cond_4
    move/from16 v21, v3

    move/from16 v22, v10

    :cond_5
    const/4 v3, -0x1

    :goto_4
    iget v10, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    .line 1284
    if-gez v10, :cond_6

    .line 1285
    nop

    .line 1288
    move v10, v11

    :cond_6
    and-int/lit8 v10, v10, 0x70

    move/from16 v23, v11

    const/16 v11, 0x10

    if-eq v10, v11, :cond_b

    const/16 v11, 0x30

    if-eq v10, v11, :cond_9

    const/16 v11, 0x50

    if-eq v10, v11, :cond_7

    .line 1320
    nop

    .line 1324
    move v3, v7

    :goto_5
    const/4 v11, -0x1

    :goto_6
    const/16 v18, 0x1

    goto :goto_8

    .line 1313
    :cond_7
    sub-int v10, v8, v5

    iget v11, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v11

    .line 1314
    const/4 v11, -0x1

    if-eq v3, v11, :cond_8

    .line 1315
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v11, v3

    .line 1316
    const/4 v3, 0x2

    aget v20, v14, v3

    sub-int v20, v20, v11

    sub-int v10, v10, v20

    .line 1317
    nop

    .line 1324
    move v3, v10

    goto :goto_5

    :cond_8
    move v3, v10

    goto :goto_6

    .line 1290
    :cond_9
    iget v10, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v7

    .line 1291
    const/4 v11, -0x1

    if-eq v3, v11, :cond_a

    .line 1292
    const/16 v18, 0x1

    aget v20, v13, v18

    sub-int v20, v20, v3

    add-int v10, v10, v20

    goto :goto_7

    .line 1324
    :cond_a
    const/16 v18, 0x1

    :goto_7
    move v3, v10

    goto :goto_8

    .line 1308
    :cond_b
    const/4 v11, -0x1

    const/16 v18, 0x1

    sub-int v3, v9, v5

    const/4 v10, 0x2

    div-int/2addr v3, v10

    add-int/2addr v3, v7

    iget v10, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v10

    iget v10, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v10

    .line 1310
    nop

    .line 1324
    :goto_8
    invoke-virtual {v6, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1325
    iget v10, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    add-int/2addr v0, v10

    .line 1328
    :cond_c
    iget v10, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v0

    .line 1329
    invoke-virtual {v6, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v19, v10, v0

    move-object v0, v6

    move-object/from16 v24, v1

    move v11, v2

    move/from16 v2, v19

    move/from16 v19, v21

    move/from16 v25, v7

    const/16 v20, -0x1

    move-object v7, v4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1331
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    .line 1332
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    add-int/2addr v10, v15

    .line 1334
    invoke-virtual {v6, v0, v11}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v3, v19, v0

    .line 1265
    move v0, v10

    goto :goto_9

    :cond_d
    move/from16 v19, v3

    move/from16 v25, v7

    move/from16 v22, v10

    move/from16 v23, v11

    const/16 v18, 0x1

    goto/16 :goto_3

    :goto_9
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v18

    move/from16 v10, v22

    move/from16 v11, v23

    move/from16 v7, v25

    const/4 v15, 0x2

    goto/16 :goto_2

    .line 1337
    :cond_e
    return-void
.end method

.method layoutVertical(IIII)V
    .locals 18

    move-object/from16 v6, p0

    .line 1111
    iget v7, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    .line 1117
    sub-int v2, p3, p1

    .line 1118
    iget v3, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    sub-int v8, v2, v3

    .line 1121
    sub-int/2addr v2, v7

    iget v3, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    sub-int v9, v2, v3

    .line 1123
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v10

    .line 1125
    iget v2, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    .line 1126
    iget v3, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    const v4, 0x800007

    and-int v11, v3, v4

    .line 1128
    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    const/16 v3, 0x50

    if-eq v2, v3, :cond_0

    .line 1141
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    goto :goto_0

    .line 1131
    :cond_0
    iget v2, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    add-int v2, v2, p4

    sub-int v2, v2, p2

    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int v0, v2, v0

    .line 1132
    goto :goto_0

    .line 1136
    :cond_1
    iget v2, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    sub-int v0, p4, p2

    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    .line 1137
    nop

    .line 1145
    :goto_0
    const/4 v1, 0x0

    move v12, v1

    :goto_1
    if-ge v12, v10, :cond_8

    .line 1146
    invoke-virtual {v6, v12}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1147
    const/4 v14, 0x1

    if-nez v13, :cond_2

    .line 1148
    invoke-virtual {v6, v12}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_4

    .line 1149
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    .line 1150
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1151
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1153
    nop

    .line 1154
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 1156
    iget v1, v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    .line 1157
    if-gez v1, :cond_3

    .line 1158
    nop

    .line 1160
    move v1, v11

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLayoutDirection()I

    move-result v2

    .line 1161
    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    .line 1162
    and-int/lit8 v1, v1, 0x7

    if-eq v1, v14, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    .line 1174
    iget v1, v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    .line 1178
    :goto_2
    move v2, v1

    goto :goto_3

    .line 1169
    :cond_4
    sub-int v1, v8, v4

    iget v2, v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    .line 1170
    goto :goto_2

    .line 1164
    :cond_5
    sub-int v1, v9, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    .line 1166
    goto :goto_2

    .line 1178
    :goto_3
    invoke-virtual {v6, v12}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1179
    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 1182
    :cond_6
    iget v1, v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int v16, v0, v1

    .line 1183
    invoke-virtual {v6, v13}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v3, v16, v0

    move-object v0, v6

    move-object v1, v13

    move-object v14, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1185
    iget v0, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v0

    invoke-virtual {v6, v13}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int/2addr v15, v0

    add-int v16, v16, v15

    .line 1187
    invoke-virtual {v6, v13, v12}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v12, v0

    .line 1145
    move/from16 v0, v16

    :cond_7
    :goto_4
    const/4 v1, 0x1

    add-int/2addr v12, v1

    goto/16 :goto_1

    .line 1190
    :cond_8
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6

    .line 1062
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1064
    return-void
.end method

.method measureHorizontal(II)V
    .locals 0

    .line 994
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "horizontal mode not supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method measureNullChild(I)I
    .locals 0

    .line 1043
    const/4 p1, 0x0

    return p1
.end method

.method measureVertical(II)V
    .locals 41

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 642
    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 643
    nop

    .line 644
    nop

    .line 645
    nop

    .line 646
    nop

    .line 647
    nop

    .line 648
    nop

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 652
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 653
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 655
    nop

    .line 656
    nop

    .line 658
    iget v14, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    .line 659
    iget-boolean v15, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    .line 661
    nop

    .line 664
    const/16 v16, 0x0

    const/16 v17, 0x1

    move v1, v10

    move v3, v1

    move v4, v3

    move v5, v4

    move/from16 v18, v5

    move/from16 v20, v18

    move/from16 v0, v16

    move/from16 v19, v17

    const/high16 v2, -0x80000000

    :goto_0
    const/16 v6, 0x8

    move/from16 v22, v4

    if-ge v5, v11, :cond_11

    .line 665
    invoke-virtual {v7, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 667
    if-nez v4, :cond_0

    .line 668
    iget v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {v7, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 669
    nop

    .line 664
    move v6, v10

    move/from16 v31, v11

    move/from16 v28, v13

    move/from16 v4, v22

    :goto_1
    const/high16 v10, -0x80000000

    goto/16 :goto_b

    .line 672
    :cond_0
    move/from16 v24, v1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 673
    invoke-virtual {v7, v4, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v5, v1

    .line 674
    nop

    .line 664
    move v6, v10

    move/from16 v31, v11

    move/from16 v28, v13

    move/from16 v4, v22

    move/from16 v1, v24

    goto :goto_1

    .line 677
    :cond_1
    invoke-virtual {v7, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 678
    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v6, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v1, v6

    iput v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 681
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 683
    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    add-float v25, v0, v1

    .line 685
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v13, v1, :cond_3

    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_3

    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_3

    .line 689
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 690
    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    move/from16 v26, v2

    iget v2, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 691
    nop

    .line 692
    nop

    .line 730
    move/from16 v33, v3

    move-object v8, v4

    move-object v9, v6

    move/from16 v34, v10

    move/from16 v31, v11

    move/from16 v28, v13

    move/from16 v18, v17

    move/from16 v32, v22

    move/from16 v13, v24

    const/high16 v10, -0x80000000

    move v11, v5

    goto/16 :goto_4

    .line 693
    :cond_3
    move/from16 v26, v2

    .line 695
    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_4

    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_4

    .line 700
    nop

    .line 701
    const/4 v0, -0x2

    iput v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    .line 708
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const/high16 v2, -0x80000000

    :goto_2
    const/16 v23, 0x0

    .line 710
    cmpl-float v0, v25, v16

    if-nez v0, :cond_5

    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 708
    move/from16 v27, v0

    goto :goto_3

    .line 710
    :cond_5
    nop

    .line 708
    const/16 v27, 0x0

    :goto_3
    move-object v0, v7

    move/from16 v28, v13

    move/from16 v13, v24

    const/high16 v24, 0x40000000    # 2.0f

    move-object v1, v4

    move/from16 v29, v2

    move/from16 v30, v26

    move v2, v5

    move/from16 v31, v11

    move v11, v3

    move v3, v8

    move-object v8, v4

    move/from16 v33, v11

    move/from16 v32, v22

    move/from16 v11, v24

    move/from16 v4, v23

    move v11, v5

    move v5, v9

    move-object v9, v6

    move/from16 v34, v10

    const/high16 v10, -0x80000000

    move/from16 v6, v27

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 712
    move/from16 v0, v29

    if-eq v0, v10, :cond_6

    .line 713
    iput v0, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    .line 716
    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 717
    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 718
    add-int v2, v1, v0

    iget v3, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 719
    invoke-virtual {v7, v8}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    .line 718
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 721
    if-eqz v15, :cond_7

    .line 722
    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 730
    move/from16 v26, v2

    goto :goto_4

    :cond_7
    move/from16 v1, v30

    move/from16 v26, v1

    :goto_4
    if-ltz v14, :cond_8

    add-int/lit8 v5, v11, 0x1

    if-ne v14, v5, :cond_8

    .line 731
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iput v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    .line 737
    :cond_8
    if-ge v11, v14, :cond_a

    iget v0, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-gtz v0, :cond_9

    goto :goto_5

    .line 738
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_a
    :goto_5
    nop

    .line 745
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_b

    iget v0, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    .line 750
    nop

    .line 751
    nop

    .line 754
    move/from16 v0, v17

    move/from16 v20, v0

    goto :goto_6

    :cond_b
    const/4 v2, -0x1

    :cond_c
    const/4 v0, 0x0

    :goto_6
    iget v1, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    iget v3, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    .line 755
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 756
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 757
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v34

    invoke-static {v6, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->combineMeasuredStates(II)I

    move-result v5

    .line 759
    if-eqz v19, :cond_d

    iget v6, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    if-ne v6, v2, :cond_d

    .line 760
    move/from16 v2, v17

    goto :goto_7

    .line 759
    :cond_d
    nop

    .line 760
    const/4 v2, 0x0

    :goto_7
    iget v6, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v16

    if-lez v6, :cond_f

    .line 765
    nop

    .line 766
    if-eqz v0, :cond_e

    goto :goto_8

    .line 765
    :cond_e
    move v1, v3

    :goto_8
    move/from16 v9, v33

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 772
    move/from16 v0, v32

    goto :goto_a

    .line 768
    :cond_f
    move/from16 v9, v33

    .line 769
    if-eqz v0, :cond_10

    goto :goto_9

    .line 768
    :cond_10
    move v1, v3

    :goto_9
    move/from16 v3, v32

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 772
    move v3, v9

    :goto_a
    invoke-virtual {v7, v8, v11}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v1, v11

    .line 664
    move/from16 v19, v2

    move v6, v5

    move/from16 v2, v26

    move v5, v1

    move v1, v4

    move v4, v0

    move/from16 v0, v25

    :goto_b
    add-int/lit8 v5, v5, 0x1

    move v10, v6

    move/from16 v13, v28

    move/from16 v11, v31

    move/from16 v8, p1

    move/from16 v9, p2

    goto/16 :goto_0

    .line 775
    :cond_11
    move v9, v3

    move v4, v10

    move/from16 v31, v11

    move/from16 v28, v13

    move/from16 v3, v22

    const/high16 v10, -0x80000000

    move v13, v1

    move v1, v2

    const/4 v2, -0x1

    iget v5, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    if-lez v5, :cond_12

    move/from16 v5, v31

    invoke-virtual {v7, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 776
    iget v8, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v11, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v8, v11

    iput v8, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    goto :goto_c

    .line 779
    :cond_12
    move/from16 v5, v31

    :cond_13
    :goto_c
    if-eqz v15, :cond_17

    move/from16 v8, v28

    if-eq v8, v10, :cond_14

    if-nez v8, :cond_18

    .line 781
    :cond_14
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 783
    const/4 v10, 0x0

    :goto_d
    if-ge v10, v5, :cond_18

    .line 784
    invoke-virtual {v7, v10}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 786
    if-nez v11, :cond_15

    .line 787
    iget v11, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {v7, v10}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v14

    add-int/2addr v11, v14

    iput v11, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 788
    goto :goto_e

    .line 791
    :cond_15
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v6, :cond_16

    .line 792
    invoke-virtual {v7, v11, v10}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v11

    add-int/2addr v10, v11

    .line 793
    goto :goto_e

    .line 796
    :cond_16
    nop

    .line 797
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 799
    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 800
    add-int v21, v2, v1

    iget v6, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int v21, v21, v6

    iget v6, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int v21, v21, v6

    .line 801
    invoke-virtual {v7, v11}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int v6, v21, v6

    .line 800
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 783
    :goto_e
    add-int/lit8 v10, v10, 0x1

    const/4 v2, -0x1

    const/16 v6, 0x8

    goto :goto_d

    .line 806
    :cond_17
    move/from16 v8, v28

    :cond_18
    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v6, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    iget v10, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    add-int/2addr v6, v10

    add-int/2addr v2, v6

    iput v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 808
    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 814
    move/from16 v6, p2

    const/4 v10, 0x0

    invoke-static {v2, v6, v10}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->resolveSizeAndState(III)I

    move-result v2

    .line 815
    const v10, 0xffffff

    and-int/2addr v10, v2

    .line 820
    iget v11, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v10, v11

    .line 821
    if-nez v18, :cond_1d

    if-eqz v10, :cond_19

    cmpl-float v11, v0, v16

    if-lez v11, :cond_19

    goto :goto_11

    .line 912
    :cond_19
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 918
    if-eqz v15, :cond_1c

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v8, v3, :cond_1c

    .line 919
    const/4 v3, 0x0

    :goto_f
    if-ge v3, v5, :cond_1c

    .line 920
    invoke-virtual {v7, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 922
    if-eqz v8, :cond_1b

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1a

    .line 923
    goto :goto_10

    .line 926
    :cond_1a
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 928
    iget v9, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    .line 929
    cmpl-float v9, v9, v16

    if-lez v9, :cond_1b

    .line 930
    nop

    .line 931
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 933
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 930
    invoke-virtual {v8, v9, v11}, Landroid/view/View;->measure(II)V

    .line 919
    :cond_1b
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 940
    :cond_1c
    move/from16 v9, p1

    goto/16 :goto_1a

    .line 822
    :cond_1d
    :goto_11
    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    cmpl-float v1, v1, v16

    if-lez v1, :cond_1e

    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    .line 824
    :cond_1e
    const/4 v1, 0x0

    iput v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 826
    move v9, v0

    move v0, v1

    move/from16 v40, v10

    move v10, v4

    move/from16 v4, v40

    :goto_12
    if-ge v0, v5, :cond_2d

    .line 827
    invoke-virtual {v7, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 829
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_1f

    .line 830
    nop

    .line 826
    move/from16 v37, v9

    move/from16 v9, p1

    goto/16 :goto_19

    .line 833
    :cond_1f
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    .line 835
    iget v1, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    .line 838
    cmpl-float v18, v1, v16

    if-lez v18, :cond_24

    if-lez v4, :cond_24

    .line 840
    int-to-float v15, v4

    mul-float/2addr v15, v1

    div-float/2addr v15, v9

    float-to-int v15, v15

    .line 841
    sub-float/2addr v9, v1

    .line 842
    sub-int/2addr v4, v15

    .line 844
    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    move/from16 v35, v4

    iget v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    add-int/2addr v1, v4

    iget v4, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    iget v4, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v4

    iget v4, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    move/from16 v36, v9

    move/from16 v9, p1

    invoke-static {v9, v1, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 850
    iget v4, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    if-nez v4, :cond_22

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v8, v4, :cond_20

    goto :goto_14

    .line 863
    :cond_20
    nop

    .line 864
    if-lez v15, :cond_21

    goto :goto_13

    :cond_21
    const/4 v15, 0x0

    :goto_13
    invoke-static {v15, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 863
    invoke-virtual {v11, v1, v15}, Landroid/view/View;->measure(II)V

    goto :goto_15

    .line 853
    :cond_22
    :goto_14
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v15

    .line 854
    if-gez v4, :cond_23

    .line 855
    nop

    .line 858
    const/4 v4, 0x0

    .line 859
    :cond_23
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 858
    invoke-virtual {v11, v1, v4}, Landroid/view/View;->measure(II)V

    .line 860
    nop

    .line 869
    :goto_15
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    invoke-static {v10, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->combineMeasuredStates(II)I

    move-result v10

    .line 871
    nop

    .line 891
    move/from16 v37, v36

    goto :goto_16

    .line 871
    :cond_24
    move v1, v9

    move/from16 v9, p1

    if-gez v4, :cond_26

    iget v15, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->height:I

    move/from16 v37, v1

    const/4 v1, -0x1

    if-ne v15, v1, :cond_27

    .line 872
    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    iget v15, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    add-int/2addr v1, v15

    iget v15, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v15

    iget v15, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v15

    iget v15, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    invoke-static {v9, v1, v15}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 876
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v4

    .line 877
    if-gez v15, :cond_25

    .line 878
    nop

    .line 880
    const/4 v15, 0x0

    :cond_25
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v18, v15, v18

    sub-int v4, v4, v18

    .line 882
    nop

    .line 883
    move/from16 v38, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v15, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 882
    invoke-virtual {v11, v1, v15}, Landroid/view/View;->measure(II)V

    .line 886
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    invoke-static {v10, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->combineMeasuredStates(II)I

    move-result v10

    .line 891
    move/from16 v35, v38

    goto :goto_16

    :cond_26
    move/from16 v37, v1

    :cond_27
    move/from16 v35, v4

    :goto_16
    iget v1, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->leftMargin:I

    iget v4, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v4

    .line 892
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    .line 893
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 895
    const/high16 v15, 0x40000000    # 2.0f

    if-eq v12, v15, :cond_28

    iget v15, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    move/from16 v39, v1

    const/4 v1, -0x1

    if-ne v15, v1, :cond_29

    .line 898
    move/from16 v1, v17

    goto :goto_17

    .line 895
    :cond_28
    move/from16 v39, v1

    .line 898
    :cond_29
    const/4 v1, 0x0

    .line 899
    :goto_17
    if-eqz v1, :cond_2a

    .line 898
    move/from16 v4, v39

    :cond_2a
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 901
    if-eqz v19, :cond_2b

    iget v3, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2c

    .line 903
    move/from16 v3, v17

    goto :goto_18

    .line 901
    :cond_2b
    const/4 v4, -0x1

    .line 903
    :cond_2c
    const/4 v3, 0x0

    :goto_18
    iget v15, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 904
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v18, v15, v18

    iget v4, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->topMargin:I

    add-int v18, v18, v4

    iget v4, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->bottomMargin:I

    add-int v18, v18, v4

    .line 905
    invoke-virtual {v7, v11}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int v4, v18, v4

    .line 904
    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 826
    move/from16 v19, v3

    move/from16 v4, v35

    move v3, v1

    :goto_19
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v37

    const/4 v1, 0x0

    goto/16 :goto_12

    .line 909
    :cond_2d
    move/from16 v9, p1

    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingTop:I

    iget v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingBottom:I

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    .line 911
    nop

    .line 940
    move v0, v3

    move v4, v10

    :goto_1a
    if-nez v19, :cond_2e

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v12, v1, :cond_2e

    .line 941
    nop

    .line 944
    move v13, v0

    :cond_2e
    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingLeft:I

    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 949
    invoke-static {v0, v9, v4}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setMeasuredDimension(II)V

    .line 952
    if-eqz v20, :cond_2f

    .line 953
    invoke-direct {v7, v5, v6}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->forceUniformWidth(II)V

    .line 955
    :cond_2f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 320
    return-void

    .line 323
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 324
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 328
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1091
    iget p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1092
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->layoutVertical(IIII)V

    goto :goto_0

    .line 1094
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->layoutHorizontal(IIII)V

    .line 1096
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 598
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureVertical(II)V

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureHorizontal(II)V

    .line 603
    :goto_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1194
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 1195
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 1196
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mLayoutDirection:I

    .line 1197
    iget p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    if-nez p1, :cond_0

    .line 1198
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    .line 1201
    :cond_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 431
    iput-boolean p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    .line 432
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 535
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 539
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    .line 540
    return-void

    .line 536
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base aligned child index out of range (0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    iput-object p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 273
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 274
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    .line 275
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    goto :goto_0

    .line 277
    :cond_1
    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    .line 278
    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    .line 280
    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setWillNotDraw(Z)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    .line 282
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 294
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    .line 295
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1379
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 1380
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1381
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1384
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 1385
    or-int/lit8 p1, p1, 0x30

    .line 1388
    :cond_1
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    .line 1389
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    .line 1391
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1395
    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1396
    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    .line 1397
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    const v1, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    .line 1398
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    .line 1400
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 462
    iput-boolean p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    .line 463
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1351
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1352
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    .line 1353
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    .line 1355
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 228
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    .line 231
    :cond_0
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    .line 232
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1404
    and-int/lit8 p1, p1, 0x70

    .line 1405
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    if-eq v0, p1, :cond_0

    .line 1406
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    .line 1407
    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->requestLayout()V

    .line 1409
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 593
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    .line 594
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 236
    const/4 v0, 0x0

    return v0
.end method
