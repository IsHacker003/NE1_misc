.class public Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BuildNumberPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field private mDevHitCountdown:I

.field private mDevHitToast:Landroid/widget/Toast;

.field private mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

.field private final mFragment:Landroid/app/Fragment;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mProcessingLastDevHit:Z

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 77
    iput-object p2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mActivity:Landroid/app/Activity;

    .line 78
    iput-object p3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 79
    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    .line 80
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 81
    if-eqz p4, :cond_0

    .line 82
    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getDeviceInfoSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    .line 85
    return-void
.end method

.method private enableDevelopmentSettings()V
    .locals 3

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    .line 249
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    .line 250
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120c4d    # @string/show_dev_on 'You are now a developer!'

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    .line 256
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4

    .line 89
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 90
    const-string v0, "build_number"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 91
    if-eqz p1, :cond_0

    .line 94
    const v0, 0x7f120528    # @string/device_info_default 'Unknown'

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcust/settings/deviceinfo/CustPreferenceUtils;->getCustBuildNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 102
    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-interface {v2, p1, v1, v3}, Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;->updateSummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 109
    :cond_0
    :goto_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 113
    const-string v0, "build_number"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9

    .line 134
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "build_number"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 135
    return v0

    .line 137
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    return v0

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    const/16 v1, 0x34f

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result p1

    if-nez p1, :cond_2

    .line 142
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v3, v0, [Landroid/util/Pair;

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 144
    return v0

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 149
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v3, v0, [Landroid/util/Pair;

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 151
    return v0

    .line 154
    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    const-string v2, "no_debugging_features"

    invoke-virtual {p1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 155
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 157
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->getDeviceOwnerComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    .line 158
    if-eqz p1, :cond_4

    .line 159
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 160
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v2, "com.android.settings.action.REQUEST_DEBUG_FEATURES"

    .line 161
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 162
    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 164
    if-eqz v2, :cond_4

    .line 165
    iget-object v1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 166
    return v0

    .line 170
    :cond_4
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedBySystem:Z

    if-nez p1, :cond_5

    .line 172
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 175
    :cond_5
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v3, v0, [Landroid/util/Pair;

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 177
    return v0

    .line 180
    :cond_6
    iget p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    const/16 v2, 0x350

    const/4 v3, 0x1

    if-lez p1, :cond_b

    .line 181
    iget p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    .line 182
    iget p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    if-nez p1, :cond_8

    .line 184
    iget p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    .line 185
    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-direct {p1, v4, v5}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 187
    const/16 v4, 0x64

    iget-object v5, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f120e5e    # @string/unlock_set_unlock_launch_picker_title 'Screen lock'

    .line 189
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-virtual {p1, v4, v5}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    .line 190
    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    if-nez p1, :cond_7

    .line 191
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->enableDevelopmentSettings()V

    .line 193
    :cond_7
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v5, v3, [Landroid/util/Pair;

    .line 195
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 196
    iget-boolean v7, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    xor-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 195
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    aput-object v6, v5, v0

    .line 193
    invoke-virtual {p1, v4, v1, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 197
    goto :goto_0

    :cond_8
    iget p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    if-lez p1, :cond_a

    iget p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    const/4 v4, 0x5

    if-ge p1, v4, :cond_a

    .line 199
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    if-eqz p1, :cond_9

    .line 200
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 202
    :cond_9
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100036    # @plurals/show_dev_countdown

    iget v6, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    new-array v7, v3, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    .line 205
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    .line 203
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-static {p1, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    .line 207
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 209
    :cond_a
    :goto_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v5, v3, [Landroid/util/Pair;

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 211
    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v5, v0

    .line 209
    invoke-virtual {p1, v4, v1, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto :goto_1

    .line 213
    :cond_b
    iget p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    if-gez p1, :cond_d

    .line 214
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    if-eqz p1, :cond_c

    .line 215
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 217
    :cond_c
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120c4c    # @string/show_dev_already 'No need, you are already a developer.'

    invoke-static {p1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    .line 219
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 220
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    new-array v5, v3, [Landroid/util/Pair;

    .line 222
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 223
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 222
    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v5, v0

    .line 220
    invoke-virtual {p1, v4, v1, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 225
    :cond_d
    :goto_1
    return v3
.end method

.method public isAvailable()Z
    .locals 1

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 234
    const/4 p3, 0x0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    .line 235
    return p3

    .line 237
    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->enableDevelopmentSettings()V

    .line 240
    :cond_1
    iput-boolean p3, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mProcessingLastDevHit:Z

    .line 241
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_debugging_features"

    .line 124
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 123
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 125
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_debugging_features"

    .line 126
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 125
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDebuggingFeaturesDisallowedBySystem:Z

    .line 127
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    iput v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitCountdown:I

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->mDevHitToast:Landroid/widget/Toast;

    .line 130
    return-void
.end method
