.class public Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MyDeviceInfoFragment.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 230
    sget-object v0, Lcom/android/settings/deviceinfo/aboutphone/-$$Lambda$MyDeviceInfoFragment$pzCelMuIMGm16asu34w_Ge8IYsk;->INSTANCE:Lcom/android/settings/deviceinfo/aboutphone/-$$Lambda$MyDeviceInfoFragment$pzCelMuIMGm16asu34w_Ge8IYsk;

    sput-object v0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 236
    new-instance v0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$1;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 75
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    new-instance v1, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v1, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setLocalBluetoothManager(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 127
    invoke-virtual {v1, p2}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setHost(Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;)V

    .line 128
    if-eqz p3, :cond_0

    .line 129
    invoke-virtual {p3, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 131
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lcust/settings/deviceinfo/APRPreferenceController;

    invoke-direct {v1, p0}, Lcust/settings/deviceinfo/APRPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lcom/android/settings/deviceinfo/IpAddressPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/deviceinfo/IpAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lcom/android/settings/deviceinfo/BluetoothAddressPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/deviceinfo/BluetoothAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/android/settings/deviceinfo/SafetyInfoPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/SafetyInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Lcom/android/settings/deviceinfo/ManualPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/ManualPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v1, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;

    invoke-direct {v1, p2, p0}, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;-><init>(Landroid/app/Fragment;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lcom/android/settings/deviceinfo/FccEquipmentIdPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/FccEquipmentIdPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance p1, Lcom/mediatek/settings/deviceinfo/BasebandVersion2PreferenceController;

    invoke-direct {p1, p0}, Lcom/mediatek/settings/deviceinfo/BasebandVersion2PreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance p1, Lcom/mediatek/settings/deviceinfo/CustomizeBuildVersionPreferenceController;

    invoke-direct {p1, p0}, Lcom/mediatek/settings/deviceinfo/CustomizeBuildVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance p1, Lcom/mediatek/settings/deviceinfo/CustomizeSystemUpdatePreferenceController;

    .line 153
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/mediatek/settings/deviceinfo/CustomizeSystemUpdatePreferenceController;-><init>(Landroid/content/Context;Landroid/os/UserManager;)V

    .line 152
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance p1, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;

    invoke-direct {p1, p0}, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance p1, Lcust/settings/deviceinfo/CameraFirmwareVerPreferenceController;

    invoke-direct {p1, p0}, Lcust/settings/deviceinfo/CameraFirmwareVerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    return-object v0
.end method

.method private initHeader()V
    .locals 5

    .line 172
    nop

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "my_device_info_header"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    .line 174
    const v1, 0x7f0a0136    # @id/entity_header

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 177
    nop

    .line 178
    invoke-static {v1, p0, v0}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 180
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 184
    const-string v4, "icon_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 185
    if-nez v2, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 188
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 189
    iget-object v4, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    .line 190
    nop

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 190
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    .line 194
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 195
    return-void
.end method

.method static synthetic lambda$static$0(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 0

    .line 231
    new-instance p0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$SummaryProvider;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$SummaryProvider;-><init>(Lcom/android/settings/dashboard/SummaryLoader;)V

    return-object p0
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

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 110
    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    .line 89
    const v0, 0x7f1206d9    # @string/help_uri_about ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 100
    const-string v0, "MyDeviceInfoFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 84
    const/16 v0, 0x28

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 105
    const v0, 0x7f15006e    # @xml/my_device_info 'res/xml/my_device_info.xml'

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 162
    const-class v0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    .line 164
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 94
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->initHeader()V

    .line 96
    return-void
.end method

.method public onSetDeviceNameConfirm()V
    .locals 1

    .line 203
    const-class v0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;

    .line 204
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->confirmDeviceName()V

    .line 205
    return-void
.end method

.method public showDeviceNameWarningDialog(Ljava/lang/String;)V
    .locals 0

    .line 199
    invoke-static {p0}, Lcom/android/settings/deviceinfo/aboutphone/DeviceNameWarningDialog;->show(Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;)V

    .line 200
    return-void
.end method
