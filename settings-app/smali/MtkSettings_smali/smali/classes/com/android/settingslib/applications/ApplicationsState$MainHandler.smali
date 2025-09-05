.class Lcom/android/settingslib/applications/ApplicationsState$MainHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 825
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 826
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 830
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState;->rebuildActiveSessions()V

    .line 831
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    .line 871
    :goto_0
    :pswitch_0
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_8

    .line 872
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {p1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onLoadEntriesCompleted()V

    .line 871
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 866
    :goto_1
    :pswitch_1
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_0

    .line 867
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {p1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onLauncherInfoChanged()V

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 869
    :cond_0
    goto/16 :goto_8

    .line 860
    :pswitch_2
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 861
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_3

    :cond_1
    move v3, v1

    :goto_3
    invoke-interface {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onRunningStateChanged(Z)V

    .line 860
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 864
    :cond_2
    goto/16 :goto_8

    .line 855
    :goto_4
    :pswitch_3
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 856
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {p1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onAllSizesComputed()V

    .line 855
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 858
    :cond_3
    goto/16 :goto_8

    .line 849
    :goto_5
    :pswitch_4
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 850
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onPackageSizeChanged(Ljava/lang/String;)V

    .line 849
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 853
    :cond_4
    goto :goto_8

    .line 844
    :goto_6
    :pswitch_5
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_5

    .line 845
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {p1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onPackageIconChanged()V

    .line 844
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 847
    :cond_5
    goto :goto_8

    .line 839
    :goto_7
    :pswitch_6
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 840
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {p1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onPackageListChanged()V

    .line 839
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 842
    :cond_6
    goto :goto_8

    .line 833
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 834
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 835
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onRebuildComplete(Ljava/util/ArrayList;)V

    .line 837
    :cond_7
    nop

    .line 876
    :cond_8
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
