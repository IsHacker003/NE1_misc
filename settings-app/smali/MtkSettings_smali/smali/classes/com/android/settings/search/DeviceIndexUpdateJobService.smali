.class public Lcom/android/settings/search/DeviceIndexUpdateJobService;
.super Landroid/app/job/JobService;
.source "DeviceIndexUpdateJobService.java"


# instance fields
.field protected mRunningJob:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onStartJob$0(Lcom/android/settings/search/DeviceIndexUpdateJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->updateIndex(Landroid/app/job/JobParameters;)V

    return-void
.end method


# virtual methods
.method protected bindSliceSynchronous(Landroidx/slice/SliceViewManager;Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 9

    .line 162
    const/4 v0, 0x1

    new-array v7, v0, [Landroidx/slice/Slice;

    .line 163
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v8, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 164
    new-instance v0, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v7

    move-object v4, v8

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/search/DeviceIndexUpdateJobService$1;-><init>(Lcom/android/settings/search/DeviceIndexUpdateJobService;[Landroidx/slice/Slice;Ljava/util/concurrent/CountDownLatch;Landroidx/slice/SliceViewManager;Landroid/net/Uri;)V

    .line 181
    invoke-virtual {p1, p2, v0}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 183
    invoke-virtual {p1, p2}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/slice/SliceViewManager$SliceCallback;->onSliceUpdated(Landroidx/slice/Slice;)V

    .line 185
    :try_start_0
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 186
    :catch_0
    move-exception p1

    .line 188
    :goto_0
    const/4 p1, 0x0

    aget-object p1, v7, p1

    return-object p1
.end method

.method protected findTitle(Landroidx/slice/Slice;Landroidx/slice/SliceMetadata;)Ljava/lang/CharSequence;
    .locals 2

    .line 136
    new-instance p2, Landroidx/slice/widget/ListContent;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;)V

    .line 137
    invoke-virtual {p2}, Landroidx/slice/widget/ListContent;->getHeaderItem()Landroidx/slice/SliceItem;

    move-result-object p1

    .line 138
    if-nez p1, :cond_1

    .line 139
    invoke-virtual {p2}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p2}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceItem;

    goto :goto_0

    .line 142
    :cond_0
    return-object v0

    .line 146
    :cond_1
    :goto_0
    const-string p2, "text"

    const-string v1, "title"

    invoke-static {p1, p2, v1, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p2

    .line 147
    if-eqz p2, :cond_2

    .line 148
    invoke-virtual {p2}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 150
    :cond_2
    const-string p2, "text"

    const-string v1, "large"

    invoke-static {p1, p2, v1, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p2

    .line 151
    if-eqz p2, :cond_3

    .line 152
    invoke-virtual {p2}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 154
    :cond_3
    const-string p2, "text"

    invoke-static {p1, p2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    .line 155
    if-eqz p1, :cond_4

    .line 156
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 158
    :cond_4
    return-object v0
.end method

.method protected getMetadata(Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;
    .locals 0

    .line 132
    invoke-static {p0, p1}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object p1

    return-object p1
.end method

.method protected getSliceViewManager()Landroidx/slice/SliceViewManager;
    .locals 1

    .line 128
    invoke-static {p0}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    return-object v0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 57
    iget-boolean v0, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService;->mRunningJob:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 58
    iput-boolean v1, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService;->mRunningJob:Z

    .line 59
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/search/-$$Lambda$DeviceIndexUpdateJobService$CyjXGsZVpAu5iTckScg1Ee8_bGU;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/search/-$$Lambda$DeviceIndexUpdateJobService$CyjXGsZVpAu5iTckScg1Ee8_bGU;-><init>(Lcom/android/settings/search/DeviceIndexUpdateJobService;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63
    :cond_0
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 69
    iget-boolean p1, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService;->mRunningJob:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService;->mRunningJob:Z

    .line 71
    const/4 p1, 0x1

    return p1

    .line 73
    :cond_0
    return v0
.end method

.method protected updateIndex(Landroid/app/job/JobParameters;)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 81
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getDeviceIndexFeatureProvider()Lcom/android/settings/search/DeviceIndexFeatureProvider;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->getSliceViewManager()Landroidx/slice/SliceViewManager;

    move-result-object v7

    .line 84
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 85
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "com.android.settings.slices"

    .line 86
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 88
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    .line 89
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "android.settings.slices"

    .line 90
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 92
    invoke-virtual {v7, v1}, Landroidx/slice/SliceViewManager;->getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v1

    .line 93
    invoke-virtual {v7, v2}, Landroidx/slice/SliceViewManager;->getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 99
    invoke-interface {v0, p0}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->clearIndex(Landroid/content/Context;)V

    .line 101
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/net/Uri;

    .line 102
    iget-boolean v1, p0, Lcom/android/settings/search/DeviceIndexUpdateJobService;->mRunningJob:Z

    if-nez v1, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0, v7, v4}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->bindSliceSynchronous(Landroidx/slice/SliceViewManager;Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v1

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->getMetadata(Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v2

    .line 108
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->findTitle(Landroidx/slice/Slice;Landroidx/slice/SliceMetadata;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 109
    if-eqz v3, :cond_1

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.settings.action.VIEW_SLICE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v5, "slice"

    .line 116
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v5, 0x2

    .line 117
    invoke-virtual {v1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v1}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->createDeepLink(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 118
    invoke-virtual {v2}, Landroidx/slice/SliceMetadata;->getSliceKeywords()Ljava/util/List;

    move-result-object v6

    .line 113
    move-object v1, v0

    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->index(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V

    .line 120
    :cond_1
    goto :goto_0

    .line 124
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/search/DeviceIndexUpdateJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 125
    return-void
.end method
