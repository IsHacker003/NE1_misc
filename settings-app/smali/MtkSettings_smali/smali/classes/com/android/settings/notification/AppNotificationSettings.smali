.class public Lcom/android/settings/notification/AppNotificationSettings;
.super Lcom/android/settings/notification/NotificationSettingsBase;
.source "AppNotificationSettings.java"


# static fields
.field private static final DEBUG:Z

.field private static KEY_ADVANCED_CATEGORY:Ljava/lang/String;

.field private static KEY_APP_LINK:Ljava/lang/String;

.field private static KEY_BADGE:Ljava/lang/String;

.field private static KEY_GENERAL_CATEGORY:Ljava/lang/String;


# instance fields
.field private mChannelGroupComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-string v0, "AppNotificationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/AppNotificationSettings;->DEBUG:Z

    .line 53
    const-string v0, "categories"

    sput-object v0, Lcom/android/settings/notification/AppNotificationSettings;->KEY_GENERAL_CATEGORY:Ljava/lang/String;

    .line 54
    const-string v0, "app_advanced"

    sput-object v0, Lcom/android/settings/notification/AppNotificationSettings;->KEY_ADVANCED_CATEGORY:Ljava/lang/String;

    .line 55
    const-string v0, "badge"

    sput-object v0, Lcom/android/settings/notification/AppNotificationSettings;->KEY_BADGE:Ljava/lang/String;

    .line 56
    const-string v0, "app_link"

    sput-object v0, Lcom/android/settings/notification/AppNotificationSettings;->KEY_APP_LINK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;-><init>()V

    .line 238
    new-instance v0, Lcom/android/settings/notification/AppNotificationSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/AppNotificationSettings$2;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/notification/AppNotificationSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/util/Comparator;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupComparator:Ljava/util/Comparator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/AppNotificationSettings;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationSettings;->populateList()V

    return-void
.end method

.method public static synthetic lambda$populateGroupToggle$0(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannelGroup;Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 227
    check-cast p2, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result p2

    .line 228
    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 229
    iget-object p2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p2, v1, v2, p1}, Lcom/android/settings/notification/NotificationBackend;->updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/AppNotificationSettings;->onGroupBlockStateChanged(Landroid/app/NotificationChannelGroup;)V

    .line 232
    return v0
.end method

.method private populateGroupList()V
    .locals 8

    .line 192
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannelGroup;

    .line 193
    new-instance v2, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 194
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 196
    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 198
    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 199
    const v3, 0x7f12099e    # @string/notification_channels_other 'Other'

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 201
    :cond_0
    sget-object v3, Lcom/android/settings/notification/AppNotificationSettings;->KEY_GENERAL_CATEGORY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/notification/AppNotificationSettings;->populateGroupToggle(Landroid/support/v7/preference/PreferenceGroup;Landroid/app/NotificationChannelGroup;)V

    .line 207
    :goto_1
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v3

    if-nez v3, :cond_2

    .line 208
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v3

    .line 209
    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 210
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 211
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_2

    .line 212
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 213
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v7

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/settings/notification/AppNotificationSettings;->populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroid/support/v7/preference/Preference;

    .line 211
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 216
    :cond_2
    goto :goto_0

    .line 217
    :cond_3
    return-void
.end method

.method private populateList()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 171
    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 176
    const v1, 0x7f12099d    # @string/notification_channels 'Categories'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 177
    sget-object v1, Lcom/android/settings/notification/AppNotificationSettings;->KEY_GENERAL_CATEGORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 179
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 182
    const v2, 0x7f120983    # @string/no_channels 'This app has not posted any notifications'

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 183
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 184
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 185
    goto :goto_1

    .line 186
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationSettings;->populateGroupList()V

    .line 187
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->onImportanceChanged()V

    .line 189
    :goto_1
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    .line 146
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/HeaderPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/notification/HeaderPreferenceController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/BlockPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/BlockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/BadgePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/BadgePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/AllowSoundPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/AllowSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ImportancePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/ImportancePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/SoundPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, p0, v2, v3}, Lcom/android/settings/notification/SoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/LightsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/LightsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/VibrationPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/VibrationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/VisibilityPreferenceController;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/VisibilityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/DndPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/DndPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/AppLinkPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/AppLinkPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/DescriptionPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/DescriptionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/NotificationsOffPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/NotificationsOffPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/DeletedChannelsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/DeletedChannelsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 135
    const-string v0, "AppNotificationSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 62
    const/16 v0, 0x48

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 140
    const v0, 0x7f150019    # @xml/app_notification_settings 'res/xml/app_notification_settings.xml'

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/notification/NotificationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 69
    iget-boolean v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mShowLegacyChannelConfig:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 71
    sget-object v0, Lcom/android/settings/notification/AppNotificationSettings;->KEY_BADGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/android/settings/notification/AppNotificationSettings;->KEY_APP_LINK:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 73
    sget-object v2, Lcom/android/settings/notification/AppNotificationSettings;->KEY_ADVANCED_CATEGORY:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/AppNotificationSettings;->removePreference(Ljava/lang/String;)Z

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 78
    :cond_0
    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 82
    :cond_1
    return-void
.end method

.method protected onGroupBlockStateChanged(Landroid/app/NotificationChannelGroup;)V
    .locals 6

    .line 254
    if-nez p1, :cond_0

    .line 255
    return-void

    .line 257
    :cond_0
    nop

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    .line 260
    if-eqz v0, :cond_5

    .line 261
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 262
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 264
    :goto_0
    if-ge v2, v1, :cond_2

    .line 265
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 266
    instance-of v4, v3, Lcom/android/settings/widget/MasterCheckBoxPreference;

    if-eqz v4, :cond_1

    .line 267
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 271
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 272
    goto :goto_1

    .line 273
    :cond_3
    goto :goto_3

    .line 274
    :cond_4
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v1

    .line 275
    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 276
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 277
    :goto_2
    if-ge v2, v3, :cond_5

    .line 278
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 279
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v5

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/settings/notification/AppNotificationSettings;->populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroid/support/v7/preference/Preference;

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 283
    :cond_5
    :goto_3
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 126
    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onPause()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 129
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 131
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 86
    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onResume()V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "119115683"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, ""

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 91
    iget v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mUid:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mShowLegacyChannelConfig:Z

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Lcom/android/settings/notification/AppNotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/AppNotificationSettings$1;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 114
    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AppNotificationSettings$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/NotificationPreferenceController;

    .line 118
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    iget-object v5, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/notification/NotificationPreferenceController;->onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/NotificationPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 120
    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->updatePreferenceStates()V

    .line 122
    return-void

    .line 92
    :cond_3
    :goto_1
    const-string v0, "AppNotificationSettings"

    const-string v1, "Missing package or uid or packageinfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->finish()V

    .line 94
    return-void
.end method

.method protected populateGroupToggle(Landroid/support/v7/preference/PreferenceGroup;Landroid/app/NotificationChannelGroup;)V
    .locals 3

    .line 221
    new-instance v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 222
    const v1, 0x7f1209de    # @string/notification_switch_label 'Show notifications'

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setTitle(I)V

    .line 223
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 224
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/AppNotificationSettings;->isChannelGroupBlockable(Landroid/app/NotificationChannelGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    move v1, v2

    goto :goto_0

    .line 224
    :cond_0
    const/4 v1, 0x0

    .line 223
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 225
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 226
    new-instance v1, Lcom/android/settings/notification/-$$Lambda$AppNotificationSettings$KKPiatF9s2jsC7BTjM3YfK_E8S4;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/notification/-$$Lambda$AppNotificationSettings$KKPiatF9s2jsC7BTjM3YfK_E8S4;-><init>(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannelGroup;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 235
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 236
    return-void
.end method
