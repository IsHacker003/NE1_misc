.class public Lcom/android/settings/applications/SpecialAccessSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SpecialAccessSettings.java"


# static fields
.field private static final DISABLED_FEATURES_LOW_RAM:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    const-string v0, "notification_access"

    const-string v1, "zen_access"

    const-string v2, "enabled_vr_listeners"

    const-string v3, "picture_in_picture"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/SpecialAccessSettings;->DISABLED_FEATURES_LOW_RAM:[Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/android/settings/applications/SpecialAccessSettings$1;

    invoke-direct {v0}, Lcom/android/settings/applications/SpecialAccessSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/SpecialAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/android/settings/applications/SpecialAccessSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/settings/applications/SpecialAccessSettings;->DISABLED_FEATURES_LOW_RAM:[Ljava/lang/String;

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v1, Lcom/android/settings/applications/HighPowerAppsController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/HighPowerAppsController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lcom/android/settings/applications/DeviceAdministratorsController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/DeviceAdministratorsController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lcom/android/settings/applications/PremiumSmsController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/PremiumSmsController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lcom/android/settings/applications/DataSaverController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/DataSaverController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lcom/android/settings/applications/EnabledVrListenersController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/EnabledVrListenersController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 65
    invoke-static {p1}, Lcom/android/settings/applications/SpecialAccessSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "SpecialAccessSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 81
    const/16 v0, 0x15f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 46
    const v0, 0x7f15009e    # @xml/special_access 'res/xml/special_access.xml'

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    sget-object p1, Lcom/android/settings/applications/SpecialAccessSettings;->DISABLED_FEATURES_LOW_RAM:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 55
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/SpecialAccessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/SpecialAccessSettings;->removePreference(Ljava/lang/String;)Z

    .line 54
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method
