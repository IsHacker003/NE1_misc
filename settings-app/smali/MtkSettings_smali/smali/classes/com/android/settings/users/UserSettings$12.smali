.class Lcom/android/settings/users/UserSettings$12;
.super Ljava/lang/Thread;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->addUserNow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;

.field final synthetic val$userType:I


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/UserSettings$12;->val$userType:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 733
    iget v0, p0, Lcom/android/settings/users/UserSettings$12;->val$userType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserSettings;->access$1700(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_0

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserSettings;->access$1800(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 738
    :goto_0
    if-nez v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->access$1902(Lcom/android/settings/users/UserSettings;Z)Z

    .line 740
    return-void

    .line 742
    :cond_1
    iget-object v2, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v2}, Lcom/android/settings/users/UserSettings;->access$1600(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 743
    :try_start_0
    iget v3, p0, Lcom/android/settings/users/UserSettings$12;->val$userType:I

    if-ne v3, v1, :cond_2

    .line 744
    iget-object v3, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v3}, Lcom/android/settings/users/UserSettings;->access$600(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 747
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$2000(Lcom/android/settings/users/UserSettings;)Lcom/android/settings/users/UserCapabilities;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-nez v1, :cond_3

    .line 748
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$600(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v3}, Lcom/android/settings/users/UserSettings;->access$600(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 752
    :cond_2
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$600(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v3}, Lcom/android/settings/users/UserSettings;->access$600(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 755
    :cond_3
    :goto_1
    monitor-exit v2

    .line 756
    return-void

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
