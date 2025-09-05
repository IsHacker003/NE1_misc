.class public Lcom/android/settings/widget/ScrollToParentEditText;
.super Lcom/android/settings/widget/ImeAwareEditText;
.source "ScrollToParentEditText.java"


# instance fields
.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/ImeAwareEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/ScrollToParentEditText;->mRect:Landroid/graphics/Rect;

    .line 39
    return-void
.end method


# virtual methods
.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/widget/ScrollToParentEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 44
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 47
    check-cast v0, Landroid/view/View;

    iget-object p1, p0, Lcom/android/settings/widget/ScrollToParentEditText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 48
    iget-object p1, p0, Lcom/android/settings/widget/ScrollToParentEditText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1

    .line 50
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/ImeAwareEditText;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method
