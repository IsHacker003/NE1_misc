.class public Lcom/android/settings/dream/DreamSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DreamSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    new-instance v0, Lcom/android/settings/dream/DreamSettings$1;

    invoke-direct {v0}, Lcom/android/settings/dream/DreamSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/dream/DreamSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/android/settings/dream/DreamSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
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

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    new-instance v1, Lcom/android/settings/dream/CurrentDreamPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/dream/CurrentDreamPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lcom/android/settings/dream/WhenToDreamPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/dream/WhenToDreamPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Lcom/android/settings/dream/StartNowPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/dream/StartNowPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-object v0
.end method

.method static getDreamSettingDescriptionResId(I)I
    .locals 0

    .line 84
    packed-switch p0, :pswitch_data_0

    .line 93
    const p0, 0x7f120bb0    # @string/screensaver_settings_summary_never 'Never'

    return p0

    .line 90
    :pswitch_0
    const p0, 0x7f120bae    # @string/screensaver_settings_summary_either_long 'While charging or docked'

    return p0

    .line 88
    :pswitch_1
    const p0, 0x7f120bad    # @string/screensaver_settings_summary_dock 'While docked'

    return p0

    .line 86
    :pswitch_2
    const p0, 0x7f120bb2    # @string/screensaver_settings_summary_sleep 'While charging'

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getKeyFromSetting(I)Ljava/lang/String;
    .locals 0

    .line 70
    packed-switch p0, :pswitch_data_0

    .line 79
    const-string p0, "never"

    return-object p0

    .line 76
    :pswitch_0
    const-string p0, "either_charging_or_docked"

    return-object p0

    .line 74
    :pswitch_1
    const-string p0, "while_docked_only"

    return-object p0

    .line 72
    :pswitch_2
    const-string p0, "while_charging_only"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getSettingFromPrefKey(Ljava/lang/String;)I
    .locals 6

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5eeeb255

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v0, v1, :cond_3

    const v1, -0x118fdea6

    if-eq v0, v1, :cond_2

    const v1, 0x63dca8c

    if-eq v0, v1, :cond_1

    const v1, 0x3cc2082c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "while_charging_only"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v5

    goto :goto_1

    :cond_1
    const-string v0, "never"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v4

    goto :goto_1

    :cond_2
    const-string v0, "either_charging_or_docked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v3

    goto :goto_1

    :cond_3
    const-string v0, "while_docked_only"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 65
    return v4

    .line 62
    :pswitch_0
    return v3

    .line 60
    :pswitch_1
    return v2

    .line 58
    :pswitch_2
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getSummaryTextFromBackend(Lcom/android/settingslib/dream/DreamBackend;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const p0, 0x7f120bb1    # @string/screensaver_settings_summary_off 'Off'

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 123
    invoke-static {p0}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    .line 124
    invoke-static {v0, p0}, Lcom/android/settings/dream/DreamSettings;->getSummaryTextFromBackend(Lcom/android/settingslib/dream/DreamBackend;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
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

    .line 119
    invoke-static {p1}, Lcom/android/settings/dream/DreamSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    .line 109
    const v0, 0x7f120712    # @string/help_url_screen_saver ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 114
    const-string v0, "DreamSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 99
    const/16 v0, 0x2f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 104
    const v0, 0x7f150056    # @xml/dream_fragment_overview 'res/xml/dream_fragment_overview.xml'

    return v0
.end method
