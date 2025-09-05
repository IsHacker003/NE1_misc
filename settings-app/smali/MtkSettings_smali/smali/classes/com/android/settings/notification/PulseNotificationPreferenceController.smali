.class public Lcom/android/settings/notification/PulseNotificationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PulseNotificationPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private mSettingObserver:Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 53
    const-string v0, "notification_pulse"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    new-instance v0, Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;-><init>(Lcom/android/settings/notification/PulseNotificationPreferenceController;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;

    .line 57
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "notification_pulse"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    const v1, 0x112007f    # @android:bool/config_localDisplaysPrivate

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 80
    return v0
.end method

.method public onPause()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 71
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 97
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 98
    iget-object p2, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "notification_light_pulse"

    .line 99
    nop

    .line 98
    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 89
    :goto_0
    check-cast p1, Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_1

    .line 90
    :catch_0
    move-exception p1

    .line 91
    const-string p1, "PulseNotifPrefContr"

    const-string v0, "notification_light_pulse not found"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_1
    return-void
.end method
