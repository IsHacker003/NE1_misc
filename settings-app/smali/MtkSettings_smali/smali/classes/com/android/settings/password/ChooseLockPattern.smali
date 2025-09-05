.class public Lcom/android/settings/password/ChooseLockPattern;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;,
        Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;,
        Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
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

    .line 138
    const-class v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 85
    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 133
    const-class v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 134
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 93
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "for_fingerprint"

    .line 146
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 147
    if-eqz p1, :cond_0

    const p1, 0x7f12083e    # @string/lockpassword_choose_your_pattern_header_for_fingerprint 'To use fingerprint, set pattern'

    goto :goto_0

    .line 148
    :cond_0
    const p1, 0x7f120842    # @string/lockpassword_choose_your_screen_lock_header 'Set screen lock'

    .line 147
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern;->setTitle(I)V

    .line 149
    const p1, 0x7f0a00d6    # @id/content_parent

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 150
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x1f000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarDividerColor(I)V

    .line 155
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 161
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
