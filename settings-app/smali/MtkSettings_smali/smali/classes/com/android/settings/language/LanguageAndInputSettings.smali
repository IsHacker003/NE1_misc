.class public Lcom/android/settings/language/LanguageAndInputSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LanguageAndInputSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    sget-object v0, Lcom/android/settings/language/-$$Lambda$LanguageAndInputSettings$VvwbgRiPWoRSuoMu5QPyPqZ5AEc;->INSTANCE:Lcom/android/settings/language/-$$Lambda$LanguageAndInputSettings$VvwbgRiPWoRSuoMu5QPyPqZ5AEc;

    sput-object v0, Lcom/android/settings/language/LanguageAndInputSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 171
    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettings$1;

    invoke-direct {v0}, Lcom/android/settings/language/LanguageAndInputSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/language/LanguageAndInputSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/android/settings/language/LanguageAndInputSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 7
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

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v1, Lcom/android/settings/language/PhoneLanguagePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/language/PhoneLanguagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v2, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance p1, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v3, "keyboards_category"

    invoke-direct {p1, p0, v3}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v4, v3, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    .line 109
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 108
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p1

    .line 107
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance p1, Lcom/android/settings/language/TtsPreferenceController;

    new-instance v2, Landroid/speech/tts/TtsEngines;

    invoke-direct {v2, p0}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p0, v2}, Lcom/android/settings/language/TtsPreferenceController;-><init>(Landroid/content/Context;Landroid/speech/tts/TtsEngines;)V

    .line 115
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v2, Lcom/android/settings/language/PointerSpeedController;

    invoke-direct {v2, p0}, Lcom/android/settings/language/PointerSpeedController;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v4, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v6, "pointer_and_tts_category"

    invoke-direct {v4, p0, v6}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-array v3, v3, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object v2, v3, v5

    aput-object p1, v3, v1

    .line 120
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 119
    invoke-virtual {v4, p1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p1

    .line 118
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance p1, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance p1, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance p1, Lcom/android/settings/language/UserDictionaryPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/language/UserDictionaryPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance p1, Lcom/mediatek/settings/inputmethod/VoiceWakeupPreferenceController;

    invoke-direct {p1, p0}, Lcom/mediatek/settings/inputmethod/VoiceWakeupPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-object v0
.end method

.method static synthetic lambda$static$0(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 1

    .line 169
    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

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

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/language/LanguageAndInputSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "LangAndInputSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 63
    const/16 v0, 0x2ee

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 86
    const v0, 0x7f150067    # @xml/language_and_input 'res/xml/language_and_input.xml'

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    const v1, 0x7f1207cf    # @string/language_settings 'Languages & input'

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 82
    return-void
.end method
