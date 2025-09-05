.class Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "LinkAccessibilityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreOLinkAccessibilityHelper"
.end annotation


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 151
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    .line 152
    iput-object p1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    .line 153
    return-void
.end method

.method private static convertToLocalHorizontalCoordinate(Landroid/widget/TextView;F)F
    .locals 2

    .line 306
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 308
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 309
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 310
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    .line 311
    return p1
.end method

.method private getBoundsForSpan(Landroid/text/style/ClickableSpan;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 261
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 262
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 264
    if-eqz v1, :cond_2

    .line 265
    check-cast v0, Landroid/text/Spanned;

    .line 266
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 267
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    .line 268
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 269
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    .line 270
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 271
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    .line 272
    invoke-virtual {v1, v2, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 273
    if-ne p1, v2, :cond_0

    .line 276
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 277
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 284
    float-to-int p1, v0

    iput p1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 286
    :cond_1
    float-to-int p1, v0

    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 291
    :goto_0
    iget-object p1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result p1

    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 294
    :cond_2
    return-object p2
.end method

.method private static getLineAtCoordinate(Landroid/widget/TextView;F)I
    .locals 2

    .line 315
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 317
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 318
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 319
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 320
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p0

    return p0
.end method

.method private static getOffsetAtCoordinate(Landroid/widget/TextView;IF)I
    .locals 0

    .line 324
    invoke-static {p0, p2}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->convertToLocalHorizontalCoordinate(Landroid/widget/TextView;F)F

    move-result p2

    .line 325
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p0

    return p0
.end method

.method private static getOffsetForPosition(Landroid/widget/TextView;FF)I
    .locals 1

    .line 300
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 301
    :cond_0
    invoke-static {p0, p2}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getLineAtCoordinate(Landroid/widget/TextView;F)I

    move-result p2

    .line 302
    invoke-static {p0, p2, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getOffsetAtCoordinate(Landroid/widget/TextView;IF)I

    move-result p0

    return p0
.end method

.method private getSpanForOffset(I)Landroid/text/style/ClickableSpan;
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 236
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 237
    check-cast v0, Landroid/text/Spanned;

    .line 238
    const-class v1, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, p1, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 239
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 240
    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    .line 243
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTextForSpan(Landroid/text/style/ClickableSpan;)Ljava/lang/CharSequence;
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 248
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 249
    check-cast v0, Landroid/text/Spanned;

    .line 250
    nop

    .line 251
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 252
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    .line 250
    invoke-interface {v0, v1, p1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 254
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 158
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 159
    check-cast v0, Landroid/text/Spanned;

    .line 160
    iget-object v1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, p1, p2}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getOffsetForPosition(Landroid/widget/TextView;FF)I

    move-result p1

    .line 161
    const-class p2, Landroid/text/style/ClickableSpan;

    .line 162
    invoke-interface {v0, p1, p1, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 163
    array-length p2, p1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 164
    const/4 p2, 0x0

    aget-object p1, p1, p2

    .line 165
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 168
    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 174
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 175
    check-cast v0, Landroid/text/Spanned;

    .line 176
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ClickableSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ClickableSpan;

    .line 178
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 179
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    .line 222
    const/16 p3, 0x10

    if-ne p2, p3, :cond_1

    .line 223
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getSpanForOffset(I)Landroid/text/style/ClickableSpan;

    move-result-object p2

    .line 224
    if-eqz p2, :cond_0

    .line 225
    iget-object p1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 226
    const/4 p1, 0x1

    return p1

    .line 228
    :cond_0
    const-string p2, "LinkAccessibilityHelper"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LinkSpan is null for offset: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 186
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getSpanForOffset(I)Landroid/text/style/ClickableSpan;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getTextForSpan(Landroid/text/style/ClickableSpan;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :cond_0
    const-string v0, "LinkAccessibilityHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LinkSpan is null for offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    :goto_0
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    .line 199
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getSpanForOffset(I)Landroid/text/style/ClickableSpan;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getTextForSpan(Landroid/text/style/ClickableSpan;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 203
    :cond_0
    const-string v1, "LinkAccessibilityHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LinkSpan is null for offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 206
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 207
    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 208
    iget-object v2, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->getBoundsForSpan(Landroid/text/style/ClickableSpan;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 209
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-string v0, "LinkAccessibilityHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LinkSpan bounds is empty for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 213
    :cond_1
    iget-object p1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 214
    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 215
    return-void
.end method
