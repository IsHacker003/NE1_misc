.class public Lcom/android/settings/deviceinfo/StorageWizardInit;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardInit.java"


# instance fields
.field private mExternal:Landroid/widget/Button;

.field private mInternal:Landroid/widget/Button;

.field private mIsPermittedToAdopt:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->finish()V

    .line 43
    return-void

    .line 45
    :cond_0
    const p1, 0x7f0d015f    # @layout/storage_wizard_init 'res/layout/storage_wizard_init.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardInit;->setContentView(I)V

    .line 47
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 48
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mIsPermittedToAdopt:Z

    .line 50
    const p1, 0x7f120d6c    # @string/storage_wizard_init_v2_title 'How will you use this ^1?'

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->setHeaderText(I[Ljava/lang/CharSequence;)V

    .line 52
    const p1, 0x7f0a033f    # @id/storage_wizard_init_external

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardInit;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mExternal:Landroid/widget/Button;

    .line 53
    const p1, 0x7f0a0340    # @id/storage_wizard_init_internal

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardInit;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mInternal:Landroid/widget/Button;

    .line 55
    const p1, 0x7f120d6a    # @string/storage_wizard_init_v2_later 'Set up later'

    new-array v0, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->setBackButtonText(I[Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result p1

    if-nez p1, :cond_2

    .line 59
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardInit;->onNavigateExternal(Landroid/view/View;)V

    goto :goto_1

    .line 60
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mIsPermittedToAdopt:Z

    if-nez p1, :cond_3

    .line 63
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mInternal:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 65
    :cond_3
    :goto_1
    return-void
.end method

.method public onNavigateBack(Landroid/view/View;)V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->finish()V

    .line 70
    return-void
.end method

.method public onNavigateExternal(Landroid/view/View;)V
    .locals 2

    .line 73
    if-eqz p1, :cond_0

    .line 75
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    const/16 v0, 0x57f

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 80
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    .line 82
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/storage/StorageManager;->setVolumeInited(Ljava/lang/String;Z)V

    .line 84
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    const-string v0, "android.os.storage.extra.DISK_ID"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardInit;->startActivity(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->finish()V

    .line 89
    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->showPublic(Landroid/app/Activity;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void
.end method

.method public onNavigateInternal(Landroid/view/View;)V
    .locals 2

    .line 96
    if-eqz p1, :cond_0

    .line 98
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    const/16 v0, 0x580

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->showPrivate(Landroid/app/Activity;Ljava/lang/String;)V

    .line 103
    return-void
.end method
