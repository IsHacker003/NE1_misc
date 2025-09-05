.class public Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SilentObserver;,
        Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;
    }
.end annotation


# instance fields
.field private mFormatPrivate:Z

.field private mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finish()V

    .line 53
    return-void

    .line 55
    :cond_0
    const p1, 0x7f0d0161    # @layout/storage_wizard_progress 'res/layout/storage_wizard_progress.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setContentView(I)V

    .line 56
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setKeepScreenOn(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "format_private"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    .line 60
    const v0, 0x7f120d5e    # @string/storage_wizard_format_progress_title 'Formatting ^1…'

    new-array v1, p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setHeaderText(I[Ljava/lang/CharSequence;)V

    .line 61
    const v0, 0x7f120d5d    # @string/storage_wizard_format_progress_body 'Don’t remove the ^1 while it’s being formatting.'

    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setBodyText(I[Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    .line 64
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    if-nez p1, :cond_1

    .line 65
    new-instance p1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    .line 66
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->setActivity(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->setActivity(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V

    .line 71
    :goto_0
    return-void
.end method

.method public onFormatFinished()V
    .locals 3

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    const-string v1, "format_slow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->startActivity(Landroid/content/Intent;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    .line 232
    return-void
.end method

.method public onFormatFinishedSlow()V
    .locals 3

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    const-string v1, "format_slow"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->startActivity(Landroid/content/Intent;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    .line 239
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    return-object v0
.end method
