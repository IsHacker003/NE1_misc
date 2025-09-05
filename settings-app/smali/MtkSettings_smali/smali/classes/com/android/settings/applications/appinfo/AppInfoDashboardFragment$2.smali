.class Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$2;
.super Ljava/lang/Object;
.source "AppInfoDashboardFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->createDialog(II)Landroid/app/AlertDialog;
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

    .line 497
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$2;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 500
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$2;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$200(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$2;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/util/Pair;

    const/16 v2, 0x36a

    invoke-virtual {p1, p2, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 502
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$2;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$2;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-static {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$100(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p2

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$300(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;ZZ)V

    .line 504
    return-void
.end method
