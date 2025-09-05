.class public Lcom/android/settings/display/ScreenZoomSettings;
.super Lcom/android/settings/PreviewSeekBarPreferenceFragment;
.source "ScreenZoomSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mDefaultDensity:I

.field private mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Lcom/android/settings/display/ScreenZoomSettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/ScreenZoomSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/ScreenZoomSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    iget v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mCurrentIndex:I

    aget v0, v0, v1

    .line 92
    iget v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 93
    invoke-static {v2}, Lcom/android/settingslib/display/DisplayDensityUtils;->clearForcedDisplayDensity(I)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v2, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    .line 97
    :goto_0
    return-void
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 1

    .line 81
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    aget p1, p1, p2

    iput p1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 83
    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 101
    const v0, 0x7f1206fe    # @string/help_url_display_size ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 106
    const/16 v0, 0x153

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const p1, 0x7f0d0133    # @layout/screen_zoom_activity 'res/layout/screen_zoom_activity.xml'

    iput p1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mActivityLayoutResId:I

    .line 52
    const/4 p1, 0x3

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mPreviewSampleResIds:[I

    .line 56
    new-instance p1, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v0

    .line 59
    if-gez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 64
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    iput-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    .line 65
    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {p0, v1}, Lcom/android/settings/display/ScreenZoomSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mEntries:[Ljava/lang/String;

    .line 66
    iput v2, p0, Lcom/android/settings/display/ScreenZoomSettings;->mInitialIndex:I

    .line 67
    iput p1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getValues()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    .line 70
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mEntries:[Ljava/lang/String;

    .line 71
    iput v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mInitialIndex:I

    .line 72
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDensity()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f120ba8    # @string/screen_zoom_title 'Display size'

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 76
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d0134    # @layout/screen_zoom_preview_1 'res/layout/screen_zoom_preview_1.xml'
        0x7f0d0135    # @layout/screen_zoom_preview_2 'res/layout/screen_zoom_preview_2.xml'
        0x7f0d0137    # @layout/screen_zoom_preview_settings 'res/layout/screen_zoom_preview_settings.xml'
    .end array-data
.end method
