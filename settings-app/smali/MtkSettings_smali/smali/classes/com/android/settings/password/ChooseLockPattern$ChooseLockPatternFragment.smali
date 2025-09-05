.class public Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;,
        Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;,
        Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    }
.end annotation


# instance fields
.field private final mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCurrentPattern:Ljava/lang/String;

.field private mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field protected mForFingerprint:Z

.field private mHasChallenge:Z

.field protected mHeaderText:Landroid/widget/TextView;

.field private mHideDrawer:Z

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field protected mMessageText:Landroid/widget/TextView;

.field private mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

.field private mTitleHeaderScrollView:Landroid/widget/ScrollView;

.field protected mTitleText:Landroid/widget/TextView;

.field private mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 164
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHideDrawer:Z

    .line 199
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/widget/LockPatternView$Cell;

    .line 201
    invoke-static {v0, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    aput-object v2, v1, v0

    .line 202
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    aput-object v0, v1, v2

    .line 203
    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v1, v3

    .line 204
    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 200
    invoke-static {v1}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    .line 238
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 417
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 419
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$2;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/ScrollView;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mTitleHeaderScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .line 764
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 765
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 766
    return-void
.end method

.method private startSaveAndFinish()V
    .locals 12

    .line 769
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 770
    const-string v0, "ChooseLockPattern"

    const-string v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return-void

    .line 774
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 776
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    invoke-direct {v0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    .line 777
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 779
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    const-string v2, "save_and_finish_worker"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 780
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 781
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_require_password"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 785
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHasChallenge:Z

    iget-wide v7, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    iget-object v9, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iget-object v10, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    iget v11, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-virtual/range {v3 .. v11}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/util/List;Ljava/lang/String;I)V

    .line 787
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 298
    const/16 v0, 0x1d

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 575
    iget v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public handleLeftButton()V
    .locals 3

    .line 579
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_0

    .line 580
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 581
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 582
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 587
    return-void

    .line 584
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleRightButton()V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_1

    .line 591
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 596
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_3

    .line 598
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_2

    .line 602
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->startSaveAndFinish()V

    goto :goto_0

    .line 599
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_3
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_5

    .line 604
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_4

    .line 608
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 609
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 610
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 605
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_5
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 210
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 211
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 217
    :cond_1
    const-string p1, "password"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    .line 221
    :goto_0
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 224
    :goto_1
    return-void
.end method

.method public onChosenLockSaveFinished(ZLandroid/content/Intent;)V
    .locals 2

    .line 791
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 793
    if-nez p1, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 795
    if-eqz p1, :cond_0

    .line 796
    const-string p2, ":settings:hide_drawer"

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHideDrawer:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 797
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    .line 800
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 801
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->handleLeftButton()V

    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->handleRightButton()V

    .line 620
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 436
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 437
    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/password/ChooseLockPattern;

    if-eqz p1, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    .line 445
    const-string v0, "for_cred_req_boot"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    new-instance v2, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    invoke-direct {v2}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;-><init>()V

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_require_password"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 450
    const-string v3, "password"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 452
    invoke-virtual {v2, v4}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setBlocking(Z)V

    .line 453
    invoke-virtual {v2, p0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 454
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 455
    invoke-static {v9}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    iget v10, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    .line 454
    move v4, v0

    invoke-virtual/range {v2 .. v10}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/util/List;Ljava/lang/String;I)V

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, ":settings:hide_drawer"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHideDrawer:Z

    .line 458
    const-string v0, "for_fingerprint"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFingerprint:Z

    .line 460
    return-void

    .line 439
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Fragment contained in wrong activity"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 465
    const p3, 0x7f0d004c    # @layout/choose_lock_pattern '@layout/choose_lock_pattern_common'

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/setupwizardlib/GlifLayout;

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f05000f    # @bool/config_lock_pattern_minimal_ui 'true'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 469
    const p2, 0x7f0a035f    # @id/suw_layout_icon

    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 470
    if-eqz p2, :cond_0

    .line 471
    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 473
    :cond_0
    goto :goto_0

    .line 474
    :cond_1
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFingerprint:Z

    if-eqz p2, :cond_2

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const p3, 0x7f080102    # @drawable/ic_fingerprint_header 'res/drawable/ic_fingerprint_header.xml'

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 478
    :cond_2
    :goto_0
    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 568
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    .line 569
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 572
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 557
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 558
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 560
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 561
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 562
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 564
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 637
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 639
    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 640
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 641
    const-string v0, "chosenPattern"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 642
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 641
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 646
    const-string v0, "currentPattern"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 484
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 485
    const v0, 0x7f0a0364    # @id/suw_layout_title

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mTitleText:Landroid/widget/TextView;

    .line 486
    const v0, 0x7f0a0183    # @id/headerText

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 487
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

    .line 488
    const v0, 0x7f0a020b    # @id/message

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mMessageText:Landroid/widget/TextView;

    .line 489
    const v0, 0x7f0a01f7    # @id/lockPattern

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 490
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 491
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 492
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    .line 491
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 493
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setFadePattern(Z)V

    .line 495
    const v0, 0x7f0a016b    # @id/footerText

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    .line 497
    const v0, 0x7f0a0169    # @id/footerLeftButton

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    .line 498
    const v0, 0x7f0a016a    # @id/footerRightButton

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    .line 500
    const v0, 0x7f0a02ce    # @id/scroll_layout_title_header

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mTitleHeaderScrollView:Landroid/widget/ScrollView;

    .line 503
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    nop

    .line 509
    const v0, 0x7f0a0394    # @id/topLayout

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 511
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "confirm_credentials"

    .line 514
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 515
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 516
    const-string v3, "password"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    .line 517
    const-string v3, "has_challenge"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHasChallenge:Z

    .line 519
    const-string v1, "challenge"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    .line 521
    if-nez p2, :cond_2

    .line 522
    if-eqz p1, :cond_1

    .line 525
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 526
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    const/16 p2, 0x37

    const v0, 0x7f120e5e    # @string/unlock_set_unlock_launch_picker_title 'Screen lock'

    .line 529
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    .line 527
    invoke-virtual {p1, p2, v0, v2, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    .line 531
    if-nez p1, :cond_0

    .line 532
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 534
    :cond_0
    goto :goto_0

    .line 535
    :cond_1
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 539
    :cond_2
    const-string p1, "chosenPattern"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 540
    if-eqz p1, :cond_3

    .line 541
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 544
    :cond_3
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    if-nez p1, :cond_4

    .line 545
    const-string p1, "currentPattern"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    .line 547
    :cond_4
    invoke-static {}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object p1

    const-string v0, "uiStage"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "save_and_finish_worker"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    .line 553
    :goto_0
    return-void
.end method

.method protected setRightButtonEnabled(Z)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 228
    return-void
.end method

.method protected setRightButtonText(I)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 232
    return-void
.end method

.method protected updateFooterLeftButton(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;Landroid/widget/TextView;)V
    .locals 2

    .line 752
    iget-object v0, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_0

    .line 753
    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 755
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 756
    iget-object v0, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 757
    iget-object p1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean p1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 759
    :goto_0
    return-void
.end method

.method protected updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 8

    .line 658
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 660
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 664
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 666
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x4

    .line 668
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 666
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 665
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 670
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v4, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 672
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFingerprint:Z

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->messageForFingerprint:I

    goto :goto_1

    :cond_1
    iget v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->message:I

    .line 673
    :goto_1
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 674
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mMessageText:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 676
    :cond_2
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    .line 678
    :goto_2
    iget v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    if-ne v1, v4, :cond_3

    .line 679
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 681
    :cond_3
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    iget v4, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 684
    :goto_3
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq p1, v1, :cond_6

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v1, :cond_4

    goto :goto_4

    .line 691
    :cond_4
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_5

    .line 692
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 695
    :cond_5
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v1, :cond_7

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFingerprint:Z

    if-eqz v1, :cond_7

    .line 696
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mTitleText:Landroid/widget/TextView;

    const v4, 0x7f120857    # @string/lockpassword_draw_your_pattern_again_header 'Draw your pattern again'

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 685
    :cond_6
    :goto_4
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 686
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 687
    const v5, 0x7f04006a    # @attr/colorError

    invoke-virtual {v4, v5, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 688
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 690
    nop

    .line 701
    :cond_7
    :goto_5
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateFooterLeftButton(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;Landroid/widget/TextView;)V

    .line 703
    iget-object v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v1, v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonText(I)V

    .line 704
    iget-object v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v1, v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 707
    iget-boolean v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v1, :cond_8

    .line 708
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_6

    .line 710
    :cond_8
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    .line 715
    :goto_6
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 716
    nop

    .line 718
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$1;->$SwitchMap$com$android$settings$password$ChooseLockPattern$ChooseLockPatternFragment$Stage:[I

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v4}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    goto :goto_7

    .line 736
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 737
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    .line 738
    nop

    .line 739
    goto :goto_8

    .line 733
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 734
    goto :goto_7

    .line 731
    :pswitch_2
    goto :goto_7

    .line 726
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 727
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    .line 728
    nop

    .line 729
    goto :goto_8

    .line 723
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 724
    goto :goto_7

    .line 720
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 721
    nop

    .line 746
    :goto_7
    move v3, v2

    :goto_8
    if-ne v0, p1, :cond_9

    if-eqz v3, :cond_a

    .line 747
    :cond_9
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 749
    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
