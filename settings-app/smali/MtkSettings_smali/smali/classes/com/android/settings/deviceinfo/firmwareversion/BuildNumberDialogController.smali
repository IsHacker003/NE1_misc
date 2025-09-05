.class public Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;
.super Ljava/lang/Object;
.source "BuildNumberDialogController.java"


# static fields
.field static final BUILD_NUMBER_VALUE_ID:I = 0x7f0a0089


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    .line 39
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {v1}, Lcust/settings/deviceinfo/CustPreferenceUtils;->getCustBuildNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 46
    const v2, 0x7f0a0089    # @id/build_number_value

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 51
    return-void
.end method
