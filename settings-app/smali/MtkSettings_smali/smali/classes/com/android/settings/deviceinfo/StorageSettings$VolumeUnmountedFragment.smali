.class public Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeUnmountedFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 2

    .line 442
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 443
    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;-><init>()V

    .line 446
    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 447
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 448
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "volume_unmounted"

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 449
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 453
    const/16 v0, 0x232

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 459
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 464
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 465
    nop

    .line 466
    const v2, 0x7f120d1a    # @string/storage_dialog_unmounted 'This ^1 is safely ejected, but still available. \n\nTo use this ^1, you have to mount it first.'

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 465
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 468
    new-instance v2, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;-><init>(Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;Landroid/os/storage/VolumeInfo;Landroid/content/Context;)V

    const p1, 0x7f120d35    # @string/storage_menu_mount 'Mount'

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 509
    const p1, 0x7f120361    # @string/cancel 'Cancel'

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 511
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
