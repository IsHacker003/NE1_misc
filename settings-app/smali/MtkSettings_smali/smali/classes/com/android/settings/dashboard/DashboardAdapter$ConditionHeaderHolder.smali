.class public Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;
.super Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
.source "DashboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConditionHeaderHolder"
.end annotation


# instance fields
.field public final expandIndicator:Landroid/widget/ImageView;

.field public final icons:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 394
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;-><init>(Landroid/view/View;)V

    .line 395
    const v0, 0x7f0a0031    # @id/additional_icons

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->icons:Landroid/widget/LinearLayout;

    .line 396
    const v0, 0x7f0a014e    # @id/expand_indicator

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$ConditionHeaderHolder;->expandIndicator:Landroid/widget/ImageView;

    .line 397
    return-void
.end method
