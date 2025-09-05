.class public abstract Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AdminActionPreferenceControllerBase.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field protected final mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract getAdminActionTimestamp()Ljava/util/Date;
.end method

.method public isAvailable()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;->getAdminActionTimestamp()Ljava/util/Date;

    move-result-object v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;->mContext:Landroid/content/Context;

    const v1, 0x7f1205ff    # @string/enterprise_privacy_none 'None'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const/16 v0, 0x11

    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
