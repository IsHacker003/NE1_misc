.class public Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DeviceModelPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

.field private final mHost:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->mHost:Landroid/app/Fragment;

    .line 47
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getDeviceInfoSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    .line 48
    return-void
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 2

    .line 94
    const-string v0, "ro.boot.rsc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getMsvSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 8

    .line 57
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 58
    const-string v0, "device_model"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 59
    if-eqz p1, :cond_1

    .line 61
    const-string v0, "ro.product.model.display"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f12090d    # @string/model_summary 'Model: %1$s'

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getMsvSuffix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getMsvSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 65
    invoke-virtual {v6, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-interface {v1, p1, v5, v0}, Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;->updateSummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 69
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 68
    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 71
    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-interface {v0, p1, v1, v2}, Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;->updateSummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_1
    :goto_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "device_model"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 85
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device_model"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    const/4 p1, 0x0

    return p1

    .line 88
    :cond_0
    invoke-static {}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->newInstance()Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "HardwareInfo"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 90
    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050021    # @bool/config_show_device_model 'true'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
