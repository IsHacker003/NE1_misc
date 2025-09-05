.class public Lcom/android/settings/notification/ConfigureNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConfigureNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;
    }
.end annotation


# static fields
.field static final KEY_LOCKSCREEN:Ljava/lang/String; = "lock_screen_notifications"

.field static final KEY_LOCKSCREEN_WORK_PROFILE:Ljava/lang/String; = "lock_screen_notifications_profile"

.field static final KEY_LOCKSCREEN_WORK_PROFILE_HEADER:Ljava/lang/String; = "lock_screen_notifications_profile_header"

.field static final KEY_SWIPE_DOWN:Ljava/lang/String; = "gesture_swipe_down_fingerprint_notifications"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mRequestPreference:Lcom/android/settings/RingtonePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 191
    new-instance v0, Lcom/android/settings/notification/ConfigureNotificationSettings$2;

    invoke-direct {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 204
    new-instance v0, Lcom/android/settings/notification/ConfigureNotificationSettings$3;

    invoke-direct {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;
    .locals 0

    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/notification/ConfigureNotificationSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Landroid/app/Application;",
            "Landroid/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v1, Lcom/android/settings/notification/PulseNotificationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/PulseNotificationPreferenceController;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v2, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    const-string v3, "lock_screen_notifications"

    const-string v4, "lock_screen_notifications_profile_header"

    const-string v5, "lock_screen_notifications_profile"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 105
    invoke-virtual {p1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 107
    :cond_0
    new-instance v3, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

    new-instance v4, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v4}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    invoke-direct {v3, p0, v4, p2, p3}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/Application;Landroid/app/Fragment;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance p2, Lcom/android/settings/notification/ConfigureNotificationSettings$1;

    invoke-direct {p2, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance p2, Lcom/android/settings/notification/ZenModePreferenceController;

    const-string p3, "zen_mode_notifications"

    invoke-direct {p2, p0, p1, p3}, Lcom/android/settings/notification/ZenModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {p1, v1, v0, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "ConfigNotiSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 68
    const/16 v0, 0x151

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 78
    const v0, 0x7f150031    # @xml/configure_notification_settings 'res/xml/configure_notification_settings.xml'

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    .line 141
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 143
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 124
    instance-of v0, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 125
    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 126
    iget-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v0}, Lcom/android/settings/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 127
    iget-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 128
    invoke-virtual {p1}, Lcom/android/settings/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xc8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 131
    invoke-virtual {v2}, Lcom/android/settings/RingtonePreference;->getUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 127
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 132
    const/4 p1, 0x1

    return p1

    .line 134
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "selected_preference"

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method
