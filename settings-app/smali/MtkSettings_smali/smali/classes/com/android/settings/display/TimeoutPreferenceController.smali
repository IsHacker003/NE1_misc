.class public Lcom/android/settings/display/TimeoutPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TimeoutPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private final mScreenTimeoutKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 49
    iput-object p2, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mScreenTimeoutKey:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static getTimeoutDescription(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 101
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    array-length v0, p3

    array-length v2, p2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_2

    .line 107
    aget-object v2, p3, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 108
    cmp-long v2, p0, v2

    if-nez v2, :cond_1

    .line 109
    aget-object p0, p2, v0

    return-object p0

    .line 106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_2
    return-object v1

    .line 103
    :cond_3
    :goto_1
    return-object v1
.end method

.method private updateTimeoutPreferenceDescription(Lcom/android/settings/TimeoutListPreference;J)V
    .locals 3

    .line 117
    invoke-virtual {p1}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 120
    invoke-virtual {p1}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object p2, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    const p3, 0x7f120552    # @string/disabled_by_policy_title 'Action not allowed'

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {p2, p3, v0, v1}, Lcom/android/settings/display/TimeoutPreferenceController;->getTimeoutDescription(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 125
    if-nez p2, :cond_1

    .line 126
    const-string p2, ""

    goto :goto_0

    .line 127
    :cond_1
    iget-object p3, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120b8f    # @string/screen_timeout_summary 'After %1$s of inactivity'

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 129
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    iget-object p2, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    if-nez p2, :cond_2

    .line 132
    iget-object p2, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/mediatek/settings/UtilsExt;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 134
    :cond_2
    iget-object p2, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    if-eqz p2, :cond_3

    .line 135
    iget-object p2, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-interface {p2, p1}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->setTimeoutPrefTitle(Landroid/support/v7/preference/Preference;)V

    .line 137
    :cond_3
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mScreenTimeoutKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 90
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 91
    iget-object v0, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    check-cast p1, Lcom/android/settings/TimeoutListPreference;

    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/display/TimeoutPreferenceController;->updateTimeoutPreferenceDescription(Lcom/android/settings/TimeoutListPreference;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception p1

    .line 94
    const-string p2, "TimeoutPrefContr"

    const-string v0, "could not persist screen timeout setting"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6

    .line 64
    check-cast p1, Lcom/android/settings/TimeoutListPreference;

    .line 65
    iget-object v0, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 67
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    .line 69
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 70
    if-eqz v2, :cond_0

    .line 71
    iget-object v3, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v4

    .line 75
    invoke-virtual {p1, v4, v5, v3}, Lcom/android/settings/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 77
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/display/TimeoutPreferenceController;->updateTimeoutPreferenceDescription(Lcom/android/settings/TimeoutListPreference;J)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_config_screen_timeout"

    .line 81
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 79
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/settings/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 85
    :cond_1
    return-void
.end method
