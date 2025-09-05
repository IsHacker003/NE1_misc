.class public Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CredentialDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Lcom/android/settings/UserCredentialsSettings$Credential;)V
    .locals 2

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    const-string v1, "credential"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 112
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v1, "CredentialDialogFragment"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    .line 113
    new-instance p1, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;-><init>()V

    .line 114
    const/4 v1, -0x1

    invoke-virtual {p1, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "CredentialDialogFragment"

    invoke-virtual {p1, p0, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 164
    const/16 v0, 0x215

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "credential"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/settings/UserCredentialsSettings$Credential;

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 125
    const/4 v1, 0x0

    const v2, 0x7f0d01c1    # @layout/user_credential_dialog 'res/layout/user_credential_dialog.xml'

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 126
    const v2, 0x7f0a00e0    # @id/credential_container

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 127
    const v3, 0x7f0d01c0    # @layout/user_credential 'res/layout/user_credential.xml'

    const/4 v4, 0x1

    invoke-static {p1, v3, v1, v2, v4}, Lcom/android/settings/UserCredentialsSettings;->getCredentialView(Lcom/android/settings/UserCredentialsSettings$Credential;ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 129
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 133
    const v2, 0x7f120edf    # @string/user_credential_title 'Credential details'

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 134
    const v2, 0x7f12059a    # @string/done 'Done'

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 137
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "no_config_credentials"

    invoke-static {v2, v3, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    new-instance v2, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;-><init>(Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;ILcom/android/settings/UserCredentialsSettings$Credential;)V

    .line 153
    invoke-virtual {p1}, Lcom/android/settings/UserCredentialsSettings$Credential;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    const p1, 0x7f120e0a    # @string/trusted_credentials_remove_label 'Remove'

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
