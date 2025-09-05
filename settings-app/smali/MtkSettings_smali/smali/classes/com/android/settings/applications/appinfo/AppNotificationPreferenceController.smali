.class public Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppNotificationPreferenceController.java"


# instance fields
.field private final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mChannelId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mChannelId:Ljava/lang/String;

    .line 36
    new-instance p1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 40
    return-void
.end method

.method public static getNotificationSummary(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7

    .line 81
    if-nez p0, :cond_0

    .line 82
    const-string p0, ""

    return-object p0

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    const v1, 0x7f1209e5    # @string/notifications_disabled 'Off'

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 86
    :cond_1
    iget v0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->channelCount:I

    const v2, 0x7f1209e6    # @string/notifications_enabled 'On'

    if-nez v0, :cond_2

    .line 87
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 88
    :cond_2
    iget v0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->channelCount:I

    iget v3, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->blockedChannelCount:I

    if-ne v0, v3, :cond_3

    .line 89
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 91
    :cond_3
    iget v0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->blockedChannelCount:I

    if-nez v0, :cond_4

    .line 92
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 94
    :cond_4
    const v0, 0x7f1209e7    # @string/notifications_enabled_with_info 'On / %1$s'

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100029    # @plurals/notifications_categories_off

    iget v5, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->blockedChannelCount:I

    new-array v1, v1, [Ljava/lang/Object;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->blockedChannelCount:I

    .line 96
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v6, 0x0

    aput-object p0, v1, v6

    .line 95
    invoke-virtual {v3, v4, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v6

    .line 94
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNotificationSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;
    .locals 1

    .line 74
    nop

    .line 75
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p3, p2, v0, p1}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object p1

    .line 76
    invoke-static {p1, p2}, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->getNotificationSummary(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getArguments()Landroid/os/Bundle;
    .locals 3

    .line 63
    nop

    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mChannelId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    const-string v1, ":settings:fragment_args_key"

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getDetailFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation

    .line 58
    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    return-object v0
.end method

.method public setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 45
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":settings:fragment_args_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mChannelId:Ljava/lang/String;

    .line 49
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->getNotificationSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
