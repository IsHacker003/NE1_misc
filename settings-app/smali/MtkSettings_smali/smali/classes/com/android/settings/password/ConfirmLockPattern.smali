.class public Lcom/android/settings/password/ConfirmLockPattern;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;,
        Lcom/android/settings/password/ConfirmLockPattern$Stage;,
        Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 69
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 75
    const-class v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 76
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
