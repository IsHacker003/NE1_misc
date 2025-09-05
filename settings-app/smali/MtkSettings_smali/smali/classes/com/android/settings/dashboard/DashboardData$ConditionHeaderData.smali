.class public Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;
.super Ljava/lang/Object;
.source "DashboardData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConditionHeaderData"
.end annotation


# instance fields
.field public final conditionCount:I

.field public final conditionIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData;->access$900(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;->conditionCount:I

    .line 441
    iget v0, p0, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;->conditionCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/Condition;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;->title:Ljava/lang/CharSequence;

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;->conditionIcons:Ljava/util/List;

    .line 443
    :goto_1
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 444
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/conditional/Condition;

    .line 445
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;->conditionIcons:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/Condition;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 447
    :cond_1
    return-void
.end method
