.class public abstract Lcom/android/settings/deviceinfo/StorageWizardBase;
.super Landroid/app/Activity;
.source "StorageWizardBase.java"


# instance fields
.field private mBack:Landroid/widget/Button;

.field protected mDisk:Landroid/os/storage/DiskInfo;

.field private mNext:Landroid/widget/Button;

.field protected mStorage:Landroid/os/storage/StorageManager;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field protected mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 260
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardBase$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 196
    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    :cond_0
    return-void
.end method

.method private copyStringExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 190
    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method protected findFirstVolume(I)Landroid/os/storage/VolumeInfo;
    .locals 1

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findFirstVolume(II)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    return-object p1
.end method

.method protected findFirstVolume(II)Landroid/os/storage/VolumeInfo;
    .locals 4

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 224
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 225
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 226
    return-object v1

    .line 228
    :cond_0
    goto :goto_1

    .line 230
    :cond_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    .line 231
    const-string v0, "StorageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing mounted volume of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hosted by disk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    .line 232
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; trying again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 237
    goto :goto_0

    .line 235
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getDiskDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :cond_1
    const v0, 0x7f120e3d    # @string/unknown 'Unknown'

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getDiskShortDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :cond_1
    const v0, 0x7f120e3d    # @string/unknown 'Unknown'

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getGlifLayout()Lcom/android/setupwizardlib/GlifLayout;
    .locals 1

    .line 122
    const v0, 0x7f0a02fc    # @id/setup_wizard_layout

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/GlifLayout;

    return-object v0
.end method

.method protected getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 126
    const v0, 0x7f0a0342    # @id/storage_wizard_progress

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    const-string p1, "StorageSettings"

    const-string v0, "finish due to monkey user"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->finish()V

    .line 74
    return-void

    .line 78
    :cond_0
    const-class p1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.os.storage.extra.DISK_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    goto :goto_0

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz p1, :cond_3

    .line 89
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    .line 92
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz p1, :cond_4

    .line 93
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 95
    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 111
    return-void
.end method

.method public onNavigateBack(Landroid/view/View;)V
    .locals 0

    .line 182
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 0

    .line 186
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected setAuxChecklist()V
    .locals 5

    .line 148
    const v0, 0x7f0a033d    # @id/storage_wizard_aux

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 149
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 150
    const/4 v2, 0x0

    const v3, 0x7f0d015c    # @layout/storage_wizard_checklist 'res/layout/storage_wizard_checklist.xml'

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 154
    const v1, 0x7f0a0341    # @id/storage_wizard_migrate_v2_checklist_media

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 156
    const v1, 0x7f120d7b    # @string/storage_wizard_migrate_v2_checklist_media 'Don’t remove the ^1'

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v2

    .line 155
    invoke-static {v1, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method

.method protected varargs setBackButtonText(I[Ljava/lang/CharSequence;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mBack:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mBack:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 163
    return-void
.end method

.method protected varargs setBodyText(I[Ljava/lang/CharSequence;)V
    .locals 1

    .line 142
    const v0, 0x7f0a033e    # @id/storage_wizard_body

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 101
    const p1, 0x7f0a0335    # @id/storage_back_button

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mBack:Landroid/widget/Button;

    .line 102
    const p1, 0x7f0a033a    # @id/storage_next_button

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mNext:Landroid/widget/Button;

    .line 104
    const p1, 0x10804cd    # @android:drawable/ic_search

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setIcon(I)V

    .line 105
    return-void
.end method

.method protected setCurrentProgress(I)V
    .locals 6

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 131
    const v0, 0x7f0a0343    # @id/storage_wizard_progress_summary

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method protected varargs setHeaderText(I[Ljava/lang/CharSequence;)V
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getGlifLayout()Lcom/android/setupwizardlib/GlifLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method protected setIcon(I)V
    .locals 2

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getGlifLayout()Lcom/android/setupwizardlib/GlifLayout;

    move-result-object v0

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 173
    invoke-virtual {v0}, Lcom/android/setupwizardlib/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 174
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 175
    return-void
.end method

.method protected setKeepScreenOn(Z)V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getGlifLayout()Lcom/android/setupwizardlib/GlifLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/GlifLayout;->setKeepScreenOn(Z)V

    .line 179
    return-void
.end method

.method protected varargs setNextButtonText(I[Ljava/lang/CharSequence;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mNext:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mNext:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 204
    nop

    .line 206
    const-string v1, "android.os.storage.extra.DISK_ID"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyStringExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    .line 207
    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyStringExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    .line 208
    const-string v1, "format_forget_uuid"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyStringExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    .line 209
    const-string v1, "format_private"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    .line 210
    const-string v1, "format_slow"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    .line 211
    const-string v1, "migrate_skip"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    .line 213
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 214
    return-void
.end method
