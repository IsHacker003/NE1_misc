.class public Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AutomaticStorageManagerSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchController:Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings$1;

    invoke-direct {v0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
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

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    new-instance v1, Lcom/android/settings/deletionhelper/AutomaticStorageManagerDescriptionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerDescriptionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-object v0
.end method

.method private static daysValueToIndex(I[Ljava/lang/String;)I
    .locals 2

    .line 147
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 148
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 149
    if-ne p0, v1, :cond_0

    .line 150
    return v0

    .line 147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private initializeDaysToRetainPreference()V
    .locals 3

    .line 67
    const-string v0, "days"

    invoke-virtual {p0, v0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

    .line 68
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 71
    const-string v1, "automatic_storage_manager_days_to_retain"

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getDefaultStorageManagerDaysToRetain(Landroid/content/res/Resources;)I

    move-result v2

    .line 72
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 76
    nop

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030012    # @array/automatic_storage_management_days_values

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {v0, v1}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->daysValueToIndex(I[Ljava/lang/String;)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private initializeSwitchBar()V
    .locals 7

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 83
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 84
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v1, 0x7f1201a3    # @string/automatic_storage_manager_master_switch_title 'Use Storage manager'

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 87
    new-instance v0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v4, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v5, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/support/v7/preference/Preference;Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchController:Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;

    .line 94
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 114
    invoke-static {p1}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    .line 143
    const v0, 0x7f1206ea    # @string/help_uri_storage ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 138
    const/16 v0, 0x1ca

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 109
    const v0, 0x7f150021    # @xml/automatic_storage_management_settings 'res/xml/automatic_storage_management_settings.xml'

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->initializeDaysToRetainPreference()V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->initializeSwitchBar()V

    .line 63
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroyView()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchController:Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;

    invoke-virtual {v0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->tearDown()V

    .line 123
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 127
    const-string v0, "days"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    nop

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "automatic_storage_manager_days_to_retain"

    check-cast p2, Ljava/lang/String;

    .line 131
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 128
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isStorageManagerEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    .line 100
    return-void
.end method
