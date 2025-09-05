.class public Lcom/android/settings/SetupEncryptionInterstitial;
.super Lcom/android/settings/EncryptionInterstitial;
.source "SetupEncryptionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/EncryptionInterstitial;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 35
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 37
    const-class p2, Lcom/android/settings/SetupEncryptionInterstitial;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 38
    const-string p0, "extra_prefs_show_button_bar"

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p2, ":settings:show_fragment_title_resid"

    .line 39
    const/4 p3, -0x1

    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    return-object p1
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/EncryptionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 46
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;

    .line 47
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 53
    const-class v0, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/EncryptionInterstitial;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const p1, 0x7f0a00d6    # @id/content_parent

    invoke-virtual {p0, p1}, Lcom/android/settings/SetupEncryptionInterstitial;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 61
    return-void
.end method
