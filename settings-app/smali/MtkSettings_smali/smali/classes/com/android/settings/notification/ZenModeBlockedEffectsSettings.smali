.class public Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeBlockedEffectsSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 16
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

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v8, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;

    const-string v4, "zen_effect_intent"

    const/4 v5, 0x4

    const/16 v6, 0x534

    const/4 v7, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v1, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;

    const-string v12, "zen_effect_light"

    const/16 v13, 0x8

    const/16 v14, 0x535

    const/4 v15, 0x0

    move-object v9, v1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;

    const-string v5, "zen_effect_peek"

    const/16 v6, 0x10

    const/16 v7, 0x536

    const/4 v8, 0x0

    move-object v2, v1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;

    const-string v12, "zen_effect_status"

    const/4 v2, 0x1

    new-array v15, v2, [I

    const/4 v2, 0x0

    const/16 v3, 0x100

    aput v3, v15, v2

    const/16 v13, 0x20

    const/16 v14, 0x537

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;

    const-string v5, "zen_effect_badge"

    const/16 v6, 0x40

    const/16 v7, 0x538

    move-object v2, v1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;

    const-string v12, "zen_effect_ambient"

    const/16 v13, 0x80

    const/16 v14, 0x539

    const/4 v15, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;

    const-string v5, "zen_effect_list"

    const/16 v6, 0x100

    const/16 v7, 0x53a

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
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

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 91
    const/16 v0, 0x53b

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 86
    const v0, 0x7f1500cc    # @xml/zen_mode_block_settings 'res/xml/zen_mode_block_settings.xml'

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 47
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    const v0, 0x7f12116f    # @string/zen_mode_blocked_effects_footer 'Notifications needed for basic phone activity and status will never be hidden'

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 49
    return-void
.end method
