.class public Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;,
        Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# instance fields
.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field private mChosenPassword:Ljava/lang/String;

.field private mClearButton:Landroid/widget/Button;

.field private mCurrentPassword:Ljava/lang/String;

.field private mFirstPin:Ljava/lang/String;

.field protected mForFingerprint:Z

.field private mHasChallenge:Z

.field private mHideDrawer:Z

.field protected mIsAlphaMode:Z

.field private mLayout:Lcom/android/setupwizardlib/GlifLayout;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMessage:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPasswordHistoryHashFactor:[B

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLengthToFulfillAllPolicies:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPasswordRequirementAdapter:Lcom/android/settings/password/PasswordRequirementAdapter;

.field private mPasswordRequirements:[I

.field private mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

.field private mRequestedQuality:I

.field private mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

.field protected mSkipButton:Landroid/widget/Button;

.field private mTextChangedHandler:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

.field protected mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 334
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 191
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 192
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 194
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 195
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 196
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 197
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 198
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 199
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLengthToFulfillAllPolicies:I

    .line 201
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    .line 210
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 212
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 336
    return-void
.end method

.method private getMinLengthToFulfillAllPolicies()I
    .locals 4

    .line 872
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 874
    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 876
    add-int/2addr v0, v1

    return v0
.end method

.method private getPasswordHistoryHashFactor()[B
    .locals 3

    .line 746
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordHistoryHashFactor:[B

    if-nez v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHistoryHashFactor(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordHistoryHashFactor:[B

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordHistoryHashFactor:[B

    return-object v0
.end method

.method static synthetic lambda$setupPasswordRequirementsView$0(Ljava/lang/Integer;)I
    .locals 0

    .line 508
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private processPasswordRequirements(Landroid/content/Intent;)V
    .locals 4

    .line 588
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v0

    .line 589
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 591
    const-string v1, "lockscreen.password_min"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 593
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 591
    const/4 v2, 0x4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 594
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v2

    .line 591
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 595
    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 596
    const-string v1, "lockscreen.password_min_letters"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 597
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v2

    .line 596
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 599
    const-string v1, "lockscreen.password_min_uppercase"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 600
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v2

    .line 599
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 602
    const-string v1, "lockscreen.password_min_lowercase"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 603
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v2

    .line 602
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 605
    const-string v1, "lockscreen.password_min_numeric"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 606
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v2

    .line 605
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 608
    const-string v1, "lockscreen.password_min_symbols"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 609
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v2

    .line 608
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 611
    const-string v1, "lockscreen.password_min_nonletter"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 612
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v1

    .line 611
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 616
    const/high16 p1, 0x40000

    const/4 v1, 0x1

    if-eq v0, p1, :cond_3

    const/high16 p1, 0x50000

    if-eq v0, p1, :cond_1

    const/high16 p1, 0x60000

    if-eq v0, p1, :cond_0

    .line 634
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 635
    iput p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 636
    iput p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 637
    iput p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 638
    iput p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 639
    iput p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    goto :goto_0

    .line 632
    :cond_0
    goto :goto_0

    .line 623
    :cond_1
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-nez p1, :cond_2

    .line 624
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 626
    :cond_2
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-nez p1, :cond_4

    .line 627
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    goto :goto_0

    .line 618
    :cond_3
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-nez p1, :cond_4

    .line 619
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 641
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getMinLengthToFulfillAllPolicies()I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLengthToFulfillAllPolicies:I

    .line 642
    return-void
.end method

.method private setHeaderText(Ljava/lang/String;)V
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/GlifLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/GlifLayout;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/GlifLayout;

    .line 922
    invoke-virtual {v0}, Lcom/android/setupwizardlib/GlifLayout;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    return-void

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/GlifLayout;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 926
    return-void
.end method

.method private setupPasswordRequirementsView(Landroid/view/View;)V
    .locals 9

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 465
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 466
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    .line 467
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100021    # @plurals/lockpassword_password_requires_uppercase

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 470
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 468
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_0
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-lez v2, :cond_1

    .line 473
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f10001d    # @plurals/lockpassword_password_requires_lowercase

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 476
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 474
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_1
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-lez v2, :cond_2

    .line 479
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    add-int/2addr v5, v6

    if-le v2, v5, :cond_2

    .line 480
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f10001c    # @plurals/lockpassword_password_requires_letters

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 483
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 481
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_2
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-lez v2, :cond_3

    .line 487
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f10001f    # @plurals/lockpassword_password_requires_numeric

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 490
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 488
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_3
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-lez v2, :cond_4

    .line 493
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100020    # @plurals/lockpassword_password_requires_symbols

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 496
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 494
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_4
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-lez v2, :cond_5

    .line 499
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    add-int/2addr v5, v6

    if-le v2, v5, :cond_5

    .line 500
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f10001e    # @plurals/lockpassword_password_requires_nonletter

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 504
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    .line 501
    invoke-virtual {v2, v5, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/password/-$$Lambda$ChooseLockPassword$ChooseLockPasswordFragment$WFCgmpRIhPOiOzVHNaBhMh5zoJI;->INSTANCE:Lcom/android/settings/password/-$$Lambda$ChooseLockPassword$ChooseLockPasswordFragment$WFCgmpRIhPOiOzVHNaBhMh5zoJI;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirements:[I

    .line 509
    const v0, 0x7f0a025a    # @id/password_requirements_view

    .line 510
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    .line 511
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 512
    new-instance p1, Lcom/android/settings/password/PasswordRequirementAdapter;

    invoke-direct {p1}, Lcom/android/settings/password/PasswordRequirementAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirementAdapter:Lcom/android/settings/password/PasswordRequirementAdapter;

    .line 513
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirementAdapter:Lcom/android/settings/password/PasswordRequirementAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 514
    return-void
.end method

.method private startSaveAndFinish()V
    .locals 13

    .line 946
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 947
    const-string v0, "ChooseLockPassword"

    const-string v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return-void

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 952
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 954
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-direct {v0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    .line 955
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 957
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    const-string v2, "save_and_finish_worker"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 958
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 959
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 961
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_require_password"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 963
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    iget-wide v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    iget-object v9, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    iget v11, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    iget v12, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual/range {v3 .. v12}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;II)V

    .line 965
    return-void
.end method

.method private toVisibility(Z)I
    .locals 0

    .line 916
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    return p1
.end method

.method private validatePassword(Ljava/lang/String;)I
    .locals 7

    .line 651
    nop

    .line 652
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForPassword(Ljava/lang/String;)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    .line 655
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const/high16 v3, 0x30000

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    .line 656
    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLengthToFulfillAllPolicies:I

    if-le v1, v2, :cond_0

    .line 657
    const/4 v1, 0x2

    goto :goto_1

    .line 684
    :cond_0
    move v1, v4

    goto :goto_1

    .line 659
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v1, v2, :cond_2

    .line 660
    const/4 v1, 0x4

    goto :goto_1

    .line 663
    :cond_2
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v1

    .line 664
    if-ne v1, v3, :cond_3

    iget v1, v0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 665
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 671
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->maxLengthSequence(Ljava/lang/String;)I

    move-result v1

    .line 672
    const/4 v2, 0x3

    if-le v1, v2, :cond_3

    .line 673
    const/16 v1, 0x10

    goto :goto_0

    .line 677
    :cond_3
    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPasswordHistoryHashFactor()[B

    move-result-object v5

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v2, p1, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;[BI)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 679
    or-int/lit8 v1, v1, 0x20

    .line 684
    :cond_4
    :goto_1
    move v2, v4

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 685
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 686
    const/16 v6, 0x20

    if-lt v5, v6, :cond_6

    const/16 v6, 0x7f

    if-le v5, v6, :cond_5

    goto :goto_3

    .line 684
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 687
    :cond_6
    :goto_3
    or-int/lit8 v1, v1, 0x1

    .line 688
    nop

    .line 694
    :cond_7
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v2, 0x20000

    if-eq p1, v2, :cond_8

    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne p1, v3, :cond_a

    .line 696
    :cond_8
    iget p1, v0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-gtz p1, :cond_9

    iget p1, v0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-lez p1, :cond_a

    .line 697
    :cond_9
    or-int/lit8 v1, v1, 0x8

    .line 702
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirements:[I

    array-length p1, p1

    if-ge v4, p1, :cond_c

    .line 703
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirements:[I

    aget p1, p1, v4

    .line 704
    packed-switch p1, :pswitch_data_0

    goto :goto_6

    .line 731
    :pswitch_0
    iget p1, v0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge p1, v2, :cond_b

    .line 732
    or-int/lit16 p1, v1, 0x800

    goto :goto_5

    .line 726
    :pswitch_1
    iget p1, v0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge p1, v2, :cond_b

    .line 727
    or-int/lit16 p1, v1, 0x200

    goto :goto_5

    .line 721
    :pswitch_2
    iget p1, v0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge p1, v2, :cond_b

    .line 722
    or-int/lit16 p1, v1, 0x400

    goto :goto_5

    .line 716
    :pswitch_3
    iget p1, v0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge p1, v2, :cond_b

    .line 717
    or-int/lit16 p1, v1, 0x100

    goto :goto_5

    .line 711
    :pswitch_4
    iget p1, v0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge p1, v2, :cond_b

    .line 712
    or-int/lit16 p1, v1, 0x80

    goto :goto_5

    .line 706
    :pswitch_5
    iget p1, v0, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge p1, v2, :cond_b

    .line 707
    or-int/lit8 p1, v1, 0x40

    .line 702
    :goto_5
    move v1, p1

    :cond_b
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 738
    :cond_c
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 930
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne p1, v0, :cond_0

    .line 931
    sget-object p1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 934
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mTextChangedHandler:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->access$000(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;)V

    .line 935
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 939
    return-void
.end method

.method convertErrorCodeToMessages(I)[Ljava/lang/String;
    .locals 8

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 815
    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_0

    .line 816
    const v1, 0x7f120858    # @string/lockpassword_illegal_character 'This can't include an invalid character'

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    :cond_0
    and-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_1

    .line 819
    const v1, 0x7f120865    # @string/lockpassword_pin_contains_non_digits 'Must contain only digits 0-9'

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    :cond_1
    and-int/lit16 v1, p1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    .line 822
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f100021    # @plurals/lockpassword_password_requires_uppercase

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 824
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 822
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_2
    and-int/lit16 v1, p1, 0x100

    if-lez v1, :cond_3

    .line 827
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f10001d    # @plurals/lockpassword_password_requires_lowercase

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 829
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 827
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_3
    and-int/lit8 v1, p1, 0x40

    if-lez v1, :cond_4

    .line 832
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f10001c    # @plurals/lockpassword_password_requires_letters

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 834
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 832
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_4
    and-int/lit16 v1, p1, 0x200

    if-lez v1, :cond_5

    .line 837
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f10001f    # @plurals/lockpassword_password_requires_numeric

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 839
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 837
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    :cond_5
    and-int/lit16 v1, p1, 0x400

    if-lez v1, :cond_6

    .line 842
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f100020    # @plurals/lockpassword_password_requires_symbols

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 844
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 842
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    :cond_6
    and-int/lit16 v1, p1, 0x800

    if-lez v1, :cond_7

    .line 847
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f10001e    # @plurals/lockpassword_password_requires_nonletter

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 849
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 847
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    :cond_7
    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_9

    .line 852
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_8

    .line 853
    const v1, 0x7f120862    # @string/lockpassword_password_too_short 'Must be at least %d characters'

    goto :goto_0

    .line 854
    :cond_8
    const v1, 0x7f12086a    # @string/lockpassword_pin_too_short 'PIN must be at least %d digits'

    :goto_0
    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 852
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_9
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_b

    .line 857
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_a

    .line 858
    const v1, 0x7f120861    # @string/lockpassword_password_too_long 'Must be fewer than %d characters'

    goto :goto_1

    .line 859
    :cond_a
    const v1, 0x7f120869    # @string/lockpassword_pin_too_long 'Must be fewer than %d digits'

    :goto_1
    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    .line 857
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    :cond_b
    and-int/lit8 v1, p1, 0x10

    if-lez v1, :cond_c

    .line 862
    const v1, 0x7f120866    # @string/lockpassword_pin_no_sequential_digits 'Ascending, descending, or repeated sequence of digits isn't allowed'

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    :cond_c
    and-int/lit8 p1, p1, 0x20

    if-lez p1, :cond_e

    .line 865
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz p1, :cond_d

    const p1, 0x7f12085c    # @string/lockpassword_password_recently_used 'Device admin doesn't allow using a recent password'

    goto :goto_2

    .line 866
    :cond_d
    const p1, 0x7f120867    # @string/lockpassword_pin_recently_used 'Device admin doesn't allow using a recent PIN'

    .line 865
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    :cond_e
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 518
    const/16 v0, 0x1c

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 567
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public handleNext()V
    .locals 3

    .line 754
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    .line 756
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    return-void

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_2

    .line 760
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 761
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 762
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 763
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 765
    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_5

    .line 766
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 767
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->startSaveAndFinish()V

    goto :goto_0

    .line 769
    :cond_3
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 770
    if-eqz v0, :cond_4

    .line 771
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 773
    :cond_4
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 776
    :cond_5
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 552
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 553
    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 557
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 559
    :cond_1
    const-string p1, "password"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 564
    :goto_0
    return-void
.end method

.method public onChosenLockSaveFinished(ZLandroid/content/Intent;)V
    .locals 2

    .line 969
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 971
    if-nez p1, :cond_0

    .line 972
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 973
    if-eqz p1, :cond_0

    .line 974
    const-string p2, ":settings:hide_drawer"

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 975
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->startActivity(Landroid/content/Intent;)V

    .line 978
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 979
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 787
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00bc    # @id/clear_button

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0226    # @id/next_button

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 790
    goto :goto_0

    .line 793
    :cond_1
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 796
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 340
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 341
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/password/ChooseLockPassword;

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 348
    const-string v0, "for_fingerprint"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    .line 350
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->processPasswordRequirements(Landroid/content/Intent;)V

    .line 351
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, ":settings:hide_drawer"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    .line 354
    const-string v0, "for_cred_req_boot"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    new-instance v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-direct {v1}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;-><init>()V

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_require_password"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 359
    const-string v2, "password"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 361
    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setBlocking(Z)V

    .line 362
    invoke-virtual {v1, p0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 363
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget v9, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    iget v10, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    move v3, v0

    move-object v7, v8

    invoke-virtual/range {v1 .. v10}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;II)V

    .line 366
    :cond_0
    new-instance p1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    invoke-direct {p1, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mTextChangedHandler:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    .line 367
    return-void

    .line 344
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Fragment contained in wrong activity"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 372
    const p3, 0x7f0d004a    # @layout/choose_lock_password 'res/layout/choose_lock_password.xml'

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 800
    if-eqz p2, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 806
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 803
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 804
    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 538
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    .line 539
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 523
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 524
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 525
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    goto :goto_0

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->requestFocus()Z

    .line 529
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    .line 531
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 543
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 544
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v0, "current_password"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 943
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 377
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 379
    move-object v0, p1

    check-cast v0, Lcom/android/setupwizardlib/GlifLayout;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/GlifLayout;

    .line 383
    const v0, 0x7f0a0256    # @id/password_container

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 384
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOpticalInsets(Landroid/graphics/Insets;)V

    .line 386
    const v0, 0x7f0a0317    # @id/skip_button

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSkipButton:Landroid/widget/Button;

    .line 387
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    const v0, 0x7f0a0226    # @id/next_button

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 389
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    const v0, 0x7f0a00bc    # @id/clear_button

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mClearButton:Landroid/widget/Button;

    .line 391
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    const v0, 0x7f0a020b    # @id/message

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMessage:Landroid/widget/TextView;

    .line 395
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/GlifLayout;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080102    # @drawable/ic_fingerprint_header 'res/drawable/ic_fingerprint_header.xml'

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 399
    :cond_0
    const/high16 v0, 0x40000

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/high16 v0, 0x50000

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v0, v1, :cond_2

    const/high16 v0, 0x60000

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 403
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setupPasswordRequirementsView(Landroid/view/View;)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 406
    const v0, 0x7f0a0257    # @id/password_entry

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ImeAwareEditText;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    .line 407
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 408
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/ImeAwareEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 409
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {p1}, Lcom/android/settings/widget/ImeAwareEditText;->requestFocus()Z

    .line 410
    new-instance p1, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 414
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->getInputType()I

    move-result v0

    .line 415
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    iget-boolean v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_3

    goto :goto_2

    .line 416
    :cond_3
    const/16 v0, 0x12

    .line 415
    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ImeAwareEditText;->setInputType(I)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x1040145    # @android:string/config_helpPackageNameKey

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 423
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 425
    const-string v4, "password"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 426
    const-string v4, "has_challenge"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    .line 428
    const-string v3, "challenge"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    .line 429
    if-nez p2, :cond_4

    .line 430
    sget-object p2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, p2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 431
    if-eqz v1, :cond_7

    .line 432
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    const/16 v0, 0x3a

    const v1, 0x7f120e5e    # @string/unlock_set_unlock_launch_picker_title 'Screen lock'

    .line 433
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 432
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    goto :goto_3

    .line 438
    :cond_4
    const-string v0, "first_pin"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 439
    const-string v0, "ui_stage"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_5

    .line 441
    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 442
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 445
    :cond_5
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 446
    const-string v0, "current_password"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 450
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string v0, "save_and_finish_worker"

    invoke-virtual {p2, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    iput-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    .line 454
    :cond_7
    :goto_3
    instance-of p2, p1, Lcom/android/settings/SettingsActivity;

    if-eqz p2, :cond_8

    .line 455
    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 456
    sget-object p2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    invoke-virtual {p2, v0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->getHint(ZZ)I

    move-result p2

    .line 457
    invoke-virtual {p1, p2}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 458
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/GlifLayout;

    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(I)V

    .line 460
    :cond_8
    return-void
.end method

.method protected setNextEnabled(Z)V
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 780
    return-void
.end method

.method protected setNextText(I)V
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 784
    return-void
.end method

.method protected updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 572
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 573
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 577
    if-eq v0, p1, :cond_0

    .line 578
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/GlifLayout;

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/GlifLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/GlifLayout;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/setupwizardlib/GlifLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 580
    :cond_0
    return-void
.end method

.method protected updateUi()V
    .locals 7

    .line 883
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 884
    move v0, v1

    goto :goto_0

    .line 883
    :cond_0
    nop

    .line 884
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v3}, Lcom/android/settings/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 885
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 886
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v6, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v5, v6, :cond_2

    .line 887
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 888
    invoke-direct {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)I

    move-result v3

    .line 889
    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->convertErrorCodeToMessages(I)[Ljava/lang/String;

    move-result-object v4

    .line 891
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirementAdapter:Lcom/android/settings/password/PasswordRequirementAdapter;

    invoke-virtual {v5, v4}, Lcom/android/settings/password/PasswordRequirementAdapter;->setRequirements([Ljava/lang/String;)V

    .line 893
    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 894
    goto :goto_4

    .line 896
    :cond_2
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 897
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    invoke-virtual {v3, v5, v6}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->getHint(ZZ)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setHeaderText(Ljava/lang/String;)V

    .line 898
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-lt v4, v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 899
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mClearButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    if-lez v4, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 901
    :goto_4
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget-boolean v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->getMessage(ZZ)I

    move-result v3

    .line 902
    if-eqz v3, :cond_5

    .line 903
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 904
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 906
    :cond_5
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMessage:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 909
    :goto_5
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mClearButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v5, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v4, v5, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    invoke-direct {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->toVisibility(Z)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 911
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v1, v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextText(I)V

    .line 912
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 913
    return-void
.end method
