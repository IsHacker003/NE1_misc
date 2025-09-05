.class public Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardFormatSlow.java"


# instance fields
.field private mFormatPrivate:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 36
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->finish()V

    .line 38
    return-void

    .line 40
    :cond_0
    const p1, 0x7f0d015e    # @layout/storage_wizard_generic 'res/layout/storage_wizard_generic.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "format_private"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mFormatPrivate:Z

    .line 44
    const p1, 0x7f120d8f    # @string/storage_wizard_slow_v2_title 'Slow ^1'

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setHeaderText(I[Ljava/lang/CharSequence;)V

    .line 45
    const p1, 0x7f120d8c    # @string/storage_wizard_slow_v2_body 'You can still use this ^1, but it may be slow. \n\nApps stored on this ^2 may not work properly, and c ...'

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v0

    .line 45
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setBodyText(I[Ljava/lang/CharSequence;)V

    .line 49
    const p1, 0x7f120d8e    # @string/storage_wizard_slow_v2_start_over 'Start over'

    new-array v0, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setBackButtonText(I[Ljava/lang/CharSequence;)V

    .line 50
    const p1, 0x7f120d8d    # @string/storage_wizard_slow_v2_continue 'Continue'

    new-array v0, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setNextButtonText(I[Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "format_slow"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 54
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->onNavigateNext(Landroid/view/View;)V

    .line 56
    :cond_1
    return-void
.end method

.method public onNavigateBack(Landroid/view/View;)V
    .locals 2

    .line 60
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    const/16 v1, 0x583

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 63
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->startActivity(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->finishAffinity()V

    .line 66
    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 3

    .line 70
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 72
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    const/16 v1, 0x582

    new-array v2, v0, [Landroid/util/Pair;

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    const/16 v1, 0x581

    new-array v2, v0, [Landroid/util/Pair;

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "format_forget_uuid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->forgetVolume(Ljava/lang/String;)V

    .line 86
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mFormatPrivate:Z

    if-eqz p1, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object p1

    .line 90
    if-eqz p1, :cond_2

    const-string v1, "private"

    .line 91
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    nop

    .line 92
    :cond_2
    goto :goto_1

    .line 93
    :cond_3
    nop

    .line 96
    :goto_1
    if-eqz v0, :cond_4

    .line 97
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string v0, "android.os.storage.extra.DISK_ID"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->startActivity(Landroid/content/Intent;)V

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const-string v0, "android.os.storage.extra.DISK_ID"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->startActivity(Landroid/content/Intent;)V

    .line 105
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->finishAffinity()V

    .line 106
    return-void
.end method
