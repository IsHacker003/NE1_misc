.class public Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;
.super Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.source "SetupChooseLockPattern.java"

# interfaces
.implements Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SetupChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPatternFragment"
.end annotation


# instance fields
.field private mOptionsButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;Landroid/view/View;)V
    .locals 2

    .line 69
    iget p1, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mUserId:I

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->newInstance(I)Lcom/android/settings/password/ChooseLockTypeDialogFragment;

    move-result-object p1

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static synthetic lambda$onCreateView$1(Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;Landroid/view/View;)V
    .locals 2

    .line 77
    nop

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":settings:frp_supported"

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 77
    invoke-static {p1}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(Z)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object p1

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroid/app/FragmentManager;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 108
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->setEnabled(Landroid/content/Context;Z)V

    .line 109
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f05000f    # @bool/config_lock_pattern_minimal_ui 'true'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 67
    const p2, 0x7f0a02c8    # @id/screen_lock_options

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mOptionsButton:Landroid/widget/Button;

    .line 68
    iget-object p2, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mOptionsButton:Landroid/widget/Button;

    new-instance p3, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPattern$SetupChooseLockPatternFragment$oe1sL-LLbUw3chjlv8P3cpGYEWs;

    invoke-direct {p3, p0}, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPattern$SetupChooseLockPatternFragment$oe1sL-LLbUw3chjlv8P3cpGYEWs;-><init>(Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_0
    iget-boolean p2, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mForFingerprint:Z

    if-nez p2, :cond_1

    .line 74
    const p2, 0x7f0a0317    # @id/skip_button

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 75
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    new-instance p3, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPattern$SetupChooseLockPatternFragment$klleXh-HZ7yoRQxNNtN-WzAt_fY;

    invoke-direct {p3, p0}, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPattern$SetupChooseLockPatternFragment$klleXh-HZ7yoRQxNNtN-WzAt_fY;-><init>(Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_1
    return-object p1
.end method

.method public onLockTypeSelected(Lcom/android/settings/password/ScreenLockType;)V
    .locals 1

    .line 88
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    if-ne v0, p1, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->startChooseLockActivity(Lcom/android/settings/password/ScreenLockType;Landroid/app/Activity;)V

    .line 92
    return-void
.end method

.method protected updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000f    # @bool/config_lock_pattern_minimal_ui 'true'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mOptionsButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mOptionsButton:Landroid/widget/Button;

    .line 100
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 99
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    :cond_1
    return-void
.end method
