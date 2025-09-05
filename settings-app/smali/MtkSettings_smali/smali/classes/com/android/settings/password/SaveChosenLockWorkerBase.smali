.class abstract Lcom/android/settings/password/SaveChosenLockWorkerBase;
.super Landroid/app/Fragment;
.source "SaveChosenLockWorkerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;,
        Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;
    }
.end annotation


# instance fields
.field private mBlocking:Z

.field protected mChallenge:J

.field private mFinished:Z

.field protected mHasChallenge:Z

.field private mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

.field private mResultData:Landroid/content/Intent;

.field protected mUserId:I

.field protected mUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mWasSecureBefore:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 2

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mFinished:Z

    .line 100
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    .line 101
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    iget-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    iget-object v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    invoke-interface {p1, v0, v1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;->onChosenLockSaveFinished(ZLandroid/content/Intent;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setRetainInstance(Z)V

    .line 50
    return-void
.end method

.method protected prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 66
    iput p6, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    .line 68
    iput-boolean p3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mHasChallenge:Z

    .line 69
    iput-wide p4, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mChallenge:J

    .line 71
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 76
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iget p3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 80
    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mFinished:Z

    .line 81
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    .line 82
    return-void
.end method

.method protected abstract saveAndVerifyInBackground()Landroid/content/Intent;
.end method

.method public setBlocking(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mBlocking:Z

    .line 108
    return-void
.end method

.method public setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    if-ne v0, p1, :cond_0

    .line 54
    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    .line 58
    iget-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mFinished:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    iget-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    iget-object v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    invoke-interface {p1, v0, v1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;->onChosenLockSaveFinished(ZLandroid/content/Intent;)V

    .line 61
    :cond_1
    return-void
.end method

.method protected start()V
    .locals 2

    .line 85
    iget-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mBlocking:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->saveAndVerifyInBackground()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;-><init>(Lcom/android/settings/password/SaveChosenLockWorkerBase;Lcom/android/settings/password/SaveChosenLockWorkerBase$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    :goto_0
    return-void
.end method
