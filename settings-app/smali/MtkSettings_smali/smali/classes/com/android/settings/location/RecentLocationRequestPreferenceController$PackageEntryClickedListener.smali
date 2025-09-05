.class Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;
.super Ljava/lang/Object;
.source "RecentLocationRequestPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/RecentLocationRequestPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageEntryClickedListener"
.end annotation


# instance fields
.field private final mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private final mPackage:Ljava/lang/String;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 52
    iput-object p2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    .line 54
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 59
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 63
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 65
    const v0, 0x7f120151    # @string/application_info_label 'App info'

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    .line 66
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 67
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 69
    const/4 p1, 0x1

    return p1
.end method
