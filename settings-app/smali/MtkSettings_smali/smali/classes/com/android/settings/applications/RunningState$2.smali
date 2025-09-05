.class Lcom/android/settings/applications/RunningState$2;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mNextUpdate:I

.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 255
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 259
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 266
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v0, p1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-boolean p1, p1, Lcom/android/settings/applications/RunningState;->mResumed:Z

    if-nez p1, :cond_0

    .line 268
    monitor-exit v0

    return-void

    .line 270
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/RunningState$2;->removeMessages(I)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/RunningState$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 273
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/applications/RunningState$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 275
    iget-object p1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    if-eqz p1, :cond_2

    .line 278
    iget-object p1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    iget v0, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    invoke-interface {p1, v0}, Lcom/android/settings/applications/RunningState$OnRefreshUiListener;->onRefreshUi(I)V

    .line 279
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    goto :goto_1

    .line 270
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 261
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    .line 262
    const/4 p1, 0x2

    goto :goto_0

    .line 263
    :cond_1
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    .line 264
    nop

    .line 283
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
