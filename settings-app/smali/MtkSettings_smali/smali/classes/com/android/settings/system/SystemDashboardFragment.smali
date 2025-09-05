.class public Lcom/android/settings/system/SystemDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SystemDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/android/settings/system/SystemDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/system/SystemDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/system/SystemDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/android/settings/system/SystemDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v0, Lcust/settings/deviceinfo/CertificationPreferenceController;

    invoke-direct {v0, p0}, Lcust/settings/deviceinfo/CertificationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-object p1
.end method

.method private getVisiblePreferenceCount(Landroid/support/v7/preference/PreferenceGroup;)I
    .locals 4

    .line 93
    nop

    .line 94
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 95
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 96
    instance-of v3, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 97
    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v2}, Lcom/android/settings/system/SystemDashboardFragment;->getVisiblePreferenceCount(Landroid/support/v7/preference/PreferenceGroup;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 98
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    add-int/lit8 v1, v1, 0x1

    .line 94
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_2
    return v1
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/system/SystemDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/system/SystemDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    .line 89
    const v0, 0x7f120716    # @string/help_url_system_dashboard ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, "SystemDashboardFrag"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 62
    const/16 v0, 0x2e8

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 72
    const v0, 0x7f1500a5    # @xml/system_dashboard_fragment 'res/xml/system_dashboard_fragment.xml'

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/system/SystemDashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/system/SystemDashboardFragment;->getVisiblePreferenceCount(Landroid/support/v7/preference/PreferenceGroup;)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getInitialExpandedChildrenCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    .line 56
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->setInitialExpandedChildrenCount(I)V

    .line 58
    :cond_0
    return-void
.end method
