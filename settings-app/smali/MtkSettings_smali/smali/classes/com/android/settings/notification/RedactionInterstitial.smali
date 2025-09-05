.class public Lcom/android/settings/notification/RedactionInterstitial;
.super Lcom/android/settings/SettingsActivity;
.source "RedactionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/notification/RedactionInterstitial;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, ":settings:show_fragment_title_resid"

    .line 92
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 93
    const p0, 0x7f12081e    # @string/lock_screen_notifications_interstitial_title_profile 'Profile notifications'

    goto :goto_0

    .line 94
    :cond_0
    const p0, 0x7f12081d    # @string/lock_screen_notifications_interstitial_title 'Notifications'

    .line 91
    :goto_0
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extra.USER_ID"

    .line 95
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 90
    return-object p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 58
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 70
    const-class v0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 66
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const p1, 0x7f0a00d6    # @id/content_parent

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/RedactionInterstitial;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x1f000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarDividerColor(I)V

    .line 82
    return-void
.end method
