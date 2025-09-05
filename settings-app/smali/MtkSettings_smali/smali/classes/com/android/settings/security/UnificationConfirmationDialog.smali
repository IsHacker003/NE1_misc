.class public Lcom/android/settings/security/UnificationConfirmationDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "UnificationConfirmationDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$0(ZLcom/android/settings/security/SecuritySettings;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 64
    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/android/settings/security/SecuritySettings;->launchConfirmDeviceLockForUnification()V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/security/SecuritySettings;->unifyUncompliantLocks()V

    .line 69
    :goto_0
    return-void
.end method

.method public static newInstance(Z)Lcom/android/settings/security/UnificationConfirmationDialog;
    .locals 3

    .line 36
    new-instance v0, Lcom/android/settings/security/UnificationConfirmationDialog;

    invoke-direct {v0}, Lcom/android/settings/security/UnificationConfirmationDialog;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string v2, "compliant"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/settings/security/UnificationConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 83
    const/16 v0, 0x214

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/security/SecuritySettings;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "compliant"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 55
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    const v2, 0x7f12082d    # @string/lock_settings_profile_unification_dialog_title 'Use one lock?'

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 57
    if-eqz v0, :cond_0

    const v2, 0x7f12082b    # @string/lock_settings_profile_unification_dialog_body 'Your device will use your work profile screen lock. Work policies will apply to both locks.'

    goto :goto_0

    .line 58
    :cond_0
    const v2, 0x7f12082e    # @string/lock_settings_profile_unification_dialog_uncompliant_body 'Your work profile lock doesn't meet your organization's security requirements. You can use the same  ...'

    .line 57
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 60
    if-eqz v0, :cond_1

    const v2, 0x7f12082c    # @string/lock_settings_profile_unification_dialog_confirm 'Use one lock'

    goto :goto_1

    .line 62
    :cond_1
    const v2, 0x7f12082f    # @string/lock_settings_profile_unification_dialog_uncompliant_confirm 'Use one lock'

    :goto_1
    new-instance v3, Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$-wYUc2a9Y89ehsHG44vpFDdnSk8;

    invoke-direct {v3, v0, p1}, Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$-wYUc2a9Y89ehsHG44vpFDdnSk8;-><init>(ZLcom/android/settings/security/SecuritySettings;)V

    .line 59
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120361    # @string/cancel 'Cancel'

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 55
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {p1}, Lcom/android/settings/security/SecuritySettings;->updateUnificationPreference()V

    .line 79
    return-void
.end method

.method public show(Lcom/android/settings/security/SecuritySettings;)V
    .locals 1

    .line 44
    invoke-virtual {p1}, Lcom/android/settings/security/SecuritySettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 45
    const-string v0, "unification_dialog"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    const-string v0, "unification_dialog"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/security/UnificationConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method
