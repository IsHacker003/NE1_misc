.class public Lcom/android/settings/gestures/SwipeToNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SwipeToNotificationSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/android/settings/gestures/SwipeToNotificationSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/SwipeToNotificationSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/SwipeToNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "SwipeToNotifSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 56
    const/16 v0, 0x2ef

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 66
    const v0, 0x7f1500a2    # @xml/swipe_to_notification_settings 'res/xml/swipe_to_notification_settings.xml'

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 48
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 50
    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 51
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_swipe_to_notification_suggestion_complete"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    return-void
.end method
