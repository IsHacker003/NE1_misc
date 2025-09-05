.class Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v1, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$700(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    .line 562
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 553
    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 554
    iget-object p2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object p2, p2, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 556
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 554
    const p1, 0x7f12088e    # @string/lockpattern_too_many_failed_confirmation_attempts 'Too many incorrect attempts. Try again in %d seconds.'

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    return-void
.end method
