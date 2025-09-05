.class public Lcom/android/settings/password/ChooseLockGeneric;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;,
        Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;
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

    .line 91
    const-class v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 74
    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 77
    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    const-string v1, ":settings:hide_drawer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    :cond_1
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 86
    const-class v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 87
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
