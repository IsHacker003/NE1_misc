.class public Lcom/android/settings/password/SetupChooseLockPassword;
.super Lcom/android/settings/password/ChooseLockPassword;
.source "SetupChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;-><init>()V

    return-void
.end method

.method public static modifyIntentForSetup(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 49
    const-class v0, Lcom/android/settings/password/SetupChooseLockPassword;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 50
    const-string p0, "extra_prefs_show_button_bar"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    return-object p1
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

    .line 61
    const-class v0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 56
    const-class v0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPassword;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const p1, 0x7f0a00d6    # @id/content_parent

    invoke-virtual {p0, p1}, Lcom/android/settings/password/SetupChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 69
    return-void
.end method
