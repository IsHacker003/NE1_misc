.class Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "AppActionButtonPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController$1;->getResultCode()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 80
    :goto_0
    const-string p2, "AppActionButtonControl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got broadcast response: Restart status for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    .line 81
    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    invoke-static {p2, p1}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;Z)V

    .line 83
    return-void
.end method
