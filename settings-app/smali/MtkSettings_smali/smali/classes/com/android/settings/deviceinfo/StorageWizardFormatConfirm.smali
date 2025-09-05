.class public Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "StorageWizardFormatConfirm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 97
    new-instance p4, Landroid/content/Intent;

    const-class p5, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-direct {p4, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string p5, "android.os.storage.extra.DISK_ID"

    invoke-virtual {p4, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string p1, "format_forget_uuid"

    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string p1, "format_private"

    invoke-virtual {p4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method private static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    const-string v1, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string p1, "format_forget_uuid"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string p1, "format_private"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    new-instance p1, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;-><init>()V

    .line 61
    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->setArguments(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "format_warning"

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static showPrivate(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public static showPublic(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 67
    const/16 v0, 0x55f

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    const-string v1, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v2, "format_forget_uuid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string v3, "format_private"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 79
    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 80
    invoke-virtual {v3, v1}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v3

    .line 82
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    nop

    .line 84
    const v6, 0x7f120d5c    # @string/storage_wizard_format_confirm_v2_title 'Format this ^1?'

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/CharSequence;

    .line 85
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 83
    invoke-static {v6, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 86
    nop

    .line 87
    const v6, 0x7f120d5b    # @string/storage_wizard_format_confirm_v2_body 'This ^1 needs to be formatted to store apps, files, and media. \n\nFormatting will erase existing cont ...'

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 89
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 90
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 86
    invoke-static {v6, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 92
    const/high16 v6, 0x1040000    # @android:string/cancel

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    nop

    .line 94
    const v6, 0x7f120d5a    # @string/storage_wizard_format_confirm_v2_action 'Format ^1'

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    .line 94
    invoke-static {v6, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/android/settings/deviceinfo/-$$Lambda$StorageWizardFormatConfirm$c4jIKjriuaEtVR7ERojcHILapk8;

    invoke-direct {v4, p1, v1, v2, v0}, Lcom/android/settings/deviceinfo/-$$Lambda$StorageWizardFormatConfirm$c4jIKjriuaEtVR7ERojcHILapk8;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    invoke-virtual {v5, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
