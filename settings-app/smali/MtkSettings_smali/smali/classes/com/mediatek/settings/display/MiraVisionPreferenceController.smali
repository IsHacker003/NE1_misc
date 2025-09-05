.class public Lcom/mediatek/settings/display/MiraVisionPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "MiraVisionPreferenceController.java"

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

    .line 41
    const-string v0, "mira_vision"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MIRAVISION_SETTING_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 36
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_PRODUCT_IS_TABLET:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0
.end method
