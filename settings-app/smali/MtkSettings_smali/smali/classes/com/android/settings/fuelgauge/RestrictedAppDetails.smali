.class public Lcom/android/settings/fuelgauge/RestrictedAppDetails;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "RestrictedAppDetails.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;


# static fields
.field static final EXTRA_APP_INFO_LIST:Ljava/lang/String; = "app_info_list"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mAppInfos:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

.field mIconDrawableFactory:Landroid/util/IconDrawableFactory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPackageManager:Landroid/content/pm/PackageManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mRestrictedAppListGroup:Landroid/support/v7/preference/PreferenceGroup;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 70
    new-instance v0, Lcom/android/settingslib/widget/FooterPreferenceMixin;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;-><init>(Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    .line 70
    return-void
.end method

.method public static synthetic lambda$refreshUi$0(Lcom/android/settings/fuelgauge/RestrictedAppDetails;Lcom/android/settings/fuelgauge/batterytip/AppInfo;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 153
    check-cast p3, Ljava/lang/Boolean;

    .line 154
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->createDialogFragment(Lcom/android/settings/fuelgauge/batterytip/AppInfo;Z)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    move-result-object p1

    .line 155
    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p3

    const-string v0, "RestrictedAppDetails"

    invoke-virtual {p1, p3, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 158
    return p2
.end method

.method public static startRestrictedAppDetails(Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/core/InstrumentedPreferenceFragment;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v1, "app_info_list"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 78
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/fuelgauge/RestrictedAppDetails;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 80
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 81
    const v0, 0x7f120b3e    # @string/restricted_app_title 'Restricted apps'

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 84
    return-void
.end method


# virtual methods
.method createDialogFragment(Lcom/android/settings/fuelgauge/batterytip/AppInfo;Z)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 186
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 187
    new-instance p2, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-direct {p2, v0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;-><init>(ILcom/android/settings/fuelgauge/batterytip/AppInfo;)V

    goto :goto_0

    .line 188
    :cond_0
    new-instance p2, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    invoke-direct {p2, v0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;-><init>(ILcom/android/settings/fuelgauge/batterytip/AppInfo;)V

    .line 190
    :goto_0
    nop

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getMetricsCategory()I

    move-result p1

    .line 190
    invoke-static {p2, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->newInstance(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;I)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    move-result-object p1

    return-object p1
.end method

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

    .line 120
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    .line 130
    const v0, 0x7f1206e8    # @string/help_uri_restricted_apps ''

    return v0
.end method

.method getKeyFromAppInfo(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 110
    const-string v0, "RestrictedAppDetails"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 125
    const/16 v0, 0x505

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 115
    const v0, 0x7f15008e    # @xml/restricted_apps_detail 'res/xml/restricted_apps_detail.xml'

    return v0
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 2

    .line 170
    instance-of v0, p1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    .line 171
    if-eqz v0, :cond_0

    .line 172
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->getRestrictAppList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    goto :goto_0

    .line 174
    :cond_0
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->getUnrestrictAppInfo()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object p1

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mRestrictedAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getKeyFromAppInfo(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/CheckBoxPreference;

    .line 179
    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 182
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    const v1, 0x7f120b3d    # @string/restricted_app_detail_footer 'These apps have been using battery in the background. Restricted apps may not work properly and noti ...'

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 93
    const-string v0, "restrict_app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mRestrictedAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "app_info_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mAppInfos:Ljava/util/List;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 96
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 97
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->refreshUi()V

    .line 100
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method refreshUi()V
    .locals 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mRestrictedAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mAppInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 139
    new-instance v4, Lcom/android/settings/widget/AppCheckBoxPreference;

    invoke-direct {v4, v0}, Lcom/android/settings/widget/AppCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 140
    iget-object v5, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mAppInfos:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 142
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    iget v8, v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    .line 143
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 142
    invoke-virtual {v6, v7, v2, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 144
    iget-object v7, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v8, v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    iget-object v9, v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    .line 145
    invoke-virtual {v7, v8, v9}, Lcom/android/settings/fuelgauge/BatteryUtils;->isForceAppStandbyEnabled(ILjava/lang/String;)Z

    move-result v7

    .line 144
    invoke-virtual {v4, v7}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 146
    iget-object v7, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v6, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    iget v9, v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    .line 150
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 148
    invoke-static {v6, v7, v8, v9}, Lcom/android/settings/Utils;->getBadgedIcon(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 147
    invoke-virtual {v4, v6}, Landroid/support/v7/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getKeyFromAppInfo(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 152
    new-instance v6, Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$9OOxuAylZQQH-NDtRgh0ZoFLi_8;

    invoke-direct {v6, p0, v5}, Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$9OOxuAylZQQH-NDtRgh0ZoFLi_8;-><init>(Lcom/android/settings/fuelgauge/RestrictedAppDetails;Lcom/android/settings/fuelgauge/batterytip/AppInfo;)V

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    iget-object v5, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mRestrictedAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_1

    .line 161
    :catch_0
    move-exception v4

    .line 162
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 138
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method
