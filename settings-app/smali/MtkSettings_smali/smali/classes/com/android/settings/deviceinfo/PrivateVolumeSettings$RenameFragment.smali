.class public Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 717
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V
    .locals 3

    .line 719
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 721
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;-><init>()V

    .line 722
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 723
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 724
    const-string v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->setArguments(Landroid/os/Bundle;)V

    .line 726
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p1, "rename"

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 727
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 731
    const/16 v0, 0x233

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 736
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 737
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 739
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 740
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 741
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v2

    .line 743
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 744
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 746
    const/4 v4, 0x0

    const v5, 0x7f0d0084    # @layout/dialog_edittext 'res/layout/dialog_edittext.xml'

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 747
    const v5, 0x7f0a0128    # @id/edittext

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 748
    invoke-virtual {v2}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 750
    const v2, 0x7f120d41    # @string/storage_rename_title 'Rename storage'

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 751
    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 753
    new-instance p1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;

    invoke-direct {p1, p0, v0, v1, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/widget/EditText;)V

    const v0, 0x7f120b80    # @string/save 'Save'

    invoke-virtual {v3, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 762
    const p1, 0x7f120361    # @string/cancel 'Cancel'

    invoke-virtual {v3, p1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 764
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
