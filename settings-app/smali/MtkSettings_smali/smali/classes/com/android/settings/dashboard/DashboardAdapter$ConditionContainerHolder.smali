.class public Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;
.super Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
.source "DashboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConditionContainerHolder"
.end annotation


# instance fields
.field public final data:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 404
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;-><init>(Landroid/view/View;)V

    .line 405
    const v0, 0x7f0a00ed    # @id/data

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$ConditionContainerHolder;->data:Landroid/support/v7/widget/RecyclerView;

    .line 406
    return-void
.end method
