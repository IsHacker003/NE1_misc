.class public Lcom/android/settings/deviceinfo/StorageWizardReady;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardReady.java"


# instance fields
.field private final mStorageMountListener:Landroid/os/storage/StorageEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    .line 70
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardReady$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardReady$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardReady;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mStorageMountListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->finish()V

    .line 39
    return-void

    .line 41
    :cond_0
    const p1, 0x7f0d015e    # @layout/storage_wizard_generic 'res/layout/storage_wizard_generic.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setContentView(I)V

    .line 43
    const p1, 0x7f120d87    # @string/storage_wizard_ready_title 'Your ^1 is ready to use'

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setHeaderText(I[Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "migrate_skip"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    const p1, 0x7f120d89    # @string/storage_wizard_ready_v2_internal_body 'To move content to ^1, go to <b>Settings > Storage</b>'

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    :cond_1
    const p1, 0x7f120d8a    # @string/storage_wizard_ready_v2_internal_moved_body 'Your content was moved to ^1. \n\nTo manage this ^2, go to <b>Settings > Storage</b>.'

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    .line 51
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    :cond_2
    const p1, 0x7f120d88    # @string/storage_wizard_ready_v2_external_body 'You can move content to ^1'

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/CharSequence;)V

    .line 59
    :goto_0
    const p1, 0x7f12059a    # @string/done 'Done'

    new-array v0, v3, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setNextButtonText(I[Ljava/lang/CharSequence;)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mStorageMountListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mStorageMountListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 87
    invoke-super {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onDestroy()V

    .line 88
    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->finishAffinity()V

    .line 67
    return-void
.end method
