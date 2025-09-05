.class public Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "RemoveAccountPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/RemoveAccountPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmRemoveAccountDialog"
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Landroid/accounts/Account;Landroid/os/UserHandle;)Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;
    .locals 3

    .line 114
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const/4 p0, 0x0

    return-object p0

    .line 117
    :cond_0
    new-instance v0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    invoke-direct {v0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;-><init>()V

    .line 118
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 119
    const-string v2, "account"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 120
    const-string p1, "android.intent.extra.USER"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->setArguments(Landroid/os/Bundle;)V

    .line 122
    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 123
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p1, "confirmRemoveAccount"

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 124
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 148
    const/16 v0, 0x249

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 154
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mAccount:Landroid/accounts/Account;

    new-instance v3, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$1;-><init>(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)V

    iget-object v5, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mUserHandle:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 183
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 131
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mAccount:Landroid/accounts/Account;

    .line 132
    const-string v0, "android.intent.extra.USER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mUserHandle:Landroid/os/UserHandle;

    .line 133
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 138
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    const p1, 0x7f120b13    # @string/really_remove_account_title 'Remove account?'

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 140
    const v0, 0x7f120b12    # @string/really_remove_account_message 'Removing this account will delete all of its messages, contacts, and other data from the phone!'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 141
    const/high16 v0, 0x1040000    # @android:string/cancel

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 142
    const v0, 0x7f120b1d    # @string/remove_account_label 'Remove account'

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 138
    return-object p1
.end method
