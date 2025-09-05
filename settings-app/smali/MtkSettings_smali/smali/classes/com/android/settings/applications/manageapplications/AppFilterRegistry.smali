.class public Lcom/android/settings/applications/manageapplications/AppFilterRegistry;
.super Ljava/lang/Object;
.source "AppFilterRegistry.java"


# static fields
.field private static sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;


# instance fields
.field private final mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/settings/applications/manageapplications/AppFilterItem;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 84
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settings/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v4, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    const/4 v3, 0x0

    const v4, 0x7f120725    # @string/high_power_filter_on 'Not optimized'

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    .line 92
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v4, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    const/4 v3, 0x1

    const v4, 0x7f120649    # @string/filter_all_apps 'All apps'

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    .line 106
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v3, 0x3

    const v5, 0x7f120650    # @string/filter_enabled_apps 'Installed apps'

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v3, 0x5

    const v5, 0x7f12064b    # @string/filter_apps_disabled 'Disabled apps'

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v3, 0x4

    const v5, 0x7f120652    # @string/filter_instant_apps 'Instant apps'

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    .line 124
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_RECENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v3, 0x6

    const v5, 0x7f120cc8    # @string/sort_order_recent_notification 'Most recent'

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    .line 130
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_FREQUENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v3, 0x7

    const v5, 0x7f120cc7    # @string/sort_order_frequent_notification 'Most frequent'

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    .line 136
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v3, 0x8

    const v5, 0x7f12065a    # @string/filter_personal_apps 'Personal'

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    .line 142
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v3, 0x9

    const v5, 0x7f12065b    # @string/filter_work_apps 'Work'

    invoke-direct {v1, v2, v3, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    .line 148
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    .line 154
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v3, 0xb

    const v4, 0x7f120659    # @string/filter_overlay_apps 'Apps with permission'

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v3

    .line 160
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const v3, 0x7f12065c    # @string/filter_write_settings_apps 'Can modify system settings'

    const/16 v4, 0xc

    invoke-direct {v1, v2, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, v4

    .line 166
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v4, 0xd

    const v5, 0x7f120651    # @string/filter_install_sources_apps 'Can install other apps'

    invoke-direct {v1, v2, v4, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 172
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/applications/AppStateDirectoryAccessBridge;->FILTER_APP_HAS_DIRECTORY_ACCESS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v4, 0xe

    invoke-direct {v1, v2, v4, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 177
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->FILTER_CHANGE_WIFI_STATE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v4, 0xf

    invoke-direct {v1, v2, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 181
    return-void
.end method

.method public static getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;
    .locals 1

    .line 184
    sget-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    invoke-direct {v0}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;-><init>()V

    sput-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    .line 187
    :cond_0
    sget-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getDefaultFilterType(I)I
    .locals 1

    .line 192
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 210
    const/4 p1, 0x2

    return p1

    .line 206
    :pswitch_0
    const/16 p1, 0xf

    return p1

    .line 204
    :pswitch_1
    const/16 p1, 0xe

    return p1

    .line 202
    :pswitch_2
    const/16 p1, 0xd

    return p1

    .line 200
    :pswitch_3
    const/16 p1, 0xc

    return p1

    .line 198
    :pswitch_4
    const/16 p1, 0xb

    return p1

    .line 196
    :pswitch_5
    const/4 p1, 0x0

    return p1

    .line 194
    :pswitch_6
    const/16 p1, 0xa

    return p1

    .line 208
    :cond_0
    const/4 p1, 0x6

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
