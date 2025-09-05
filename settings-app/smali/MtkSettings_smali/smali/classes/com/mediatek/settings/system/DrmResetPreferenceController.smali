.class public Lcom/mediatek/settings/system/DrmResetPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DrmResetPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 27
    const-string v0, "drm_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 22
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_DRM_APP:Z

    return v0
.end method
