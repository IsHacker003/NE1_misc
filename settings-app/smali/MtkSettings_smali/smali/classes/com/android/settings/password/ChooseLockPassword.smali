.class public Lcom/android/settings/password/ChooseLockPassword;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;,
        Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;,
        Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 157
    const-class v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 92
    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 152
    const-class v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 153
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 100
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 162
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "for_fingerprint"

    .line 164
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 165
    if-eqz p1, :cond_0

    .line 166
    const p1, 0x7f12083c    # @string/lockpassword_choose_your_password_header_for_fingerprint 'To use fingerprint, set password'

    goto :goto_0

    .line 167
    :cond_0
    const p1, 0x7f120842    # @string/lockpassword_choose_your_screen_lock_header 'Set screen lock'

    .line 165
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    const p1, 0x7f0a00d6    # @id/content_parent

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 170
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x1f000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarDividerColor(I)V

    .line 175
    return-void
.end method
