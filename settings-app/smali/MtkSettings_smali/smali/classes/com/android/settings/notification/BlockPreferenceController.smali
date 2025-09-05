.class public Lcom/android/settings/notification/BlockPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "BlockPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 44
    iput-object p2, p0, Lcom/android/settings/notification/BlockPreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    .line 45
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "block"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 55
    return v1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/notification/BlockPreferenceController;->isChannelBlockable()Z

    move-result v0

    return v0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/notification/BlockPreferenceController;->isChannelGroupBlockable()Z

    move-result v0

    return v0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    .line 93
    nop

    .line 94
    const/4 p1, 0x1

    xor-int/2addr p2, p1

    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    .line 99
    if-nez p2, :cond_0

    if-nez v0, :cond_3

    .line 100
    :cond_0
    if-eqz p2, :cond_1

    .line 102
    move v0, v1

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/BlockPreferenceController;->isDefaultChannel()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, -0x3e8

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    .line 102
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/notification/BlockPreferenceController;->saveChannel()V

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eq v0, p2, :cond_5

    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iput-boolean p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 108
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    .line 111
    :cond_5
    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_7

    .line 112
    iget-object p1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 113
    iget-object p1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p2, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p2, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/settings/notification/NotificationBackend;->updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    goto :goto_3

    .line 114
    :cond_7
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iput-boolean p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 116
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    if-nez p2, :cond_8

    goto :goto_2

    :cond_8
    move p1, v1

    :goto_2
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    .line 118
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->onImportanceChanged()V

    .line 119
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 67
    check-cast p1, Lcom/android/settings/applications/LayoutPreference;

    .line 68
    const v0, 0x7f0a036f    # @id/switch_bar

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    .line 69
    if-eqz p1, :cond_4

    .line 70
    const v0, 0x7f1209de    # @string/notification_switch_label 'Show notifications'

    invoke-virtual {p1, v0, v0}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 72
    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 74
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 82
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    move v1, v2

    goto :goto_1

    .line 82
    :cond_0
    nop

    .line 81
    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_2

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_2

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 89
    :cond_4
    :goto_2
    return-void
.end method
