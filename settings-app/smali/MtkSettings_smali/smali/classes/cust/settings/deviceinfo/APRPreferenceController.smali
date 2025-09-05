.class public Lcust/settings/deviceinfo/APRPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "APRPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private validApp()Z
    .locals 7

    .line 67
    nop

    .line 68
    iget-object v0, p0, Lcust/settings/deviceinfo/APRPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 70
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.evenwell.AprUploadService"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 71
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.evenwell.AprUploadService"

    const-string v6, "com.fihtdc.AprUploadService.activity.SettingPage"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 74
    goto :goto_0

    .line 76
    :cond_0
    if-eqz v2, :cond_1

    .line 77
    nop

    .line 82
    move v1, v3

    :cond_1
    :goto_0
    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v0, "APRPreferenceController"

    const-string v2, "no such activity"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_1
    const-string v0, "APRPreferenceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "valid APR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v1
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "apr_item"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 45
    invoke-direct {p0}, Lcust/settings/deviceinfo/APRPreferenceController;->validApp()Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 55
    invoke-virtual {p0}, Lcust/settings/deviceinfo/APRPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcust/settings/deviceinfo/APRPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 60
    :cond_1
    :goto_0
    return-void
.end method
