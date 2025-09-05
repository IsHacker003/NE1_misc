.class public Lcom/android/settings/notification/ZenAccessSettings;
.super Lcom/android/settings/notification/EmptyTextSettings;
.source "ZenAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;,
        Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;,
        Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNoMan:Landroid/app/NotificationManager;

.field private final mObserver:Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

.field private mPkgMan:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/notification/EmptyTextSettings;-><init>()V

    .line 61
    const-string v0, "ZenAccessSettings"

    iput-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;-><init>(Lcom/android/settings/notification/ZenAccessSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->mObserver:Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenAccessSettings;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/notification/ZenAccessSettings;->reloadList()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 60
    invoke-static {p0, p1, p2}, Lcom/android/settings/notification/ZenAccessSettings;->setAccess(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-static {p0, p1}, Lcom/android/settings/notification/ZenAccessSettings;->deleteRules(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static deleteRules(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 215
    new-instance v0, Lcom/android/settings/notification/ZenAccessSettings$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/ZenAccessSettings$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method

.method private getPackagesRequestingNotificationPolicyAccess()Landroid/util/ArraySet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 172
    :try_start_0
    const-string v1, "android.permission.ACCESS_NOTIFICATION_POLICY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 177
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 176
    invoke-interface {v2, v1, v3, v4}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_0

    .line 180
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 181
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_0

    .line 186
    :cond_0
    goto :goto_1

    .line 184
    :catch_0
    move-exception v1

    .line 185
    const-string v2, "ZenAccessSettings"

    const-string v3, "Cannot reach packagemanager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    :goto_1
    return-object v0
.end method

.method private hasAccess(Ljava/lang/String;)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static logSpecialPermissionChange(ZLjava/lang/String;Landroid/content/Context;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 207
    if-eqz p0, :cond_0

    const/16 p0, 0x300

    goto :goto_0

    .line 208
    :cond_0
    const/16 p0, 0x301

    .line 209
    :goto_0
    invoke-static {p2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {v0, p2, p0, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 211
    return-void
.end method

.method private reloadList()V
    .locals 9

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-direct {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getPackagesRequestingNotificationPolicyAccess()Landroid/util/ArraySet;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 123
    iget-object v3, p0, Lcom/android/settings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 124
    if-eqz v3, :cond_1

    .line 125
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 126
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 127
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    goto :goto_0

    .line 132
    :cond_1
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 133
    iget-object v5, p0, Lcom/android/settings/notification/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v5}, Landroid/app/NotificationManager;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 134
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 135
    new-instance v2, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v5, p0, Lcom/android/settings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-direct {v2, v5}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 137
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 138
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 139
    new-instance v7, Lcom/android/settings/widget/AppSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v7, v5}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v7, v4}, Landroid/support/v14/preference/SwitchPreference;->setPersistent(Z)V

    .line 142
    iget-object v8, p0, Lcom/android/settings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    invoke-direct {p0, v5}, Lcom/android/settings/notification/ZenAccessSettings;->hasAccess(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 145
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {v7, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 147
    const v2, 0x7f121139    # @string/zen_access_disabled_package_warning 'Must stay turned on because notification access is on'

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ZenAccessSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    :cond_2
    new-instance v2, Lcom/android/settings/notification/ZenAccessSettings$1;

    invoke-direct {v2, p0, v5, v6}, Lcom/android/settings/notification/ZenAccessSettings$1;-><init>(Lcom/android/settings/notification/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    invoke-virtual {v0, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 166
    goto :goto_1

    .line 167
    :cond_3
    return-void
.end method

.method private static setAccess(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .line 195
    invoke-static {p2, p1, p0}, Lcom/android/settings/notification/ZenAccessSettings;->logSpecialPermissionChange(ZLjava/lang/String;Landroid/content/Context;)V

    .line 196
    new-instance v0, Lcom/android/settings/notification/ZenAccessSettings$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/notification/ZenAccessSettings$2;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 70
    const/16 v0, 0xb4

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 90
    const v0, 0x7f1500ca    # @xml/zen_access_settings 'res/xml/zen_access_settings.xml'

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/notification/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    .line 78
    iget-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    .line 79
    iget-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    .line 80
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onPause()V

    .line 112
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenAccessSettings;->mObserver:Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 95
    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onResume()V

    .line 96
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/notification/ZenAccessSettings;->reloadList()V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_policy_access_packages"

    .line 99
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings;->mObserver:Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

    .line 98
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    .line 102
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings;->mObserver:Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

    .line 101
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 105
    :cond_0
    const v0, 0x7f12055c    # @string/disabled_low_ram_device 'This feature is not available on this device'

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenAccessSettings;->setEmptyText(I)V

    .line 107
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    const p1, 0x7f12113a    # @string/zen_access_empty_text 'No installed apps have requested Do Not Disturb access'

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenAccessSettings;->setEmptyText(I)V

    .line 86
    return-void
.end method
