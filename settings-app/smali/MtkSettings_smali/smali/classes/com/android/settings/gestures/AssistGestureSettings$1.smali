.class Lcom/android/settings/gestures/AssistGestureSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "AssistGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/AssistGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
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

    .line 80
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/gestures/AssistGestureSettings;->access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 73
    const p1, 0x7f15001e    # @xml/assist_gesture_settings 'res/xml/assist_gesture_settings.xml'

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 74
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    const-string v1, "gesture_assist_input_summary"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->setAssistOnly(Z)Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    .line 89
    invoke-virtual {v0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isAvailable()Z

    move-result p1

    return p1
.end method
