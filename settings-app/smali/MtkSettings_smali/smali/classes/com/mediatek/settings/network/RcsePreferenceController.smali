.class public Lcom/mediatek/settings/network/RcsePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RcsePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# instance fields
.field mJoynExt:Lcom/mediatek/settings/ext/IWWOPJoynSettingsExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getWWOPJoynSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWWOPJoynSettingsExt;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/network/RcsePreferenceController;->mJoynExt:Lcom/mediatek/settings/ext/IWWOPJoynSettingsExt;

    .line 33
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "rcse_settings"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/mediatek/settings/network/RcsePreferenceController;->mJoynExt:Lcom/mediatek/settings/ext/IWWOPJoynSettingsExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IWWOPJoynSettingsExt;->isJoynSettingsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rcse_settings"

    .line 38
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.mediatek.rcse.RCSE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/settings/network/RcsePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    const-string v0, "RcsePrefContr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePreferenceTreeClick: startActivity failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 47
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/mediatek/settings/network/RcsePreferenceController;->mJoynExt:Lcom/mediatek/settings/ext/IWWOPJoynSettingsExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IWWOPJoynSettingsExt;->isJoynSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "RcsePrefContr"

    const-string v1, "com.mediatek.rcse.RCSE_SETTINGS is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_0
    const-string v0, "RcsePrefContr"

    const-string v1, "com.mediatek.rcse.RCSE_SETTINGS is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/mediatek/settings/network/RcsePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/mediatek/settings/network/RcsePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    return-void
.end method
