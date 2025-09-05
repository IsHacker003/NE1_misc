.class public Lcom/android/settings/password/ConfirmDeviceCredentialActivity;
.super Landroid/app/Activity;
.source "ConfirmDeviceCredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    .line 45
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 47
    const-string p0, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 48
    return-object v0
.end method

.method private getTitleFromOrganizationName(I)Ljava/lang/String;
    .locals 2

    .line 118
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 120
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 122
    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_1
    return-object v1
.end method

.method private isInternalActivity()Z
    .locals 1

    .line 114
    instance-of v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 67
    const-string v0, "android.app.extra.TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    const-string v1, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string v2, "android.app.action.CONFIRM_FRP_CREDENTIAL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 73
    invoke-static {p0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v3

    .line 74
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    sget-object v4, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v5, "Invalid intent extra"

    invoke-static {v4, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :cond_0
    move p1, v3

    :goto_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v3

    .line 84
    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getTitleFromOrganizationName(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_1
    move-object v5, v0

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 88
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 93
    if-eqz v2, :cond_2

    .line 94
    const/4 p1, 0x0

    invoke-virtual {v0, p1, v5, v6, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchFrpConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_1

    .line 95
    :cond_2
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 99
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    move-object v2, v0

    move v10, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivityWithExternalAndChallenge(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJI)Z

    move-result p1

    goto :goto_1

    .line 103
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v0

    move v9, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)Z

    move-result p1

    .line 106
    :goto_1
    if-nez p1, :cond_4

    .line 107
    sget-object p1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v0, "No pattern, password or PIN set."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->setResult(I)V

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->finish()V

    .line 111
    return-void
.end method
