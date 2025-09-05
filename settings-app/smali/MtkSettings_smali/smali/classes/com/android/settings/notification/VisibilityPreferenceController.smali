.class public Lcom/android/settings/notification/VisibilityPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "VisibilityPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 48
    iput-object p2, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 49
    return-void
.end method

.method private getGlobalVisibility()I
    .locals 1

    .line 140
    nop

    .line 141
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->getLockscreenNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const/4 v0, -0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_1
    const/16 v0, -0x3e8

    :goto_0
    return v0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_allow_private_notifications"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    return v3
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->userId:I

    .line 130
    invoke-static {v0, p4, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p4

    .line 132
    if-eqz p4, :cond_0

    .line 133
    new-instance v0, Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/settings/RestrictedListPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 135
    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->addRestrictedItem(Lcom/android/settings/RestrictedListPreference$RestrictedItem;)V

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "visibility_override"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 58
    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 59
    return v1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VisibilityPreferenceController;->checkCanBeVisible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->isLockScreenSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    .line 62
    :cond_3
    :goto_0
    return v1
.end method

.method protected isLockScreenSecure()Z
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 168
    :cond_0
    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 115
    iget-object p1, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_1

    .line 116
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 117
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->getGlobalVisibility()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 118
    const/16 p1, -0x3e8

    .line 120
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 121
    iget-object p1, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->saveChannel()V

    .line 124
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_3

    .line 69
    check-cast p1, Lcom/android/settings/RestrictedListPreference;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual {p1}, Lcom/android/settings/RestrictedListPreference;->clearRestrictedItems()V

    .line 74
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->getLockscreenNotificationsEnabled()Z

    move-result v2

    const/16 v3, -0x3e8

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->getLockscreenAllowPrivateNotifications()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120822    # @string/lock_screen_notifications_summary_show 'Show all notification content'

    .line 76
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    nop

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const/16 v5, 0xc

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/android/settings/notification/VisibilityPreferenceController;->setRestrictedIfNotificationFeaturesDisabled(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->getLockscreenNotificationsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120820    # @string/lock_screen_notifications_summary_hide 'Hide sensitive content'

    .line 89
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const/4 v5, 0x4

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/android/settings/notification/VisibilityPreferenceController;->setRestrictedIfNotificationFeaturesDisabled(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f12081f    # @string/lock_screen_notifications_summary_disable 'Don’t show notifications at all'

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 105
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->getGlobalVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    .line 109
    :goto_0
    const-string v0, "%s"

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    :cond_3
    return-void
.end method
