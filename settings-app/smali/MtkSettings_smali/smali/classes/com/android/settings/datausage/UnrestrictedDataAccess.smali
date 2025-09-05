.class public Lcom/android/settings/datausage/UnrestrictedDataAccess;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;
    }
.end annotation


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

.field private mExtraLoaded:Z

.field private mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mShowSystem:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settings/datausage/DataSaverBackend;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object p0
.end method

.method private rebuild()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->onRebuildComplete(Ljava/util/ArrayList;)V

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 141
    const v0, 0x7f120719    # @string/help_url_unrestricted_data_access ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 216
    const/16 v0, 0x15d

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 221
    const v0, 0x7f1500ae    # @xml/unrestricted_data_access_settings 'res/xml/unrestricted_data_access_settings.xml'

    return v0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 243
    if-eqz p1, :cond_0

    const/16 p1, 0x30d

    goto :goto_0

    .line 244
    :cond_0
    const/16 p1, 0x30e

    .line 245
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 247
    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    .line 202
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setAnimationAllowed(Z)V

    .line 69
    nop

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 69
    invoke-static {v1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 71
    new-instance v1, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 72
    new-instance v1, Lcom/android/settings/datausage/AppStateDataUsageBridge;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v1, v2, p0, v3}, Lcom/android/settings/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    .line 73
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 74
    if-eqz p1, :cond_0

    const-string v1, "show_system"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    .line 75
    iget-boolean p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_1

    .line 76
    :cond_1
    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :goto_1
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setHasOptionsMenu(Z)V

    .line 78
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 82
    nop

    .line 83
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1208ee    # @string/menu_hide_system 'Hide system'

    goto :goto_0

    :cond_0
    const v0, 0x7f1208f8    # @string/menu_show_system 'Show system'

    .line 82
    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x2b

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 84
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 130
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->release()V

    .line 131
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mExtraLoaded:Z

    .line 136
    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->rebuild()V

    .line 137
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 207
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 212
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 91
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    .line 92
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1208ee    # @string/menu_hide_system 'Hide system'

    goto :goto_0

    :cond_1
    const v0, 0x7f1208f8    # @string/menu_show_system 'Show system'

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 93
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_1

    .line 94
    :cond_2
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :goto_1
    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 95
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mExtraLoaded:Z

    if-eqz v0, :cond_3

    .line 96
    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->rebuild()V

    .line 100
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 192
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 159
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    .line 197
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->pause()V

    .line 125
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 226
    instance-of v0, p1, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 227
    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    .line 228
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    .line 229
    move v1, v2

    goto :goto_0

    .line 228
    :cond_0
    nop

    .line 229
    :goto_0
    invoke-static {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->access$000(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p2

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 230
    iget-object p2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->access$000(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 231
    invoke-static {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->access$000(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 230
    invoke-virtual {p2, v0, v3, v1}, Lcom/android/settings/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    .line 233
    invoke-static {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->access$100(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 234
    invoke-static {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->access$100(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    move-result-object p1

    iput-boolean v1, p1, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    .line 236
    :cond_1
    return v2

    .line 238
    :cond_2
    return v1
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 165
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 166
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 167
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 168
    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->shouldAddPreference(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    goto :goto_2

    .line 171
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    .line 173
    if-nez v5, :cond_2

    .line 174
    new-instance v5, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6, v3}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 175
    invoke-virtual {v5, v4}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setKey(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v5, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 180
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 179
    invoke-static {v4, v6, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 181
    invoke-virtual {v5}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    .line 183
    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setOrder(I)V

    .line 166
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_3
    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setLoading(ZZ)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 187
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->resume()V

    .line 119
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    .line 154
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    const-string v0, "show_system"

    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 112
    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setLoading(ZZ)V

    .line 113
    return-void
.end method

.method shouldAddPreference(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 251
    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
