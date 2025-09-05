.class Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;
.super Landroid/os/storage/StorageEventListener;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->access$100(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 708
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->access$400(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->access$300(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->access$102(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 709
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->access$200(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    .line 711
    :cond_0
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 0

    .line 699
    iget-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {p2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->access$100(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 700
    iget-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {p2, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->access$102(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 701
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->access$200(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    .line 703
    :cond_0
    return-void
.end method
