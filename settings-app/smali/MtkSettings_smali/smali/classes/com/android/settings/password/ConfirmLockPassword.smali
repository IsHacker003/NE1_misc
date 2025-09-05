.class public Lcom/android/settings/password/ConfirmLockPassword;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;,
        Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;
    }
.end annotation


# static fields
.field private static final DETAIL_TEXTS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/password/ConfirmLockPassword;->DETAIL_TEXTS:[I

    return-void

    :array_0
    .array-data 4
        0x7f120852    # @string/lockpassword_confirm_your_pin_generic 'Enter your device PIN to continue'
        0x7f120848    # @string/lockpassword_confirm_your_password_generic 'Enter your device password to continue'
        0x7f120853    # @string/lockpassword_confirm_your_pin_generic_profile 'Enter your work PIN to continue'
        0x7f120849    # @string/lockpassword_confirm_your_password_generic_profile 'Enter your work password to continue'
        0x7f12086d    # @string/lockpassword_strong_auth_required_device_pin 'For added security, enter your device PIN'
        0x7f12086b    # @string/lockpassword_strong_auth_required_device_password 'For added security, enter your device password'
        0x7f120870    # @string/lockpassword_strong_auth_required_work_pin 'For added security, enter your work PIN'
        0x7f12086e    # @string/lockpassword_strong_auth_required_work_password 'For added security, enter your work password'
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 54
    sget-object v0, Lcom/android/settings/password/ConfirmLockPassword;->DETAIL_TEXTS:[I

    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 74
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 80
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 81
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onWindowFocusChanged(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0201    # @id/main_content

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->onWindowFocusChanged(Z)V

    .line 91
    :cond_0
    return-void
.end method
