.class public Lcom/android/settings/datausage/DataSaverSummary;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataSaverSummary.java"

# interfaces
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitching:Z

.field private mUnrestrictedAccess:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 112
    const v0, 0x7f1206fc    # @string/help_url_data_saver ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 107
    const/16 v0, 0x15c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 71
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v0, 0x7f120467    # @string/data_saver_switch_title 'Use Data Saver'

    invoke-virtual {p1, v0, v0}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 75
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 76
    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    .line 181
    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0

    .line 129
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const p1, 0x7f150035    # @xml/data_saver 'res/xml/data_saver.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataSaverSummary;->addPreferencesFromResource(I)V

    .line 57
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    .line 58
    const v0, 0x104017c    # @android:string/data_usage_limit_snoozed_body

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 59
    const-string p1, "unrestricted_access"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataSaverSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mUnrestrictedAccess:Landroid/support/v7/preference/Preference;

    .line 60
    nop

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 60
    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 62
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 63
    new-instance p1, Lcom/android/settings/datausage/AppStateDataUsageBridge;

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p1, v0, p0, v1}, Lcom/android/settings/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    .line 64
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 65
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 1

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 119
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitching:Z

    .line 120
    monitor-exit p0

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onExtraInfoUpdated()V
    .locals 7

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    return-void

    .line 136
    :cond_0
    nop

    .line 137
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 139
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    .line 140
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 141
    sget-object v6, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v6, v5}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 142
    goto :goto_1

    .line 144
    :cond_1
    iget-object v6, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v6, :cond_2

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v5, v5, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    if-eqz v5, :cond_2

    .line 146
    add-int/lit8 v4, v4, 0x1

    .line 139
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mUnrestrictedAccess:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100010    # @plurals/data_saver_unrestricted_summary

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 150
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 149
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 186
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 191
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 171
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 161
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    .line 176
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 90
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->pause()V

    .line 92
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 166
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->refreshWhitelist()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->refreshBlacklist()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->resume()V

    .line 85
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    .line 156
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-boolean p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitching:Z

    if-eqz p1, :cond_0

    .line 98
    monitor-exit p0

    return-void

    .line 100
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitching:Z

    .line 101
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1, p2}, Lcom/android/settings/datausage/DataSaverBackend;->setDataSaverEnabled(Z)V

    .line 102
    monitor-exit p0

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0

    .line 125
    return-void
.end method
