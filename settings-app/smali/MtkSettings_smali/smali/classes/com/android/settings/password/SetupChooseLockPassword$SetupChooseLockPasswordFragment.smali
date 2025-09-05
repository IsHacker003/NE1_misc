.class public Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
.super Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.source "SetupChooseLockPassword.java"

# interfaces
.implements Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SetupChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPasswordFragment"
.end annotation


# instance fields
.field private mOptionsButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 120
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->setEnabled(Landroid/content/Context;Z)V

    .line 121
    const/4 p1, 0x0

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02c8    # @id/screen_lock_options

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0317    # @id/skip_button

    if-eq v0, v1, :cond_0

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 106
    :cond_0
    nop

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":settings:frp_supported"

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 106
    invoke-static {p1}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(Z)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object p1

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroid/app/FragmentManager;)V

    .line 110
    goto :goto_0

    .line 102
    :cond_1
    iget p1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mUserId:I

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->newInstance(I)Lcom/android/settings/password/ChooseLockTypeDialogFragment;

    move-result-object p1

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 104
    nop

    .line 114
    :goto_0
    return-void
.end method

.method public onLockTypeSelected(Lcom/android/settings/password/ScreenLockType;)V
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    .line 128
    :goto_0
    if-ne p1, v0, :cond_1

    .line 129
    return-void

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->startChooseLockActivity(Lcom/android/settings/password/ScreenLockType;Landroid/app/Activity;)V

    .line 132
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 79
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 81
    new-instance v0, Lcom/android/settings/password/ChooseLockGenericController;

    iget v1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mUserId:I

    invoke-direct {v0, p2, v1}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;I)V

    .line 83
    const/4 v1, 0x0

    const/high16 v2, 0x10000

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/password/ChooseLockGenericController;->getVisibleScreenLockTypes(IZ)Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v2, "show_options_button"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 87
    if-nez v0, :cond_1

    .line 88
    const-string v2, "SetupChooseLockPassword"

    const-string v3, "Visible screen lock types is empty!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 92
    const p2, 0x7f0a02c8    # @id/screen_lock_options

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    .line 93
    iget-object p1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_2
    return-void
.end method

.method protected updateUi()V
    .locals 5

    .line 136
    invoke-super {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mSkipButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mForFingerprint:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    .line 141
    iget-object v1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v4, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    :cond_2
    return-void
.end method
