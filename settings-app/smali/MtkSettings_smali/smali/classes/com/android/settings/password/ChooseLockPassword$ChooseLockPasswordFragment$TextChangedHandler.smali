.class Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;
.super Landroid/os/Handler;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    .line 981
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;)V
    .locals 0

    .line 981
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->notifyAfterTextChanged()V

    return-void
.end method

.method private notifyAfterTextChanged()V
    .locals 3

    .line 990
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->removeMessages(I)V

    .line 991
    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 992
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 997
    return-void

    .line 999
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1000
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 1002
    :cond_1
    return-void
.end method
