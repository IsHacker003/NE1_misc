.class Lcom/android/settings/DeviceAdminAdd$4;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
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

    .line 336
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$4;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 338
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAdd$4;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object p1, p1, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 339
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 338
    const v0, 0x1605b

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 340
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAdd$4;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object p1, p1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$4;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    .line 341
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAdd$4;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {p1}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 342
    return-void
.end method
