.class public Lcom/android/settings/display/AutoBrightnessSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AutoBrightnessSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/android/settings/display/AutoBrightnessSettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/AutoBrightnessSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/AutoBrightnessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 59
    const v0, 0x7f1206f3    # @string/help_url_auto_brightness ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "AutoBrightnessSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 54
    const/16 v0, 0x565

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 44
    const v0, 0x7f150020    # @xml/auto_brightness_detail 'res/xml/auto_brightness_detail.xml'

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iget-object p1, p0, Lcom/android/settings/display/AutoBrightnessSettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    .line 39
    const v0, 0x7f120179    # @string/auto_brightness_description 'Your screen brightness will automatically adjust to your environment and activities. You can move th ...'

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 40
    return-void
.end method
