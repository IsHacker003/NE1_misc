.class Lcom/android/settings/IccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 171
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 174
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive, action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->access$300(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p2}, Lcom/android/settings/IccLockSettings;->access$300(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x66

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 179
    :cond_0
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/IccLockSettings;->access$402(Lcom/android/settings/IccLockSettings;Z)Z

    .line 181
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->access$200(Lcom/android/settings/IccLockSettings;)V

    .line 182
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->access$500(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 183
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->access$400(Lcom/android/settings/IccLockSettings;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 184
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->access$500(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    .line 185
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 186
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->access$600(Lcom/android/settings/IccLockSettings;)V

    goto :goto_0

    .line 193
    :cond_2
    const-string v0, "com.mediatek.phone.ACTION_SIM_SLOT_LOCK_POLICY_INFORMATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 194
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p1, p2}, Lcom/android/settings/IccLockSettings;->access$700(Lcom/android/settings/IccLockSettings;Landroid/content/Intent;)V

    .line 197
    :cond_3
    :goto_0
    return-void
.end method
