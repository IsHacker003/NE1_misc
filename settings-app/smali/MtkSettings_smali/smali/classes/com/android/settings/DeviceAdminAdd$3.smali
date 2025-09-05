.class Lcom/android/settings/DeviceAdminAdd$3;
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

    .line 326
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 328
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object p1, p1, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 329
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 328
    const v0, 0x1605a

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 330
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {p1}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 331
    return-void
.end method
