.class public Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "HardwareInfoDialogFragment.java"


# instance fields
.field private mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;
    .locals 1

    .line 48
    new-instance v0, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;-><init>()V

    .line 49
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 44
    const/16 v0, 0x35e

    return v0
.end method

.method getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 103
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getDeviceInfoSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    .line 55
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    const v0, 0x7f1206b9    # @string/hardware_info 'Model & hardware'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 57
    const/4 v0, 0x0

    const v1, 0x104000a    # @android:string/ok

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 59
    const v2, 0x7f0d0086    # @layout/dialog_hardware_info 'res/layout/dialog_hardware_info.xml'

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    const-string v1, "ro.product.model.display"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f0a021a    # @id/model_value

    const v3, 0x7f0a0219    # @id/model_label

    if-nez v1, :cond_0

    .line 64
    const-string v1, "ro.product.model.display"

    .line 65
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->setText(Landroid/view/View;IILjava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    .line 69
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;->customeModelInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->setText(Landroid/view/View;IILjava/lang/String;)V

    .line 75
    :goto_0
    const v1, 0x7f0a02f1    # @id/serial_number_label

    const v2, 0x7f0a02f2    # @id/serial_number_value

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->setText(Landroid/view/View;IILjava/lang/String;)V

    .line 78
    const v1, 0x7f0a017d    # @id/hardware_rev_label

    const v2, 0x7f0a017e    # @id/hardware_rev_value

    const-string v3, "ro.boot.hardware.revision"

    .line 79
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->setText(Landroid/view/View;IILjava/lang/String;)V

    .line 81
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method setText(Landroid/view/View;IILjava/lang/String;)V
    .locals 0

    .line 86
    if-nez p1, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 90
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 91
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 92
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_1
    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :goto_0
    return-void
.end method
