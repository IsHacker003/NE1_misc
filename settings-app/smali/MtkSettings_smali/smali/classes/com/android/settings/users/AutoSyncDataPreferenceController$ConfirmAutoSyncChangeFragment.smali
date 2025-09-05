.class public Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AutoSyncDataPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AutoSyncDataPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAutoSyncChangeFragment"
.end annotation


# instance fields
.field mEnabling:Z

.field mIdentifier:I

.field mPreference:Landroid/support/v14/preference/SwitchPreference;

.field mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;ZLandroid/os/UserHandle;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 1

    .line 110
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;-><init>()V

    .line 113
    iput-boolean p1, v0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 114
    iput-object p2, v0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 115
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, v0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mIdentifier:I

    .line 116
    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 117
    iput-object p3, v0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 118
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p1, "confirmAutoSyncChange"

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 119
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 155
    const/16 v0, 0x217

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 160
    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 161
    iget-boolean p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    iget p2, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mIdentifier:I

    invoke-static {p1, p2}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 163
    iget-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean p2, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    invoke-virtual {p1, p2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 167
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 124
    if-eqz p1, :cond_0

    .line 125
    const-string v1, "enabling"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 126
    const-string v1, "userHandle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iput-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 127
    const-string v1, "identifier"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mIdentifier:I

    .line 130
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    iget-boolean v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    if-nez v0, :cond_1

    .line 132
    const v0, 0x7f12047d    # @string/data_usage_auto_sync_off_dialog_title 'Turn auto-sync data off?'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 133
    const v0, 0x7f12047c    # @string/data_usage_auto_sync_off_dialog 'This will conserve data and battery usage, but you’ll need to sync each account manually to collect  ...'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 135
    :cond_1
    const v0, 0x7f12047f    # @string/data_usage_auto_sync_on_dialog_title 'Turn auto-sync data on?'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 136
    const v0, 0x7f12047e    # @string/data_usage_auto_sync_on_dialog 'Any changes you make to your accounts on the web will be automatically copied to your phone.\n\nSome a ...'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 139
    :goto_0
    const v0, 0x104000a    # @android:string/ok

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    const/high16 v0, 0x1040000    # @android:string/cancel

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    const-string v0, "userHandle"

    iget-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    const-string v0, "identifier"

    iget v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mIdentifier:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    return-void
.end method
