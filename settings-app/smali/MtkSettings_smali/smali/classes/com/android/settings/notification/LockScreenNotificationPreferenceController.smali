.class public Lcom/android/settings/notification/LockScreenNotificationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "LockScreenNotificationPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private mLockscreen:Lcom/android/settings/RestrictedListPreference;

.field private mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

.field private mLockscreenSelectedValue:I

.field private mLockscreenSelectedValueProfile:I

.field private final mProfileUserId:I

.field private final mSecure:Z

.field private final mSecureProfile:Z

.field private final mSettingKey:Ljava/lang/String;

.field private mSettingObserver:Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;

.field private final mWorkSettingCategoryKey:Ljava/lang/String;

.field private final mWorkSettingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 78
    iput-object p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSettingKey:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mWorkSettingCategoryKey:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mWorkSettingKey:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    .line 83
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 84
    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object p2

    .line 85
    invoke-interface {p2, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    .line 86
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSecure:Z

    .line 87
    iget p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    const/16 p3, -0x2710

    if-eq p2, p3, :cond_0

    iget p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSecureProfile:Z

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->updateLockscreenNotificationsForProfile()V

    return-void
.end method

.method private adminAllowsUnredactedNotifications(I)Z
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 292
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p1

    .line 293
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static getAllowPrivateNotifications(Landroid/content/Context;I)Z
    .locals 2

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_allow_private_notifications"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method private static getLockscreenNotificationsEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_notifications"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public static getSummaryResource(Landroid/content/Context;)I
    .locals 3

    .line 269
    invoke-static {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->getLockscreenNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 270
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v1

    .line 272
    invoke-interface {v1, p0}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 273
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    .line 274
    if-eqz v1, :cond_1

    .line 275
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->getAllowPrivateNotifications(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 276
    :goto_1
    if-nez v0, :cond_2

    const p0, 0x7f12081f    # @string/lock_screen_notifications_summary_disable 'Don’t show notifications at all'

    goto :goto_2

    .line 277
    :cond_2
    if-eqz p0, :cond_3

    const p0, 0x7f120822    # @string/lock_screen_notifications_summary_show 'Show all notification content'

    goto :goto_2

    .line 278
    :cond_3
    const p0, 0x7f120820    # @string/lock_screen_notifications_summary_hide 'Hide sensitive content'

    .line 276
    :goto_2
    return p0
.end method

.method private initLockScreenNotificationPrefDisplay()V
    .locals 5

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    .line 116
    const v3, 0x7f120822    # @string/lock_screen_notifications_summary_show 'Show all notification content'

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    nop

    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const/16 v4, 0xc

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 124
    iget-boolean v2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSecure:Z

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    .line 126
    const v3, 0x7f120820    # @string/lock_screen_notifications_summary_hide 'Hide sensitive content'

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    nop

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    const/4 v4, 0x4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f12081f    # @string/lock_screen_notifications_summary_disable 'Don’t show notifications at all'

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lcom/android/settings/RestrictedListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 141
    invoke-direct {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->updateLockscreenNotifications()V

    .line 143
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0}, Lcom/android/settings/RestrictedListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/RestrictedListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->setEnabled(Z)V

    .line 149
    :goto_0
    return-void
.end method

.method private initLockscreenNotificationPrefForProfile()V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    if-nez v0, :cond_0

    .line 153
    const-string v0, "LockScreenNotifPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preference not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mWorkSettingKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    iget-object v2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120823    # @string/lock_screen_notifications_summary_show_profile 'Show all work notification content'

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const/16 v4, 0xc

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 168
    iget-boolean v2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSecureProfile:Z

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120821    # @string/lock_screen_notifications_summary_hide_profile 'Hide sensitive work content'

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    const/4 v4, 0x4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lcom/android/settings/RestrictedListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 181
    invoke-direct {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->updateLockscreenNotificationsForProfile()V

    .line 182
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0}, Lcom/android/settings/RestrictedListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/RestrictedListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->setEnabled(Z)V

    .line 188
    :goto_0
    return-void
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    .line 249
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 248
    invoke-static {v0, p3, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    if-eqz v1, :cond_0

    .line 251
    new-instance v1, Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/settings/RestrictedListPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->addRestrictedItem(Lcom/android/settings/RestrictedListPreference$RestrictedItem;)V

    .line 255
    :cond_0
    iget v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    .line 257
    invoke-static {v0, p3, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p3

    .line 259
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    if-eqz v0, :cond_1

    .line 260
    new-instance v0, Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/RestrictedListPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 263
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->addRestrictedItem(Lcom/android/settings/RestrictedListPreference$RestrictedItem;)V

    .line 266
    :cond_1
    return-void
.end method

.method private updateLockscreenNotifications()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    if-nez v0, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->getSummaryResource(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenSelectedValue:I

    .line 286
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    iget v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenSelectedValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method private updateLockscreenNotificationsForProfile()V
    .locals 3

    .line 297
    iget v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 298
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    if-nez v0, :cond_1

    .line 301
    return-void

    .line 303
    :cond_1
    iget v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    invoke-direct {p0, v0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->adminAllowsUnredactedNotifications(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSecureProfile:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    .line 304
    invoke-static {v0, v1}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->getAllowPrivateNotifications(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 305
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    const-string v2, "%s"

    invoke-virtual {v1, v2}, Lcom/android/settings/RestrictedListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    if-eqz v0, :cond_4

    .line 307
    const v0, 0x7f120823    # @string/lock_screen_notifications_summary_show_profile 'Show all work notification content'

    goto :goto_1

    .line 308
    :cond_4
    const v0, 0x7f120821    # @string/lock_screen_notifications_summary_hide_profile 'Hide sensitive work content'

    :goto_1
    iput v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenSelectedValueProfile:I

    .line 309
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    iget v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenSelectedValueProfile:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    .line 310
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSettingKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RestrictedListPreference;

    iput-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    .line 94
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreen:Lcom/android/settings/RestrictedListPreference;

    if-nez v0, :cond_0

    .line 95
    const-string p1, "LockScreenNotifPref"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preference not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSettingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 98
    :cond_0
    iget v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mWorkSettingKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/RestrictedListPreference;

    iput-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    .line 100
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setRequiresActiveUnlockedProfile(Z)V

    .line 101
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenProfile:Lcom/android/settings/RestrictedListPreference;

    iget v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setProfileUserId(I)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mWorkSettingKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mWorkSettingCategoryKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 106
    :goto_0
    new-instance p1, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;-><init>(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;

    .line 107
    invoke-direct {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->initLockScreenNotificationPrefDisplay()V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->initLockscreenNotificationPrefForProfile()V

    .line 109
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 212
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 216
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mWorkSettingKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 218
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 219
    iget p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenSelectedValueProfile:I

    if-ne p1, p2, :cond_0

    .line 220
    return v2

    .line 222
    :cond_0
    const p2, 0x7f120823    # @string/lock_screen_notifications_summary_show_profile 'Show all work notification content'

    if-ne p1, p2, :cond_1

    .line 223
    move v2, v1

    goto :goto_0

    .line 222
    :cond_1
    nop

    .line 223
    :goto_0
    iget-object p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "lock_screen_allow_private_notifications"

    .line 225
    iget v3, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    .line 223
    invoke-static {p2, v0, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 226
    iput p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenSelectedValueProfile:I

    .line 227
    return v1

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSettingKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 229
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 230
    iget p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenSelectedValue:I

    if-ne p1, p2, :cond_3

    .line 231
    return v2

    .line 233
    :cond_3
    const p2, 0x7f12081f    # @string/lock_screen_notifications_summary_disable 'Don’t show notifications at all'

    if-eq p1, p2, :cond_4

    .line 234
    move p2, v1

    goto :goto_1

    .line 233
    :cond_4
    nop

    .line 234
    move p2, v2

    :goto_1
    const v0, 0x7f120822    # @string/lock_screen_notifications_summary_show 'Show all notification content'

    if-ne p1, v0, :cond_5

    .line 235
    move v2, v1

    goto :goto_2

    .line 234
    :cond_5
    nop

    .line 235
    :goto_2
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_allow_private_notifications"

    .line 236
    nop

    .line 235
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_show_notifications"

    .line 238
    nop

    .line 237
    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    iput p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mLockscreenSelectedValue:I

    .line 240
    return v1

    .line 242
    :cond_6
    return v2
.end method

.method public onResume()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 205
    :cond_0
    return-void
.end method
