.class Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "AppInfoDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$4;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 834
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 835
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$4;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-static {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$600(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$4;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-static {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$100(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$4;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-static {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$100(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p2

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$4;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 836
    invoke-static {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$100(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p2

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 837
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$4;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$700(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 839
    :cond_1
    return-void
.end method
