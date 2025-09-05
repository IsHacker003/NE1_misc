.class public Lcom/android/settings/applications/appinfo/PictureInPictureDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "PictureInPictureDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mSwitchPref:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method static getEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1

    .line 104
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 105
    const/16 v0, 0x43

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getPreferenceSummary(Landroid/content/Context;ILjava/lang/String;)I
    .locals 0

    .line 113
    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    .line 115
    if-eqz p0, :cond_0

    const p0, 0x7f120144    # @string/app_permission_summary_allowed 'Allowed'

    goto :goto_0

    .line 116
    :cond_0
    const p0, 0x7f120145    # @string/app_permission_summary_not_allowed 'Not allowed'

    .line 115
    :goto_0
    return p0
.end method

.method static setEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 1

    .line 94
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 95
    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    .line 96
    :goto_0
    const/16 v0, 0x43

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 97
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 0

    .line 80
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 85
    const/16 v0, 0x32c

    return v0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 121
    if-eqz p1, :cond_0

    .line 122
    const/16 p1, 0x32d

    goto :goto_0

    .line 123
    :cond_0
    const/16 p1, 0x32e

    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const p1, 0x7f15007c    # @xml/picture_in_picture_permissions_details 'res/xml/picture_in_picture_permissions_details.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->addPreferencesFromResource(I)V

    .line 50
    const-string p1, "app_ops_settings_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    .line 53
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const v0, 0x7f120a25    # @string/picture_in_picture_app_detail_switch 'Allow picture-in-picture'

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 56
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    .line 62
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mPackageName:Ljava/lang/String;

    .line 64
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 63
    invoke-static {p1, v0, v1, p2}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->setEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 65
    const/4 p1, 0x1

    return p1

    .line 67
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected refreshUi()Z
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 75
    const/4 v0, 0x1

    return v0
.end method
