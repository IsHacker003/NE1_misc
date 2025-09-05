.class public Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMoveConfirm.java"


# instance fields
.field private mApp:Landroid/content/pm/ApplicationInfo;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 108
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 109
    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 112
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->onNavigateNext(Landroid/view/View;)V

    goto :goto_0

    .line 117
    :cond_0
    const-string p1, "StorageSettings"

    const-string p2, "Failed to confirm credentials"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 122
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finish()V

    .line 52
    return-void

    .line 54
    :cond_0
    const p1, 0x7f0d015e    # @layout/storage_wizard_generic 'res/layout/storage_wizard_generic.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setContentView(I)V

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    nop

    .line 65
    nop

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 65
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 71
    const v2, 0x7f080193    # @drawable/ic_swap_horiz 'res/drawable/ic_swap_horiz.xml'

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setIcon(I)V

    .line 72
    const v2, 0x7f120d80    # @string/storage_wizard_move_confirm_title 'Move ^1'

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/CharSequence;

    aput-object p1, v4, v1

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setHeaderText(I[Ljava/lang/CharSequence;)V

    .line 73
    const v2, 0x7f120d7f    # @string/storage_wizard_move_confirm_body 'Moving ^1 and its data to ^2 will take only a few moments. You won’t be able to use the app until th ...'

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object p1, v4, v1

    aput-object v0, v4, v3

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setBodyText(I[Ljava/lang/CharSequence;)V

    .line 75
    const p1, 0x7f12091a    # @string/move_app 'Move'

    new-array v0, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setNextButtonText(I[Ljava/lang/CharSequence;)V

    .line 76
    return-void

    .line 59
    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finish()V

    .line 61
    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 10

    .line 81
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 83
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const-string p1, "StorageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is currently locked; requesting unlock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const p1, 0x7f120d84    # @string/storage_wizard_move_unlock 'To move data you need to unlock user ^1.'

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 85
    invoke-static {p1, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 87
    new-instance v4, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v4, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v9, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivityForAnyUser(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Z

    .line 89
    return-void

    .line 91
    :cond_0
    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I

    move-result v0

    .line 98
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const-string v2, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string p1, "android.os.storage.extra.VOLUME_ID"

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finishAffinity()V

    .line 104
    return-void
.end method
