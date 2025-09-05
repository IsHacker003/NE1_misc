.class public Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BackgroundActivityPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final KEY_BACKGROUND_ACTIVITY:Ljava/lang/String; = "background_activity"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

.field private mTargetPackage:Ljava/lang/String;

.field private final mUid:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;)V
    .locals 6

    .line 59
    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;)V

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object p5, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    .line 67
    const-string p5, "user"

    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/UserManager;

    iput-object p5, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 68
    const-string p5, "device_policy"

    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/admin/DevicePolicyManager;

    iput-object p5, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 69
    const-string p5, "appops"

    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/AppOpsManager;

    iput-object p5, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 70
    iput p3, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    .line 71
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 72
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 74
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 97
    const-string v0, "background_activity"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    .line 102
    const-string v0, "background_activity"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    iget v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 104
    invoke-virtual {p1, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    .line 105
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->showDialog(Z)V

    .line 109
    :cond_1
    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method showDialog(Z)V
    .locals 2

    .line 131
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;-><init>()V

    iget v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    .line 132
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setUid(I)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->build()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object v0

    .line 135
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 136
    new-instance p1, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    invoke-direct {p1, v1, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;-><init>(ILcom/android/settings/fuelgauge/batterytip/AppInfo;)V

    goto :goto_0

    .line 137
    :cond_0
    new-instance p1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-direct {p1, v1, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;-><init>(ILcom/android/settings/fuelgauge/batterytip/AppInfo;)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 140
    invoke-virtual {v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v0

    .line 139
    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->newInstance(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;I)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "BgActivityPrefContr"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 79
    const/16 v3, 0x46

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v1

    .line 81
    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 82
    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->isProfileOrDeviceOwner(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 83
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 87
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;)V

    .line 88
    return-void
.end method

.method public updateSummary(Landroid/support/v7/preference/Preference;)V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const v0, 0x7f1201b0    # @string/background_activity_summary_whitelisted 'Background usage can’t be restricted'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 115
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    iget v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 120
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 121
    const v0, 0x7f1201af    # @string/background_activity_summary_disabled 'App not allowed to run in background'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 123
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 124
    :goto_0
    if-eqz v1, :cond_3

    const v0, 0x7f120b40    # @string/restricted_true_label 'Restricted'

    goto :goto_1

    .line 125
    :cond_3
    const v0, 0x7f120b3f    # @string/restricted_false_label 'App can use battery in background'

    .line 124
    :goto_1
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 127
    :goto_2
    return-void
.end method
