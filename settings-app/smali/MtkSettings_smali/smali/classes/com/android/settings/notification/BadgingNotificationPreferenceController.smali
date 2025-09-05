.class public Lcom/android/settings/notification/BadgingNotificationPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "BadgingNotificationPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field static final OFF:I = 0x0

.field static final ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BadgeNotifPrefContr"


# instance fields
.field private mSettingObserver:Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 65
    const-string v0, "notification_badging"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 66
    if-eqz p1, :cond_0

    .line 67
    new-instance v0, Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;-><init>(Lcom/android/settings/notification/BadgingNotificationPreferenceController;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;

    .line 69
    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 92
    iget-object v1, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    const v2, 0x112008c    # @android:bool/config_pinnerHomeApp

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 91
    :goto_0
    return v0
.end method

.method public getResultPayload()Lcom/android/settings/search/ResultPayload;
    .locals 11

    .line 145
    iget-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/notification/ConfigureNotificationSettings;

    .line 146
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mContext:Landroid/content/Context;

    .line 147
    const v4, 0x7f1203f8    # @string/configure_notification_settings 'Notifications'

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 149
    new-instance v0, Lcom/android/settings/search/InlineSwitchPayload;

    const-string v5, "notification_badging"

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->isAvailable()Z

    move-result v9

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/search/InlineSwitchPayload;-><init>(Ljava/lang/String;IILandroid/content/Intent;ZI)V

    .line 149
    return-object v0
.end method

.method public isChecked()Z
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_badging"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isSliceable()Z
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_badging"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 83
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 76
    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_badging"

    .line 111
    nop

    .line 110
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
