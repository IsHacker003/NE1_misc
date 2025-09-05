.class public Lcom/android/settings/deviceinfo/DeviceInfoSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/DeviceInfoSettings$SummaryProvider;
    }
.end annotation


# static fields
.field static final NON_SIM_PREFERENCES_COUNT:I = 0x2

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field static final SIM_PREFERENCES_COUNT:I = 0x3

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings$1;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 162
    new-instance v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings$2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Landroid/app/Fragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    new-instance v1, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Lcust/settings/deviceinfo/APRPreferenceController;

    invoke-direct {v1, p0}, Lcust/settings/deviceinfo/APRPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/android/settings/deviceinfo/IpAddressPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/deviceinfo/IpAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v1, Lcom/android/settings/deviceinfo/BluetoothAddressPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/deviceinfo/BluetoothAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/RegulatoryInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Lcom/android/settings/deviceinfo/SafetyInfoPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/SafetyInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Lcom/android/settings/deviceinfo/ManualPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/ManualPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;

    invoke-direct {v1, p2, p0}, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;-><init>(Landroid/app/Fragment;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lcom/android/settings/deviceinfo/FccEquipmentIdPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/FccEquipmentIdPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance p1, Lcust/settings/deviceinfo/CertificationPreferenceController;

    invoke-direct {p1, p0}, Lcust/settings/deviceinfo/CertificationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
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

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 102
    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    .line 68
    const v0, 0x7f1206d9    # @string/help_uri_about ''

    return v0
.end method

.method public getInitialExpandedChildCount()I
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 75
    nop

    .line 76
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    .line 75
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "DeviceInfoSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 63
    const/16 v0, 0x28

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 97
    const v0, 0x7f15004b    # @xml/device_info_settings 'res/xml/device_info_settings.xml'

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 82
    const-class v0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    .line 84
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 88
    return-void
.end method
