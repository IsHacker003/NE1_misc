.class final Lcom/android/settings/applications/RunningState$BackgroundHandler;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    .line 226
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 227
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 231
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 236
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    if-nez v0, :cond_0

    .line 238
    monitor-exit p1

    return-void

    .line 240
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-object p1, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 242
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/RunningState;->access$100(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 243
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 246
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 233
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-static {p1}, Lcom/android/settings/applications/RunningState;->access$000(Lcom/android/settings/applications/RunningState;)V

    .line 234
    nop

    .line 249
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
