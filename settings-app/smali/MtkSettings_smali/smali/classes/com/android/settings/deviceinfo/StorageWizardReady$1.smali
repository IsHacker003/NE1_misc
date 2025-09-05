.class Lcom/android/settings/deviceinfo/StorageWizardReady$1;
.super Landroid/os/storage/StorageEventListener;
.source "StorageWizardReady.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageWizardReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardReady;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardReady;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardReady$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 2

    .line 73
    const-string p2, "StorageWizardReady"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVolumeStateChanged, disk : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardReady$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardReady;

    iget-object p2, p2, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardReady$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardReady;

    const p2, 0x7f120d88    # @string/storage_wizard_ready_v2_external_body 'You can move content to ^1'

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardReady$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardReady;

    iget-object v1, v1, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    .line 79
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    .line 78
    invoke-virtual {p1, p2, p3}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    return-void
.end method
