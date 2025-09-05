.class Lcom/android/settings/DeviceAdminAdd$6;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceAdminAdd;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAdd;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$6;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 541
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    goto :goto_0

    .line 542
    :catch_0
    move-exception p1

    .line 544
    :goto_0
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAdd$6;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object p1, p1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object p2, p0, Lcom/android/settings/DeviceAdminAdd$6;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object p2, p2, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 545
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAdd$6;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {p1}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 546
    return-void
.end method
