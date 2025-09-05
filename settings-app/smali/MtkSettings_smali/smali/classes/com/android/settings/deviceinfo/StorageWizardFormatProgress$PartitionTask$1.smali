.class Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

.field final synthetic val$result:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .locals 2

    .line 124
    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x28

    mul-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x64

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->access$300(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;[Ljava/lang/Object;)V

    .line 125
    return-void
.end method
