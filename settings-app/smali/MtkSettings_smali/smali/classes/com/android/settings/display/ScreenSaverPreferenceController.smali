.class public Lcom/android/settings/display/ScreenSaverPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ScreenSaverPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "screensaver"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/settings/display/ScreenSaverPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120056    # @android:bool/config_enableAppWidgetService

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_GMO_RAM_OPTIMIZE:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/settings/display/ScreenSaverPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/dream/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
