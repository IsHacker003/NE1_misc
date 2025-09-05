.class public Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;
.super Lcom/android/settings/password/SaveChosenLockWorkerBase;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPattern:Ljava/lang/String;

.field private mLockVirgin:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 804
    invoke-direct {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 3

    .line 851
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 855
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    .line 856
    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 804
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 6

    .line 826
    nop

    .line 827
    iget v0, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    .line 828
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mCurrentPattern:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 830
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mHasChallenge:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 833
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-wide v4, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChallenge:J

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    goto :goto_0

    .line 834
    :catch_0
    move-exception v0

    .line 835
    nop

    .line 838
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_0

    .line 839
    const-string v1, "ChooseLockPattern"

    const-string v2, "critical: no token returned for known good pattern"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 843
    const-string v1, "hw_auth_token"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 846
    :cond_1
    return-object v2
.end method

.method public bridge synthetic setBlocking(Z)V
    .locals 0

    .line 804
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setBlocking(Z)V

    return-void
.end method

.method public bridge synthetic setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V
    .locals 0

    .line 804
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    return-void
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/util/List;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "ZZJ",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 813
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V

    .line 815
    iput-object p7, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mCurrentPattern:Ljava/lang/String;

    .line 816
    iput-object p6, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    .line 817
    iput p8, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    .line 819
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    .line 821
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->start()V

    .line 822
    return-void
.end method
