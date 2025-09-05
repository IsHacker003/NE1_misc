.class public Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;
.super Ljava/lang/Object;
.source "BasebandVersionDialogController.java"


# static fields
.field static final BASEBAND_PROPERTY:Ljava/lang/String; = "gsm.version.baseband"

.field static final BASEBAND_VERSION_LABEL_ID:I = 0x7f0a0067

.field static final BASEBAND_VERSION_VALUE_ID:I = 0x7f0a0068


# instance fields
.field private final mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    .line 47
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 57
    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f0a0068    # @id/baseband_version_value

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    const v2, 0x7f0a0067    # @id/baseband_version_label

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->removeSettingFromScreen(I)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->removeSettingFromScreen(I)V

    .line 60
    return-void

    .line 65
    :cond_0
    :try_start_0
    const-string v0, "BasebandVersion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get BasebandVersion 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getBasebandVersionForPhone(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getBasebandVersionForPhone(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->setText(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v0, "BasebandVersion"

    const-string v1, "NameNotFoundException for BASEBAND_VERSION_VALUE_ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    return-void
.end method
