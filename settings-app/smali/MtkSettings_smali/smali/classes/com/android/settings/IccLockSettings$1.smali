.class Lcom/android/settings/IccLockSettings$1;
.super Landroid/os/Handler;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 152
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 153
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 163
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->access$200(Lcom/android/settings/IccLockSettings;)V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v2, p1, v0}, Lcom/android/settings/IccLockSettings;->access$100(Lcom/android/settings/IccLockSettings;Ljava/lang/Throwable;ILcom/android/internal/telephony/Phone;)V

    .line 161
    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v2, p1, v0}, Lcom/android/settings/IccLockSettings;->access$000(Lcom/android/settings/IccLockSettings;Ljava/lang/Throwable;ILcom/android/internal/telephony/Phone;)V

    .line 157
    nop

    .line 167
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
