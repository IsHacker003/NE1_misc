.class Lcom/android/settings/dashboard/DashboardData$Item;
.super Ljava/lang/Object;
.source "DashboardData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Item"
.end annotation


# instance fields
.field public final entity:Ljava/lang/Object;

.field public final id:I

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    .line 378
    iput p2, p0, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    .line 379
    iput p3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    .line 380
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 390
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 391
    return v0

    .line 394
    :cond_0
    instance-of v1, p1, Lcom/android/settings/dashboard/DashboardData$Item;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 395
    return v2

    .line 398
    :cond_1
    check-cast p1, Lcom/android/settings/dashboard/DashboardData$Item;

    .line 399
    iget v1, p0, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    iget v3, p1, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    if-ne v1, v3, :cond_9

    iget v1, p0, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    iget v3, p1, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    if-eq v1, v3, :cond_2

    goto :goto_3

    .line 403
    :cond_2
    iget v1, p0, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    const v3, 0x7f0d0051    # @layout/condition_container 'res/layout/condition_container.xml'

    if-eq v1, v3, :cond_5

    const v3, 0x7f0d0073    # @layout/dashboard_tile 'res/layout/dashboard_tile.xml'

    if-eq v1, v3, :cond_3

    const v3, 0x7f0d0164    # @layout/suggestion_container 'res/layout/suggestion_container.xml'

    if-eq v1, v3, :cond_5

    goto :goto_1

    .line 405
    :cond_3
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    .line 406
    iget-object p1, p1, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    check-cast p1, Lcom/android/settingslib/drawer/Tile;

    .line 409
    iget-object v3, v1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, v1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    .line 410
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 409
    :cond_4
    move v0, v2

    :goto_0
    return v0

    .line 414
    :cond_5
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 415
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 416
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 417
    instance-of v3, v1, Lcom/android/settingslib/drawer/Tile;

    if-eqz v3, :cond_6

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    iget-object v1, v1, Lcom/android/settingslib/drawer/Tile;->remoteViews:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_6

    .line 419
    return v2

    .line 424
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    if-nez v1, :cond_8

    iget-object p1, p1, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_2

    .line 425
    :cond_8
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 424
    :goto_2
    return v0

    .line 400
    :cond_9
    :goto_3
    return v2
.end method
