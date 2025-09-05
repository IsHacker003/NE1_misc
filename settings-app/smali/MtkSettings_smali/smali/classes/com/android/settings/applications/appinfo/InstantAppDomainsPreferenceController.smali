.class public Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "InstantAppDomainsPreferenceController.java"


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 36
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 40
    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 46
    check-cast p1, Lcom/android/settings/applications/AppDomainsPreference;

    .line 47
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 48
    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 49
    nop

    .line 50
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/AppDomainsPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 53
    array-length v0, v0

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/AppDomainsPreference;->setValues([I)V

    .line 54
    return-void
.end method
