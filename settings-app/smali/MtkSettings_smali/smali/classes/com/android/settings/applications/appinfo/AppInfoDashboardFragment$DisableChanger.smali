.class Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;
.super Landroid/os/AsyncTask;
.source "AppInfoDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisableChanger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;",
            ">;"
        }
    .end annotation
.end field

.field final mInfo:Landroid/content/pm/ApplicationInfo;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mState:I


# direct methods
.method constructor <init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Landroid/content/pm/ApplicationInfo;I)V
    .locals 1

    .line 668
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 669
    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$500(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;->mPm:Landroid/content/pm/PackageManager;

    .line 670
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;->mActivity:Ljava/lang/ref/WeakReference;

    .line 671
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 672
    iput p3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;->mState:I

    .line 673
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 677
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;->mState:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 678
    const/4 p1, 0x0

    return-object p1
.end method
