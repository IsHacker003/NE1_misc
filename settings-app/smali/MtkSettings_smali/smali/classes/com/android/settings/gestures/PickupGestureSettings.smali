.class public Lcom/android/settings/gestures/PickupGestureSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PickupGestureSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/android/settings/gestures/PickupGestureSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/PickupGestureSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/PickupGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 70
    const v0, 0x7f12070e    # @string/help_url_pickup_gesture ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "PickupGestureSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 55
    const/16 v0, 0x2f1

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 65
    const v0, 0x7f15007b    # @xml/pick_up_gesture_settings 'res/xml/pick_up_gesture_settings.xml'

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 44
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 46
    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_pickup_gesture_suggestion_complete"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    const-class v0, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/gestures/PickupGestureSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    new-instance v1, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-direct {v1, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/PickupGesturePreferenceController;

    .line 51
    return-void
.end method
