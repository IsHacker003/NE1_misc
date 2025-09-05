.class public Lcom/android/settings/dashboard/DashboardData$ItemsDataDiffCallback;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "DashboardData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemsDataDiffCallback"
.end annotation


# instance fields
.field private final mNewItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DashboardData$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mOldItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DashboardData$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DashboardData$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DashboardData$Item;",
            ">;)V"
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardData$ItemsDataDiffCallback;->mOldItems:Ljava/util/List;

    .line 310
    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardData$ItemsDataDiffCallback;->mNewItems:Ljava/util/List;

    .line 311
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData$ItemsDataDiffCallback;->mOldItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dashboard/DashboardData$Item;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData$ItemsDataDiffCallback;->mNewItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/dashboard/DashboardData$Item;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData$ItemsDataDiffCallback;->mOldItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dashboard/DashboardData$Item;

    iget p1, p1, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData$ItemsDataDiffCallback;->mNewItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/dashboard/DashboardData$Item;

    iget p2, p2, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData$ItemsDataDiffCallback;->mNewItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData$ItemsDataDiffCallback;->mOldItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
