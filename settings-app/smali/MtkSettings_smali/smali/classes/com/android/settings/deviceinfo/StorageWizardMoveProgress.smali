.class public Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMoveProgress.java"


# instance fields
.field private final mCallback:Landroid/content/pm/PackageManager$MoveCallback;

.field private mMoveId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    .line 64
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;I)Ljava/lang/CharSequence;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->moveStatusToMessage(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private moveStatusToMessage(I)Ljava/lang/CharSequence;
    .locals 1

    .line 84
    const/4 v0, -0x8

    if-eq p1, v0, :cond_0

    const v0, 0x7f12075d    # @string/insufficient_storage 'Not enough storage space.'

    packed-switch p1, :pswitch_data_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 86
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 90
    :pswitch_1
    const p1, 0x7f120593    # @string/does_not_exist 'App doesn’t exist.'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 96
    :pswitch_2
    const p1, 0x7f120dcf    # @string/system_package 'System updates can’t be installed on external media.'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 92
    :pswitch_3
    const p1, 0x7f12011c    # @string/app_forward_locked 'App is copy-protected.'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 94
    :pswitch_4
    const p1, 0x7f120768    # @string/invalid_location 'Install location isn’t valid.'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 88
    :cond_0
    const p1, 0x7f12091f    # @string/move_error_device_admin 'Device admin app can't be installed on external media'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->finish()V

    .line 41
    return-void

    .line 43
    :cond_0
    const p1, 0x7f0d0161    # @layout/storage_wizard_progress 'res/layout/storage_wizard_progress.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.content.pm.extra.MOVE_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const v1, 0x7f080193    # @drawable/ic_swap_horiz 'res/drawable/ic_swap_horiz.xml'

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->setIcon(I)V

    .line 50
    const v1, 0x7f120d83    # @string/storage_wizard_move_progress_title 'Moving ^1…'

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->setHeaderText(I[Ljava/lang/CharSequence;)V

    .line 51
    const v1, 0x7f120d81    # @string/storage_wizard_move_progress_body 'Don’t remove the ^1 during the move. \n\nThe ^2 app on this device won’t be available until the move i ...'

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    aput-object p1, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->setBodyText(I[Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    .line 55
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v1

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/pm/PackageManager$MoveCallback;->onStatusChanged(IIJ)V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onDestroy()V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V

    .line 62
    return-void
.end method
