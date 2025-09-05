.class public abstract Lcom/android/settings/core/InstrumentedPreferenceFragment;
.super Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;
.source "InstrumentedPreferenceFragment.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# static fields
.field private static final TAG:Ljava/lang/String; = "InstrumentedPrefFrag"


# instance fields
.field protected final PLACEHOLDER_METRIC:I

.field protected mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;-><init>()V

    .line 45
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->PLACEHOLDER_METRIC:I

    return-void
.end method

.method private updateActivityTitleWithScreenTitle(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    .line 96
    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    :cond_0
    const-string p1, "InstrumentedPrefFrag"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen title missing for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->addPreferencesFromResource(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->updateActivityTitleWithScreenTitle(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 78
    return-void
.end method

.method protected final getPrefContext()Landroid/content/Context;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 92
    const/4 v0, -0x1

    return v0
.end method

.method protected final getVisibilityLogger()Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 51
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 53
    new-instance v0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    iput-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/survey/SurveyMixin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/survey/SurveyMixin;-><init>(Landroid/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 57
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPreferenceScreenResId()I

    move-result p1

    .line 69
    if-lez p1, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->addPreferencesFromResource(I)V

    .line 72
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->setSourceMetricsCategory(Landroid/app/Activity;)V

    .line 63
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onResume()V

    .line 64
    return-void
.end method
