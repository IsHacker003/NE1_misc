.class public Lcom/android/settings/notification/ImportancePreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "ImportancePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 45
    iput-object p2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    .line 46
    return-void
.end method


# virtual methods
.method protected getImportanceSummary(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .locals 2

    .line 115
    nop

    .line 116
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    .line 117
    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_2

    const v1, 0x7f1209aa    # @string/notification_importance_low 'Show silently'

    packed-switch v0, :pswitch_data_0

    .line 143
    const-string p1, ""

    return-object p1

    .line 136
    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/notification/SoundPreferenceController;->hasValidSound(Landroid/app/NotificationChannel;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1209a7    # @string/notification_importance_high 'Make sound and pop on screen'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1209a8    # @string/notification_importance_high_silent 'Pop on screen'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 141
    goto :goto_0

    .line 128
    :pswitch_1
    invoke-static {p1}, Lcom/android/settings/notification/SoundPreferenceController;->hasValidSound(Landroid/app/NotificationChannel;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1209a4    # @string/notification_importance_default 'Make sound'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 133
    goto :goto_0

    .line 125
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 126
    goto :goto_0

    .line 122
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1209ac    # @string/notification_importance_min 'Show silently and minimize'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 123
    goto :goto_0

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1209af    # @string/notification_importance_unspecified 'Allow sound'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 120
    nop

    .line 146
    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "importance"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 55
    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 56
    return v1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    .line 59
    return v1

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreferenceController;->isDefaultChannel()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 91
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_1

    .line 92
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 98
    iget-object p2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p2

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 99
    invoke-static {p2}, Lcom/android/settings/notification/SoundPreferenceController;->hasValidSound(Landroid/app/NotificationChannel;)Z

    move-result p2

    if-nez p2, :cond_0

    if-lt p1, v0, :cond_0

    .line 101
    iget-object p2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 102
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 101
    invoke-virtual {p2, v0, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 103
    iget-object p2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 106
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 107
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreferenceController;->saveChannel()V

    .line 109
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->onImportanceChanged()V

    .line 111
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 8

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreferenceController;->isChannelConfigurable()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ImportancePreferenceController;->getImportanceSummary(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    nop

    .line 71
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/CharSequence;

    .line 72
    new-array v4, v0, [Ljava/lang/CharSequence;

    .line 74
    nop

    .line 75
    :goto_1
    if-lt v0, v2, :cond_1

    .line 76
    new-instance v5, Landroid/app/NotificationChannel;

    const-string v6, ""

    const-string v7, ""

    invoke-direct {v5, v6, v7, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 77
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ImportancePreferenceController;->getImportanceSummary(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 78
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 79
    add-int/2addr v1, v2

    .line 75
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 82
    :cond_1
    check-cast p1, Lcom/android/settings/RestrictedListPreference;

    .line 83
    invoke-virtual {p1, v3}, Lcom/android/settings/RestrictedListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p1, v4}, Lcom/android/settings/RestrictedListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    .line 87
    :cond_2
    return-void
.end method
