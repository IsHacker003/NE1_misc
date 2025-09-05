.class public Lcom/android/settings/applications/DefaultAppSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DefaultAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Lcom/android/settings/applications/DefaultAppSettings$1;

    invoke-direct {v0}, Lcom/android/settings/applications/DefaultAppSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/DefaultAppSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 170
    new-instance v0, Lcom/android/settings/applications/DefaultAppSettings$2;

    invoke-direct {v0}, Lcom/android/settings/applications/DefaultAppSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/DefaultAppSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/android/settings/applications/DefaultAppSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v2, Lcom/android/settings/applications/defaultapps/DefaultWorkPhonePreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/defaultapps/DefaultWorkPhonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v2, Lcom/android/settings/applications/defaultapps/DefaultWorkBrowserPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/defaultapps/DefaultWorkBrowserPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    new-instance v2, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v3, "work_app_defaults"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v1

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;

    const-string v2, "assist_and_voice_input"

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
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

    .line 67
    invoke-static {p1}, Lcom/android/settings/applications/DefaultAppSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "DefaultAppSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 72
    const/16 v0, 0x82

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 62
    const v0, 0x7f150015    # @xml/app_default_settings 'res/xml/app_default_settings.xml'

    return v0
.end method
