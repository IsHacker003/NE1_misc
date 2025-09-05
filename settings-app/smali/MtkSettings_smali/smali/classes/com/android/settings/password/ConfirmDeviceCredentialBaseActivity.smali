.class public abstract Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.super Lcom/android/settings/SettingsActivity;
.source "ConfirmDeviceCredentialBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
    }
.end annotation


# instance fields
.field private mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

.field private mEnterAnimationPending:Z

.field private mFirstTimeVisible:Z

.field private mIsKeyguardLocked:Z

.field private mRestoring:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    return-void
.end method

.method private getFragment()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0201    # @id/main_content

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    if-eqz v1, :cond_0

    .line 136
    check-cast v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    return-object v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isInternalActivity()Z
    .locals 1

    .line 51
    instance-of v0, p0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getConfirmCredentialTheme()Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    return-object v0
.end method

.method public isLaunchableInTaskModePinned()Z
    .locals 1

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    nop

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->isInternalActivity()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result v0

    .line 57
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result v0

    .line 59
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    const v0, 0x7f1301d9    # @style/Theme.ConfirmDeviceCredentialsWork

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->setTheme(I)V

    .line 61
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->WORK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings.ConfirmCredentials.darkTheme"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const v0, 0x7f1301d8    # @style/Theme.ConfirmDeviceCredentialsDark

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->setTheme(I)V

    .line 65
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->setTheme(I)V

    .line 68
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->NORMAL:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    .line 70
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    sget-object v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->NORMAL:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v0, v2, :cond_2

    .line 75
    const v0, 0x7f0a00d6    # @id/content_parent

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 79
    if-nez p1, :cond_3

    .line 80
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    goto :goto_1

    .line 81
    :cond_3
    const-string v0, "STATE_IS_KEYGUARD_LOCKED"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 91
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 98
    :cond_5
    if-eqz p1, :cond_6

    move v1, v2

    nop

    :cond_6
    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x1f000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarDividerColor(I)V

    .line 105
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onEnterAnimationComplete()V

    .line 144
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->startEnterAnimation()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 148
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c    # @android:id/home

    if-ne v0, v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    .line 117
    const/4 p1, 0x1

    return p1

    .line 119
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 124
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    sget-object v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->prepareEnterAnimation()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 131
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 110
    const-string v0, "STATE_IS_KEYGUARD_LOCKED"

    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 157
    return-void
.end method

.method public startEnterAnimation()V
    .locals 1

    .line 160
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 161
    return-void
.end method
