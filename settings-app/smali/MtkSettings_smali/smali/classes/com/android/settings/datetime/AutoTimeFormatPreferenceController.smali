.class public Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AutoTimeFormatPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method static isAutoTimeFormatSelection(Landroid/content/Context;)Z
    .locals 1

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "time_12_24"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "auto_24hour"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 60
    instance-of v0, p1, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v0, :cond_2

    const-string v0, "auto_24hour"

    .line 61
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    const/4 p1, 0x0

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;->is24HourLocale(Ljava/util/Locale;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/datetime/TimeFormatPreferenceController;->update24HourFormat(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 72
    const/4 p1, 0x1

    return p1

    .line 62
    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method is24HourLocale(Ljava/util/Locale;)Z
    .locals 0

    .line 76
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourLocale(Ljava/util/Locale;)Z

    move-result p1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 52
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;->isAutoTimeFormatSelection(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 56
    return-void
.end method
