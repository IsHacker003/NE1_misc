.class public Lcom/android/settings/password/SetupChooseLockGeneric;
.super Lcom/android/settings/password/ChooseLockGeneric;
.source "SetupChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric;-><init>()V

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
            "Landroid/support/v14/preference/PreferenceFragment;",
            ">;"
        }
    .end annotation

    .line 60
    const-class v0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 55
    const-class v0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 67
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const p1, 0x7f0a00d6    # @id/content_parent

    invoke-virtual {p0, p1}, Lcom/android/settings/password/SetupChooseLockGeneric;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 74
    return-void
.end method
