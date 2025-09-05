.class Lcom/mediatek/settings/sim/SmartCallFwdFragment$1;
.super Ljava/lang/Object;
.source "SmartCallFwdFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/sim/SmartCallFwdFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$1;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 529
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$1;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mService:Landroid/os/Messenger;

    .line 530
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$1;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mBound:Z

    .line 532
    const/4 p1, 0x0

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 533
    iget-object p2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$1;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {p2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$000(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/os/Messenger;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 535
    :try_start_0
    iget-object p2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$1;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    iget-object p2, p2, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mService:Landroid/os/Messenger;

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    goto :goto_0

    .line 536
    :catch_0
    move-exception p1

    .line 537
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 539
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 544
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$1;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mService:Landroid/os/Messenger;

    .line 545
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$1;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mBound:Z

    .line 546
    return-void
.end method
