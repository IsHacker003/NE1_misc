.class public Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiskInitFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 515
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;ILjava/lang/String;)V
    .locals 2

    .line 522
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 523
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 524
    const-string p1, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;-><init>()V

    .line 527
    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 528
    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 529
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "disk_init"

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 530
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 518
    const/16 v0, 0x231

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 535
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 541
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 542
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 544
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;-><init>(Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x7f120d37    # @string/storage_menu_set_up 'Set up'

    invoke-virtual {v3, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 553
    const p1, 0x7f120361    # @string/cancel 'Cancel'

    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 555
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
