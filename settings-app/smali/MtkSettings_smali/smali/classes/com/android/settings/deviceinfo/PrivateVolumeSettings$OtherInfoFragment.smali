.class public Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OtherInfoFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 792
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/storage/VolumeInfo;I)V
    .locals 3

    .line 794
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 796
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;-><init>()V

    .line 797
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 798
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 799
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object p1

    .line 802
    const-string p2, "android.intent.extra.USER_ID"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 803
    const-string p2, "android.intent.extra.INTENT"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 804
    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 805
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p1, "otherInfo"

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 806
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 810
    const/16 v0, 0x236

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 815
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 817
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 820
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 821
    nop

    .line 822
    const p1, 0x7f120d11    # @string/storage_detail_dialog_other 'Other includes shared files saved by apps, files downloaded from the internet or Bluetooth, Android  ...'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p1, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 821
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 824
    new-instance p1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;

    invoke-direct {p1, p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;Landroid/content/Intent;)V

    const v0, 0x7f120d2d    # @string/storage_menu_explore 'Explore'

    invoke-virtual {v2, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 831
    const/high16 p1, 0x1040000    # @android:string/cancel

    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 833
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
