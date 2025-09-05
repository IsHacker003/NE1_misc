.class Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$StorageEventListener;
.super Landroid/os/storage/StorageEventListener;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;


# direct methods
.method private constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$StorageEventListener;->this$0:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$1;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$StorageEventListener;-><init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;)V

    return-void
.end method


# virtual methods
.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 0

    .line 91
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$StorageEventListener;->this$0:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->access$100(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 93
    :try_start_0
    const-string p2, "StorageSettings"

    const-string p3, "isMountedReadable"

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$StorageEventListener;->this$0:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-static {p2}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->access$100(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 95
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 97
    :cond_0
    :goto_0
    return-void
.end method
