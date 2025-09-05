.class public abstract Lcom/android/settings/notification/RingtonePreferenceControllerBase;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RingtonePreferenceControllerBase.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public abstract getRingtoneType()I
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 39
    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    if-eqz v0, :cond_0

    .line 54
    const-string v1, "RingtonePreferenceControllerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ringtoneUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does NOT exist"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_0
    const-string v0, "RingtonePreferenceControllerBase"

    const-string v1, "old ringtoneUri is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getFallbackRingtone(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    iget-object v1, p0, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->getRingtoneType()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 61
    const-string v1, "RingtonePreferenceControllerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore to the default ringtone, uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    :cond_2
    return-void
.end method
