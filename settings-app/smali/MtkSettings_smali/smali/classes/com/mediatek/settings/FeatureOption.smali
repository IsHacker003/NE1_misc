.class public Lcom/mediatek/settings/FeatureOption;
.super Ljava/lang/Object;
.source "FeatureOption.java"


# static fields
.field public static final MTK_AGPS_APP:Z

.field public static final MTK_ANC_SUPPORT:Z

.field public static final MTK_AOD_SUPPORT:Z

.field public static final MTK_BESLOUDNESS_SUPPORT:Z

.field public static final MTK_BG_POWER_SAVING_SUPPORT:Z

.field public static final MTK_BG_POWER_SAVING_UI_SUPPORT:Z

.field public static final MTK_DRM_APP:Z

.field public static final MTK_GMO_RAM_OPTIMIZE:Z

.field public static final MTK_GPS_SUPPORT:Z

.field public static final MTK_HIFI_AUDIO_SUPPORT:Z

.field public static final MTK_MIRAVISION_SETTING_SUPPORT:Z

.field public static final MTK_NFC_ADDON_SUPPORT:Z

.field public static final MTK_OMACP_SUPPORT:Z

.field public static final MTK_PRODUCT_IS_TABLET:Z

.field public static final MTK_ST_NFC_GSMA_SUPPORT:Z

.field public static final MTK_SYSTEM_UPDATE_SUPPORT:Z

.field public static final MTK_VOLTE_SUPPORT:Z

.field public static final MTK_WAPI_SUPPORT:Z

.field public static final MTK_WFD_SUPPORT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    const-string v0, "ro.vendor.mtk_nfc_addon_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_NFC_ADDON_SUPPORT:Z

    .line 7
    const-string v0, "ro.vendor.mtk_agps_app"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_AGPS_APP:Z

    .line 8
    const-string v0, "ro.vendor.mtk_omacp_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_OMACP_SUPPORT:Z

    .line 9
    const-string v0, "ro.vendor.mtk_gps_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_GPS_SUPPORT:Z

    .line 10
    const-string v0, "ro.vendor.mtk_miravision_support"

    .line 11
    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MIRAVISION_SETTING_SUPPORT:Z

    .line 12
    const-string v0, "ro.build.characteristics"

    .line 13
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_PRODUCT_IS_TABLET:Z

    .line 14
    const-string v0, "ro.vendor.gmo.ram_optimize"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_GMO_RAM_OPTIMIZE:Z

    .line 15
    const-string v0, "ro.vendor.mtk_aod_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_AOD_SUPPORT:Z

    .line 16
    const-string v0, "ro.vendor.mtk_oma_drm_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_DRM_APP:Z

    .line 17
    const-string v0, "ro.vendor.mtk_wapi_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WAPI_SUPPORT:Z

    .line 18
    const-string v0, "ro.vendor.mtk_bg_power_saving_support"

    .line 19
    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BG_POWER_SAVING_SUPPORT:Z

    .line 20
    const-string v0, "ro.vendor.mtk_bg_power_saving_ui"

    .line 21
    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BG_POWER_SAVING_UI_SUPPORT:Z

    .line 22
    const-string v0, "persist.vendor.st_nfc_gsma_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_ST_NFC_GSMA_SUPPORT:Z

    .line 23
    const-string v0, "ro.vendor.mtk_wfd_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SUPPORT:Z

    .line 24
    const-string v0, "ro.vendor.mtk_besloudness_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BESLOUDNESS_SUPPORT:Z

    .line 25
    const-string v0, "ro.vendor.mtk_active_noise_cancel"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_ANC_SUPPORT:Z

    .line 26
    const-string v0, "ro.vendor.mtk_hifiaudio_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_HIFI_AUDIO_SUPPORT:Z

    .line 27
    const-string v0, "ro.vendor.mtk_system_update_support"

    .line 28
    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_SYSTEM_UPDATE_SUPPORT:Z

    .line 29
    const-string v0, "persist.vendor.volte_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_VOLTE_SUPPORT:Z

    return-void
.end method

.method private static getValue(Ljava/lang/String;)Z
    .locals 1

    .line 34
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
