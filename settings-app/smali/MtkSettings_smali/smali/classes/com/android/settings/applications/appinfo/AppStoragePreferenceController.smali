.class public Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppStoragePreferenceController.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
        ">;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/events/OnPause;",
        "Lcom/android/settingslib/core/lifecycle/events/OnResume;"
    }
.end annotation


# instance fields
.field private mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected getDetailFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation

    .line 82
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    return-object v0
.end method

.method getStorageSummary(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;Z)Ljava/lang/CharSequence;
    .locals 7

    .line 88
    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f1203cf    # @string/computing_size 'Computing…'

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    .line 92
    const p2, 0x7f120d4b    # @string/storage_type_external 'External storage'

    goto :goto_0

    .line 93
    :cond_1
    const p2, 0x7f120d4c    # @string/storage_type_internal 'Internal storage'

    .line 91
    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 94
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120d48    # @string/storage_summary_format '%1$s used in %2$s'

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mContext:Landroid/content/Context;

    .line 95
    invoke-interface {p1}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getTotalBytes()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 96
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance p1, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 102
    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)V

    .line 101
    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ")V"
        }
    .end annotation

    .line 108
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    .line 109
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 110
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p2, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;)V"
        }
    .end annotation

    .line 114
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 73
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    if-nez v0, :cond_0

    .line 52
    const-string p1, "AppStoragePreferenceController"

    const-string v0, "updateState mParent  is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    if-nez v0, :cond_1

    .line 55
    const-string p1, "AppStoragePreferenceController"

    const-string v0, "updateState mParent.getAppEntry() is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_2

    .line 58
    const-string p1, "AppStoragePreferenceController"

    const-string v0, "updateState mParent.getAppEntry().info is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 60
    :cond_2
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_3

    goto :goto_1

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 66
    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->getStorageSummary(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    return-void

    .line 61
    :cond_5
    :goto_1
    const-string v0, "AppStoragePreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState preference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mContext "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method
