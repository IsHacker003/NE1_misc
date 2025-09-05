.class public Lcom/android/settings/system/ResetDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ResetDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/android/settings/system/ResetDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/system/ResetDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/system/ResetDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lcom/android/settings/system/ResetDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
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

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v1, Lcom/android/settings/network/NetworkResetPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/network/NetworkResetPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/android/settings/system/FactoryResetPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/system/FactoryResetPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lcom/android/settings/applications/manageapplications/ResetAppPrefPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/applications/manageapplications/ResetAppPrefPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance p1, Lcom/mediatek/settings/system/DrmResetPreferenceController;

    invoke-direct {p1, p0}, Lcom/mediatek/settings/system/DrmResetPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-object v0
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

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/system/ResetDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/system/ResetDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "ResetDashboardFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 42
    const/16 v0, 0x39c

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 52
    const v0, 0x7f15008d    # @xml/reset_dashboard_fragment 'res/xml/reset_dashboard_fragment.xml'

    return v0
.end method
