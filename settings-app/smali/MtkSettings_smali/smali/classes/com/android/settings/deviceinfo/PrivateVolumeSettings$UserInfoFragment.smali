.class public Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfoFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 837
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .line 839
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 841
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;-><init>()V

    .line 842
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 843
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 844
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 845
    const-string p1, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 846
    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 847
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p1, "userInfo"

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 848
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 852
    const/16 v0, 0x237

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 857
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 859
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 860
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 862
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 863
    nop

    .line 864
    const p1, 0x7f120d13    # @string/storage_detail_dialog_user '^1 may have saved photos, music, apps, or other data, using ^2 of storage. \n\nTo view details, switch ...'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 863
    invoke-static {p1, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 866
    const p1, 0x104000a    # @android:string/ok

    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 868
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
