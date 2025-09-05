.class public Lcom/mediatek/settings/security/PplPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PplPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private mPplSettingsEntryExt:Lcom/mediatek/settings/ext/IPplSettingsEntryExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-static {p1}, Lcom/mediatek/settings/ext/DefaultPplSettingsEntryExt;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/security/PplPreferenceController;->mPplSettingsEntryExt:Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

    .line 66
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/security/PplPreferenceController;->mPplSettingsEntryExt:Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "security_settings_device_admin_category"

    .line 85
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceGroup;

    .line 86
    iget-object v0, p0, Lcom/mediatek/settings/security/PplPreferenceController;->mPplSettingsEntryExt:Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IPplSettingsEntryExt;->addPplPrf(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const-string p1, "PplPrefContr"

    const-string v0, "[displayPreference] mPplSettingsEntryExt should not be null !!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, "privacy_protection_lock"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mediatek/settings/security/PplPreferenceController;->mPplSettingsEntryExt:Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/mediatek/settings/security/PplPreferenceController;->mPplSettingsEntryExt:Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mediatek/settings/security/PplPreferenceController;->mPplSettingsEntryExt:Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IPplSettingsEntryExt;->enablerPause()V

    goto :goto_0

    .line 106
    :cond_0
    const-string v0, "PplPrefContr"

    const-string v1, "[onPause] mPplSettingsEntryExt should not be null !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/mediatek/settings/security/PplPreferenceController;->mPplSettingsEntryExt:Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mediatek/settings/security/PplPreferenceController;->mPplSettingsEntryExt:Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IPplSettingsEntryExt;->enablerResume()V

    goto :goto_0

    .line 97
    :cond_0
    const-string v0, "PplPrefContr"

    const-string v1, "[onResume] mPplSettingsEntryExt should not be null !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return-void
.end method
