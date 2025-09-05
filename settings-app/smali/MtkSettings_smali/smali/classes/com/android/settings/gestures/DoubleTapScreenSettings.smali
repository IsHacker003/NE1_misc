.class public Lcom/android/settings/gestures/DoubleTapScreenSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DoubleTapScreenSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/android/settings/gestures/DoubleTapScreenSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/DoubleTapScreenSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/DoubleTapScreenSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 72
    const v0, 0x7f1206ff    # @string/help_url_double_tap_screen ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "DoubleTapScreen"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 57
    const/16 v0, 0x2f2

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 67
    const v0, 0x7f150053    # @xml/double_tap_screen_settings 'res/xml/double_tap_screen_settings.xml'

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 46
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 48
    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_double_tap_screen_suggestion_complete"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    const-class v0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/gestures/DoubleTapScreenSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    new-instance v1, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-direct {v1, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    .line 53
    return-void
.end method
