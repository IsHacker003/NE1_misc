.class public Lcom/android/settings/applications/AppAndNotificationDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AppAndNotificationDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;
    .locals 0

    .line 36
    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Application;",
            "Landroid/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v1, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;

    const-string v2, "app_and_notif_cell_broadcast_settings"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/applications/RecentAppsPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Application;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
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

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-static {p1, v0, p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    .line 52
    const v0, 0x7f1206f1    # @string/help_url_apps_and_notifications ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "AppAndNotifDashboard"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 42
    const/16 v0, 0x2ec

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 57
    const v0, 0x7f150013    # @xml/app_and_notification 'res/xml/app_and_notification.xml'

    return v0
.end method
