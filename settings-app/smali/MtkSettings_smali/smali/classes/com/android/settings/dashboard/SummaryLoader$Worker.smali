.class Lcom/android/settings/dashboard/SummaryLoader$Worker;
.super Landroid/os/Handler;
.source "SummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SummaryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/SummaryLoader;Landroid/os/Looper;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    .line 286
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 287
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 291
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 309
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 310
    :goto_0
    iget-object p1, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {p1, v1}, Lcom/android/settings/dashboard/SummaryLoader;->access$600(Lcom/android/settings/dashboard/SummaryLoader;Z)V

    goto :goto_3

    .line 305
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/settingslib/drawer/Tile;

    .line 306
    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->access$500(Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settingslib/drawer/Tile;)V

    .line 307
    goto :goto_3

    .line 293
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    .line 294
    invoke-static {p1}, Lcom/android/settings/dashboard/SummaryLoader;->access$400(Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v0}, Lcom/android/settings/dashboard/SummaryLoader;->access$300(Lcom/android/settings/dashboard/SummaryLoader;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object p1

    .line 295
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 298
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object p1

    .line 299
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    .line 300
    iget-object v2, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v2, v0}, Lcom/android/settings/dashboard/SummaryLoader;->access$500(Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settingslib/drawer/Tile;)V

    .line 301
    goto :goto_1

    .line 302
    :cond_2
    iget-object p1, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {p1, v1}, Lcom/android/settings/dashboard/SummaryLoader;->access$600(Lcom/android/settings/dashboard/SummaryLoader;Z)V

    .line 303
    goto :goto_3

    .line 296
    :cond_3
    :goto_2
    return-void

    .line 313
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
