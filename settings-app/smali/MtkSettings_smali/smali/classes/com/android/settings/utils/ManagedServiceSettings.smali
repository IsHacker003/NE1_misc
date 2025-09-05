.class public abstract Lcom/android/settings/utils/ManagedServiceSettings;
.super Lcom/android/settings/notification/EmptyTextSettings;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/utils/ManagedServiceSettings$Config;,
        Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field protected mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mServiceListing:Lcom/android/settingslib/applications/ServiceListing;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/settings/notification/EmptyTextSettings;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/utils/ManagedServiceSettings;)Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-object p0
.end method

.method private getCurrentUser(I)I
    .locals 1

    .line 153
    const/16 v0, -0x2710

    if-eq p1, v0, :cond_0

    .line 154
    return p1

    .line 156
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    return p1
.end method

.method public static synthetic lambda$6gJSYmD-m4iGVFUdlUroaoAptMw(Lcom/android/settings/utils/ManagedServiceSettings;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings;->updateList(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$updateList$0(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 143
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/utils/ManagedServiceSettings;->setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private updateList(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 109
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 113
    new-instance v2, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v3, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v2, v3}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-interface {p1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 115
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v4, 0x0

    .line 118
    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 119
    invoke-direct {p0, v0}, Lcom/android/settings/utils/ManagedServiceSettings;->getCurrentUser(I)I

    move-result v8

    .line 118
    invoke-virtual {v6, v7, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 119
    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    nop

    .line 124
    move-object v4, v6

    goto :goto_1

    .line 120
    :catch_0
    move-exception v6

    .line 122
    const-string v7, "ManagedServiceSettings"

    const-string v8, "can\'t find package name"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    :goto_1
    iget-object v6, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 125
    new-instance v7, Lcom/android/settings/widget/AppSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v7, v5}, Landroid/support/v14/preference/SwitchPreference;->setPersistent(Z)V

    .line 127
    iget-object v5, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 128
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 127
    invoke-virtual {v5, v2, v8, v9}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/support/v14/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 129
    if-eqz v4, :cond_0

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 130
    invoke-virtual {v7, v4}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 133
    :cond_0
    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    :goto_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v3}, Lcom/android/settings/utils/ManagedServiceSettings;->isServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v4

    invoke-virtual {v7, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 137
    const/16 v4, -0x2710

    if-eq v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 138
    invoke-virtual {v4, v2, v0}, Landroid/app/admin/DevicePolicyManager;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    const v2, 0x7f121125    # @string/work_profile_notification_access_blocked_summary 'Access to work profile notifications is blocked'

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 142
    :cond_1
    new-instance v2, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$qzumG4qfCDX22E2-mvpKDzSZyck;

    invoke-direct {v2, p0, v3, v6}, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$qzumG4qfCDX22E2-mvpKDzSZyck;-><init>(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 148
    goto/16 :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->highlightPreferenceIfNeeded()V

    .line 150
    return-void
.end method


# virtual methods
.method protected enable(Landroid/content/ComponentName;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/applications/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    .line 182
    return-void
.end method

.method protected abstract getConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
.end method

.method protected isServiceEnabled(Landroid/content/ComponentName;)Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/applications/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/notification/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    .line 70
    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 71
    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 72
    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 73
    new-instance p1, Lcom/android/settingslib/applications/ServiceListing$Builder;

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 74
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setPermission(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    .line 76
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setNoun(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    .line 77
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setSetting(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 78
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setTag(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/android/settingslib/applications/ServiceListing$Builder;->build()Lcom/android/settingslib/applications/ServiceListing;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    .line 80
    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    new-instance v0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$6gJSYmD-m4iGVFUdlUroaoAptMw;

    invoke-direct {v0, p0}, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$6gJSYmD-m4iGVFUdlUroaoAptMw;-><init>(Lcom/android/settings/utils/ManagedServiceSettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing;->addCallback(Lcom/android/settingslib/applications/ServiceListing$Callback;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 82
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 103
    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onResume()V

    .line 93
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ServiceListing;->reload()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    goto :goto_0

    .line 97
    :cond_0
    const v0, 0x7f12055c    # @string/disabled_low_ram_device 'This feature is not available on this device'

    invoke-virtual {p0, v0}, Lcom/android/settings/utils/ManagedServiceSettings;->setEmptyText(I)V

    .line 99
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget p1, p1, Lcom/android/settings/utils/ManagedServiceSettings$Config;->emptyText:I

    invoke-virtual {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings;->setEmptyText(I)V

    .line 88
    return-void
.end method

.method protected setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 2

    .line 164
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 166
    iget-object p2, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {p2, p1, v1}, Lcom/android/settingslib/applications/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    .line 167
    return v0

    .line 169
    :cond_0
    iget-object p3, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {p3, p1}, Lcom/android/settingslib/applications/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 170
    return v0

    .line 173
    :cond_1
    new-instance p3, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {p3}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>()V

    .line 174
    invoke-virtual {p3, p1, p2, p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;Landroid/app/Fragment;)Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    move-result-object p1

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "dialog"

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 176
    return v1
.end method
