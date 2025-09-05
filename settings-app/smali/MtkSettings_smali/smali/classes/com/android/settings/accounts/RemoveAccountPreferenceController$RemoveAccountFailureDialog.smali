.class public Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "RemoveAccountPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/RemoveAccountPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveAccountFailureDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 2

    .line 194
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    new-instance v0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;

    invoke-direct {v0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;-><init>()V

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 199
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v1, "removeAccountFailed"

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 200
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 215
    const/16 v0, 0x24a

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 206
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 207
    const p1, 0x7f120b13    # @string/really_remove_account_title 'Remove account?'

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 208
    const v0, 0x7f120b1c    # @string/remove_account_failed 'This change isn't allowed by your admin'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 209
    const v0, 0x104000a    # @android:string/ok

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 206
    return-object p1
.end method
