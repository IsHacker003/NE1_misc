.class public Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "EnterpriseSetDefaultAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private final mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 40
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/UserFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    .line 41
    return-void
.end method

.method private getNumberOfEnterpriseSetDefaultApps()I
    .locals 10

    .line 61
    nop

    .line 62
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/users/UserFeatureProvider;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 63
    invoke-static {}, Lcom/android/settings/applications/EnterpriseDefaultApps;->values()[Lcom/android/settings/applications/EnterpriseDefaultApps;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v7, v4, v2

    .line 64
    iget-object v8, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 65
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 66
    invoke-virtual {v7}, Lcom/android/settings/applications/EnterpriseDefaultApps;->getIntents()[Landroid/content/Intent;

    move-result-object v7

    .line 65
    invoke-interface {v8, v9, v7}, Lcom/android/settings/applications/ApplicationFeatureProvider;->findPersistentPreferredActivities(I[Landroid/content/Intent;)Ljava/util/List;

    move-result-object v7

    .line 66
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 68
    :cond_0
    nop

    .line 62
    move v2, v6

    goto :goto_0

    .line 69
    :cond_1
    return v2
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "number_enterprise_set_default_apps"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->getNumberOfEnterpriseSetDefaultApps()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5

    .line 45
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->getNumberOfEnterpriseSetDefaultApps()I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 46
    const v3, 0x7f100019    # @plurals/enterprise_privacy_number_packages

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
