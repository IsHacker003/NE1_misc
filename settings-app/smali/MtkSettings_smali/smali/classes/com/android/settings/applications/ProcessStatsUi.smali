.class public Lcom/android/settings/applications/ProcessStatsUi;
.super Lcom/android/settings/applications/ProcessStatsBase;
.source "ProcessStatsUi.java"


# static fields
.field public static final BACKGROUND_AND_SYSTEM_PROC_STATES:[I

.field public static final CACHED_PROC_STATES:[I

.field public static final FOREGROUND_PROC_STATES:[I

.field static final sMaxPackageEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final sPackageEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mMenuAvg:Landroid/view/MenuItem;

.field private mMenuMax:Landroid/view/MenuItem;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mShowMax:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 127
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->BACKGROUND_AND_SYSTEM_PROC_STATES:[I

    .line 135
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    sput-object v1, Lcom/android/settings/applications/ProcessStatsUi;->FOREGROUND_PROC_STATES:[I

    .line 139
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->CACHED_PROC_STATES:[I

    .line 188
    new-instance v0, Lcom/android/settings/applications/ProcessStatsUi$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsUi$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sPackageEntryCompare:Ljava/util/Comparator;

    .line 201
    new-instance v0, Lcom/android/settings/applications/ProcessStatsUi$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsUi$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sMaxPackageEntryCompare:Ljava/util/Comparator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x8
        0x5
        0x6
        0x7
        0x9
    .end array-data

    :array_1
    .array-data 4
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsBase;-><init>()V

    return-void
.end method

.method private updateMenu()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMenuMax:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 90
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMenuAvg:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 91
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 100
    const v0, 0x7f1206e6    # @string/help_uri_process_stats_apps ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 95
    const/16 v0, 0x17

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    .line 62
    const p1, 0x7f15008b    # @xml/process_stats_ui 'res/xml/process_stats_ui.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsUi;->addPreferencesFromResource(I)V

    .line 63
    const-string p1, "app_list"

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsUi;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 64
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsUi;->setHasOptionsMenu(Z)V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 69
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 70
    const/4 p2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f120cc4    # @string/sort_avg_use 'Sort by avg use'

    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMenuAvg:Landroid/view/MenuItem;

    .line 71
    const/4 v0, 0x2

    const v1, 0x7f120cc5    # @string/sort_max_use 'Sort by max use'

    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMenuMax:Landroid/view/MenuItem;

    .line 72
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->updateMenu()V

    .line 73
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/applications/ProcessStatsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 80
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshUi()V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->updateMenu()V

    .line 83
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    .line 110
    instance-of v0, p1, Lcom/android/settings/applications/ProcessStatsPreference;

    if-nez v0, :cond_0

    .line 111
    const/4 p1, 0x0

    return p1

    .line 113
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/applications/ProcessStatsPreference;

    .line 114
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v1

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcessStatsPreference;->getEntry()Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3}, Lcom/android/settings/applications/ProcessStatsUi;->launchMemoryDetail(Lcom/android/settings/SettingsActivity;Lcom/android/settings/applications/ProcStatsData$MemInfo;Lcom/android/settings/applications/ProcStatsPackageEntry;Z)V

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/applications/ProcessStatsBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/applications/ProcessStatsBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

.method public refreshUi()V
    .locals 20

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 153
    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 154
    iget-object v1, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-boolean v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v3, :cond_0

    const v3, 0x7f1208c0    # @string/maximum_memory_use 'Maximum memory use'

    goto :goto_0

    .line 155
    :cond_0
    const v3, 0x7f1201aa    # @string/average_memory_use 'Average memory use'

    .line 154
    :goto_0
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 158
    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v3}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v3

    .line 160
    iget-object v4, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v4}, Lcom/android/settings/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v4

    .line 163
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    .line 164
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 165
    invoke-virtual {v7}, Lcom/android/settings/applications/ProcStatsPackageEntry;->updateMetrics()V

    .line 163
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 168
    :cond_1
    iget-boolean v5, v0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/settings/applications/ProcessStatsUi;->sMaxPackageEntryCompare:Ljava/util/Comparator;

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/android/settings/applications/ProcessStatsUi;->sPackageEntryCompare:Ljava/util/Comparator;

    :goto_2
    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 175
    iget-boolean v5, v0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    if-eqz v5, :cond_3

    iget-wide v5, v3, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    goto :goto_3

    .line 176
    :cond_3
    iget-wide v5, v3, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    iget-wide v7, v3, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double/2addr v5, v7

    .line 177
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 178
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 179
    new-instance v14, Lcom/android/settings/applications/ProcessStatsPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v14, v7}, Lcom/android/settings/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;)V

    .line 180
    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1, v7}, Lcom/android/settings/applications/ProcStatsPackageEntry;->retrieveUiData(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 181
    iget-object v9, v0, Lcom/android/settings/applications/ProcessStatsUi;->mPm:Landroid/content/pm/PackageManager;

    iget-wide v12, v3, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    iget-wide v10, v3, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    iget-boolean v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mShowMax:Z

    xor-int/lit8 v16, v7, 0x1

    move-object v7, v14

    move-wide/from16 v17, v10

    move-wide v10, v5

    move-object/from16 v19, v1

    move-object v1, v14

    move-wide/from16 v14, v17

    invoke-virtual/range {v7 .. v16}, Lcom/android/settings/applications/ProcessStatsPreference;->init(Lcom/android/settings/applications/ProcStatsPackageEntry;Landroid/content/pm/PackageManager;DDDZ)V

    .line 183
    invoke-virtual {v1, v2}, Lcom/android/settings/applications/ProcessStatsPreference;->setOrder(I)V

    .line 184
    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v7, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 177
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v19

    goto :goto_3

    .line 186
    :cond_4
    return-void
.end method
