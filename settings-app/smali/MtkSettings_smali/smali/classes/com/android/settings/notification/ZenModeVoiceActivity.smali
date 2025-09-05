.class public Lcom/android/settings/notification/ZenModeVoiceActivity;
.super Lcom/android/settings/utils/VoiceSettingsActivity;
.source "ZenModeVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;-><init>()V

    return-void
.end method

.method private getChangeSummary(II)Ljava/lang/CharSequence;
    .locals 8

    .line 89
    nop

    .line 90
    nop

    .line 91
    nop

    .line 92
    nop

    .line 94
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 106
    move v1, v0

    move v2, v1

    move v3, v2

    goto :goto_0

    .line 96
    :cond_0
    const v0, 0x7f1211d2    # @string/zen_mode_summary_alarms_only_indefinite 'Change to alarms only indefinitely'

    .line 97
    const v1, 0x7f100048    # @plurals/zen_mode_summary_alarms_only_by_minute

    .line 98
    const v2, 0x7f100047    # @plurals/zen_mode_summary_alarms_only_by_hour

    .line 99
    const v3, 0x7f1211d1    # @string/zen_mode_summary_alarms_only_by_time 'Change to alarms only until %1$s'

    .line 100
    goto :goto_0

    .line 102
    :cond_1
    const v1, 0x7f1211d3    # @string/zen_mode_summary_always 'Change to always interrupt'

    .line 106
    move v2, v0

    move v3, v2

    move v0, v1

    move v1, v3

    :goto_0
    if-ltz p2, :cond_6

    if-nez p1, :cond_2

    goto :goto_2

    .line 110
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const p1, 0xea60

    mul-int/2addr p1, p2

    int-to-long v6, p1

    add-long/2addr v4, v6

    .line 111
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Hm"

    goto :goto_1

    :cond_3
    const-string p1, "hma"

    .line 112
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {p1, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x3c

    if-ge p2, v7, :cond_4

    .line 117
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 118
    :cond_4
    rem-int/lit8 v1, p2, 0x3c

    if-eqz v1, :cond_5

    .line 119
    new-array p2, v5, [Ljava/lang/Object;

    aput-object p1, p2, v6

    invoke-virtual {v0, v3, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 121
    :cond_5
    div-int/2addr p2, v7

    .line 122
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    aput-object p1, v1, v5

    invoke-virtual {v0, v2, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :cond_6
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeVoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setZenModeConfig(ILandroid/service/notification/Condition;)V
    .locals 2

    .line 78
    if-eqz p2, :cond_0

    .line 79
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object p2, p2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    const-string v1, "ZenModeVoiceActivity"

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "ZenModeVoiceActivity"

    invoke-virtual {p2, p1, v0, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void
.end method


# virtual methods
.method protected onVoiceSettingInteraction(Landroid/content/Intent;)Z
    .locals 5

    .line 49
    const-string v0, "android.settings.extra.do_not_disturb_mode_enabled"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 50
    const-string v0, "android.settings.extra.do_not_disturb_mode_minutes"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 51
    const/4 v2, 0x0

    .line 52
    nop

    .line 54
    const-string v3, "android.settings.extra.do_not_disturb_mode_enabled"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    if-lez v0, :cond_0

    .line 56
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p0, v0, p1}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object p1

    .line 58
    move-object v2, p1

    :cond_0
    const/4 p1, 0x3

    goto :goto_0

    .line 60
    :cond_1
    move p1, v1

    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/android/settings/notification/ZenModeVoiceActivity;->setZenModeConfig(ILandroid/service/notification/Condition;)V

    .line 62
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ZenModeVoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 63
    if-eqz v2, :cond_2

    .line 65
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 69
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/ZenModeVoiceActivity;->getChangeSummary(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenModeVoiceActivity;->notifySuccess(Ljava/lang/CharSequence;)V

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const-string p1, "ZenModeVoiceActivity"

    const-string v0, "Missing extra android.provider.Settings.EXTRA_DO_NOT_DISTURB_MODE_ENABLED"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVoiceActivity;->finish()V

    .line 74
    :goto_1
    return v1
.end method
