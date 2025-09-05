.class public Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "PrivateVolumeForget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeForget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForgetConfirmFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 2

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    const-string v1, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance p1, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;-><init>()V

    .line 98
    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 100
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "forget_confirm"

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 101
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 90
    const/16 v0, 0x22f

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 106
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v2

    .line 111
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    nop

    .line 113
    const p1, 0x7f120d22    # @string/storage_internal_forget_confirm_title 'Forget ^1?'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 112
    invoke-static {p1, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 114
    nop

    .line 115
    const p1, 0x7f120d21    # @string/storage_internal_forget_confirm 'All the apps, photos, and data stored on this ^1 will be lost forever.'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    .line 114
    invoke-static {p1, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    new-instance p1, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;Landroid/os/storage/StorageManager;Ljava/lang/String;)V

    const v0, 0x7f120d2e    # @string/storage_menu_forget 'Forget'

    invoke-virtual {v3, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    const p1, 0x7f120361    # @string/cancel 'Cancel'

    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
