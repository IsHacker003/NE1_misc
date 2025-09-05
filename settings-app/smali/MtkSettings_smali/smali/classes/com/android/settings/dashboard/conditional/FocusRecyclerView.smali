.class public Lcom/android/settings/dashboard/conditional/FocusRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "FocusRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/FocusRecyclerView$DetachListener;,
        Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;
    }
.end annotation


# instance fields
.field private mDetachListener:Lcom/android/settings/dashboard/conditional/FocusRecyclerView$DetachListener;

.field private mListener:Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onDetachedFromWindow()V

    .line 55
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->mDetachListener:Lcom/android/settings/dashboard/conditional/FocusRecyclerView$DetachListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->mDetachListener:Lcom/android/settings/dashboard/conditional/FocusRecyclerView$DetachListener;

    invoke-interface {v0}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView$DetachListener;->onDetachedFromWindow()V

    .line 58
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onWindowFocusChanged(Z)V

    .line 38
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->mListener:Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->mListener:Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;

    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;->onWindowFocusChanged(Z)V

    .line 41
    :cond_0
    return-void
.end method

.method public setDetachListener(Lcom/android/settings/dashboard/conditional/FocusRecyclerView$DetachListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->mDetachListener:Lcom/android/settings/dashboard/conditional/FocusRecyclerView$DetachListener;

    .line 62
    return-void
.end method

.method public setListener(Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->mListener:Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;

    .line 45
    return-void
.end method
