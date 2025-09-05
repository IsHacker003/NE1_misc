.class public Lcom/android/settings/deviceinfo/PrivateVolumeForget;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivateVolumeForget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;
    }
.end annotation


# instance fields
.field private final mConfirmListener:Landroid/view/View$OnClickListener;

.field private mRecord:Landroid/os/storage/VolumeRecord;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeForget;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mConfirmListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/PrivateVolumeForget;)Landroid/os/storage/VolumeRecord;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 48
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/storage/StorageManager;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 59
    return-object v1

    .line 61
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    .line 63
    iget-object p3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    if-nez p3, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 65
    return-object v1

    .line 68
    :cond_1
    const p3, 0x7f0d0155    # @layout/storage_internal_forget 'res/layout/storage_internal_forget.xml'

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 69
    const p2, 0x7f0a0072    # @id/body

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 70
    const p3, 0x7f0a00cb    # @id/confirm

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 72
    const v1, 0x7f120d23    # @string/storage_internal_forget_details 'To use the apps, photos, or data this ^1 contains, reinsert it. \n\nAlternatively, you can choose to f ...'

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    .line 73
    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 72
    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mConfirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-object p1
.end method
