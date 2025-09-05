.class public Lcom/android/settings/LegalSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LegalSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field static final KEY_WALLPAPER_ATTRIBUTIONS:Ljava/lang/String; = "wallpaper_attributions"

.field private static LEGAL_APR_ITEM_Name:Ljava/lang/String;

.field private static LEGAL_ITEM_Name:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static isSupportCustomizedLegalInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/LegalSettings;->isSupportCustomizedLegalInfo:Z

    .line 64
    const-string v0, ""

    sput-object v0, Lcom/android/settings/LegalSettings;->LEGAL_ITEM_Name:Ljava/lang/String;

    .line 66
    const-string v0, ""

    sput-object v0, Lcom/android/settings/LegalSettings;->LEGAL_APR_ITEM_Name:Ljava/lang/String;

    .line 141
    new-instance v0, Lcom/android/settings/LegalSettings$1;

    invoke-direct {v0}, Lcom/android/settings/LegalSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/LegalSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/android/settings/LegalSettings;->LEGAL_ITEM_Name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    sput-object p0, Lcom/android/settings/LegalSettings;->LEGAL_ITEM_Name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/android/settings/LegalSettings;->LEGAL_APR_ITEM_Name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    sput-object p0, Lcom/android/settings/LegalSettings;->LEGAL_APR_ITEM_Name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/android/settings/LegalSettings;->isSupportCustomizedLegalInfo:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 45
    sput-boolean p0, Lcom/android/settings/LegalSettings;->isSupportCustomizedLegalInfo:Z

    return p0
.end method


# virtual methods
.method checkWallpaperAttributionAvailability(Landroid/content/Context;)V
    .locals 1

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050040    # @bool/config_show_wallpaper_attribution 'true'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 137
    const-string p1, "wallpaper_attributions"

    invoke-virtual {p0, p1}, Lcom/android/settings/LegalSettings;->removePreference(Ljava/lang/String;)Z

    .line 139
    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 130
    const/16 v0, 0xe1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/high16 p1, 0x7f150000    # @xml/about_legal 'res/xml/about_legal.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/LegalSettings;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 76
    const-string v1, "terms"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 78
    const-string v1, "license"

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 80
    const-string v1, "copyright"

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 82
    const-string v1, "webview_license"

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 85
    const-string v1, "privacy_apr_item"

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 89
    const-string v1, "legal_apr_item"

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 93
    const-string v1, "legal_item"

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050052    # @bool/hmd_open_source_info 'false'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/LegalSettings;->isSupportCustomizedLegalInfo:Z

    .line 98
    sget-boolean v0, Lcom/android/settings/LegalSettings;->isSupportCustomizedLegalInfo:Z

    if-nez v0, :cond_0

    .line 99
    const-string v0, "hmd_open_source_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/LegalSettings;->removePreference(Ljava/lang/String;)Z

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1207dd    # @string/legal_item ''

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/LegalSettings;->LEGAL_ITEM_Name:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1207db    # @string/legal_apr_item ''

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/LegalSettings;->LEGAL_APR_ITEM_Name:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/android/settings/LegalSettings;->LEGAL_ITEM_Name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "legal_item"

    invoke-virtual {p0, v0}, Lcom/android/settings/LegalSettings;->removePreference(Ljava/lang/String;)Z

    .line 116
    :cond_1
    sget-object v0, Lcom/android/settings/LegalSettings;->LEGAL_APR_ITEM_Name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    const-string v0, "legal_apr_item"

    invoke-virtual {p0, v0}, Lcom/android/settings/LegalSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 121
    :cond_2
    const-string v0, "privacy_apr_item"

    invoke-virtual {p0, v0}, Lcom/android/settings/LegalSettings;->removePreference(Ljava/lang/String;)Z

    .line 125
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/LegalSettings;->checkWallpaperAttributionAvailability(Landroid/content/Context;)V

    .line 126
    return-void
.end method
