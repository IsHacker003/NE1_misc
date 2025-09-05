.class public Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "EnterpriseInstalledPackagesPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mAsync:Z

.field private final mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 37
    iput-boolean p2, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mAsync:Z

    .line 38
    return-void
.end method

.method static synthetic lambda$isAvailable$1([Ljava/lang/Boolean;I)V
    .locals 1

    .line 72
    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v0

    return-void
.end method

.method public static synthetic lambda$updateState$0(Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;Landroid/support/v7/preference/Preference;I)V
    .locals 6

    .line 45
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 46
    nop

    .line 54
    move v0, v1

    goto :goto_0

    .line 48
    :cond_0
    nop

    .line 49
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10001a    # @plurals/enterprise_privacy_number_packages_lower_bound

    new-array v4, v0, [Ljava/lang/Object;

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 49
    invoke-virtual {v2, v3, p2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 54
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 55
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "number_enterprise_installed_packages"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    .line 60
    iget-boolean v0, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mAsync:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 64
    return v1

    .line 70
    :cond_0
    new-array v0, v1, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 71
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    new-instance v3, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseInstalledPackagesPreferenceController$cz4T-BR7YJ9IEY1tdj7V5o_-Yuo;

    invoke-direct {v3, v0}, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseInstalledPackagesPreferenceController$cz4T-BR7YJ9IEY1tdj7V5o_-Yuo;-><init>([Ljava/lang/Boolean;)V

    invoke-interface {v1, v2, v3}, Lcom/android/settings/applications/ApplicationFeatureProvider;->calculateNumberOfPolicyInstalledApps(ZLcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V

    .line 73
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    new-instance v1, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseInstalledPackagesPreferenceController$ywnQ5T98AEytxQMBHl3WTR7fuAo;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseInstalledPackagesPreferenceController$ywnQ5T98AEytxQMBHl3WTR7fuAo;-><init>(Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;Landroid/support/v7/preference/Preference;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/settings/applications/ApplicationFeatureProvider;->calculateNumberOfPolicyInstalledApps(ZLcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V

    .line 56
    return-void
.end method
