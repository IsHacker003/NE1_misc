.class public Lcom/android/settings/TouchBlockingFrameLayout;
.super Landroid/widget/FrameLayout;
.source "TouchBlockingFrameLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 35
    const/4 p1, 0x0

    return p1
.end method
