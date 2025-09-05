.class Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$3;
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

    .line 512
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$3;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 515
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$3;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$3;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-static {p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$100(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p2

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$400(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;)V

    .line 516
    return-void
.end method
