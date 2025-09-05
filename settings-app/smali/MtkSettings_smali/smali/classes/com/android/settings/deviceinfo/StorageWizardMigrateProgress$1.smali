.class Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "StorageWizardMigrateProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(IIJ)V
    .locals 1

    .line 63
    iget-object p3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-static {p3}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->access$000(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)I

    move-result p3

    if-eq p3, p1, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    .line 66
    invoke-static {p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 67
    const-string p3, "StorageSettings"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finished with status "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/16 p3, -0x64

    if-ne p2, p3, :cond_2

    .line 69
    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    iget-object p2, p2, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz p2, :cond_3

    .line 72
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.android.systemui.action.FINISH_WIZARD"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    iget-object p3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {p3, p2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {p2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1

    .line 77
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    const-string p1, "android.os.storage.extra.DISK_ID"

    iget-object p3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    iget-object p3, p3, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {p1, p2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->startActivity(Landroid/content/Intent;)V

    .line 81
    :cond_1
    goto :goto_0

    .line 83
    :cond_2
    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    const p3, 0x7f12075d    # @string/insufficient_storage 'Not enough storage space.'

    invoke-virtual {p2, p3}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 86
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->finishAffinity()V

    goto :goto_1

    .line 89
    :cond_4
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {p1, p2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->setCurrentProgress(I)V

    .line 91
    :goto_1
    return-void
.end method
