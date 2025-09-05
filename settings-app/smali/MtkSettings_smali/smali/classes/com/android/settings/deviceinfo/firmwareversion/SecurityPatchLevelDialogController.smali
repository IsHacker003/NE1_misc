.class public Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;
.super Ljava/lang/Object;
.source "SecurityPatchLevelDialogController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final INTENT_URI_DATA:Landroid/net/Uri;

.field static final SECURITY_PATCH_LABEL_ID:I = 0x7f0a02e0

.field static final SECURITY_PATCH_VALUE_ID:I = 0x7f0a02e1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentPatch:Ljava/lang/String;

.field private final mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

.field private final mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "https://source.android.com/security/bulletin/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->INTENT_URI_DATA:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    .line 49
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mContext:Landroid/content/Context;

    .line 50
    new-instance p1, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 51
    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mCurrentPatch:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private registerListeners()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    const v1, 0x7f0a02e0    # @id/security_patch_level_label

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->registerClickListener(ILandroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    const v1, 0x7f0a02e1    # @id/security_patch_level_value

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->registerClickListener(ILandroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mCurrentPatch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f0a02e1    # @id/security_patch_level_value

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    const v2, 0x7f0a02e0    # @id/security_patch_level_label

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->removeSettingFromScreen(I)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->removeSettingFromScreen(I)V

    .line 76
    return-void

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->registerListeners()V

    .line 79
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mCurrentPatch:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 56
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 57
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    sget-object v0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->INTENT_URI_DATA:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 59
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string p1, "SecurityPatchCtrl"

    const-string v0, "Stop click action on 2131362529: queryIntentActivities() returns empty"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method
