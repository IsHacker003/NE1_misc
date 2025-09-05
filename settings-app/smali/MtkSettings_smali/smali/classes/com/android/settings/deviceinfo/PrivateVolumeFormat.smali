.class public Lcom/android/settings/deviceinfo/PrivateVolumeFormat;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "PrivateVolumeFormat.java"


# instance fields
.field private final mConfirmListener:Landroid/view/View$OnClickListener;

.field private mDisk:Landroid/os/storage/DiskInfo;

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    .line 69
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeFormat;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mConfirmListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/PrivateVolumeFormat;)Landroid/os/storage/DiskInfo;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mDisk:Landroid/os/storage/DiskInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/PrivateVolumeFormat;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 47
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/storage/StorageManager;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p3, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 56
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mDisk:Landroid/os/storage/DiskInfo;

    .line 58
    const/4 p3, 0x0

    const v0, 0x7f0d0156    # @layout/storage_internal_format 'res/layout/storage_internal_format.xml'

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    const p2, 0x7f0a0072    # @id/body

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0a00cb    # @id/confirm

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    const v1, 0x7f120d24    # @string/storage_internal_format_details 'After formatting, you can use this ^1 in other devices. \n\nAll data on this ^1 will be erased. Consid ...'

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mDisk:Landroid/os/storage/DiskInfo;

    .line 63
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p3

    .line 62
    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mConfirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-object p1
.end method
