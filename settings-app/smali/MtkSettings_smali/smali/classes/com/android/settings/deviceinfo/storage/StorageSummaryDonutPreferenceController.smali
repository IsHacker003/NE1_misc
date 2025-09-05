.class public Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "StorageSummaryDonutPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

.field private mTotalBytes:J

.field private mUsedBytes:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 47
    const-string v0, "pref_summary"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    .line 48
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setEnabled(Z)V

    .line 49
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "pref_summary"

    return-object v0
.end method

.method public invalidateData()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mSummary:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 71
    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public updateBytes(JJ)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mUsedBytes:J

    .line 90
    iput-wide p3, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mTotalBytes:J

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->invalidateData()V

    .line 92
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 7

    .line 53
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 54
    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    .line 55
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mUsedBytes:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mContext:Landroid/content/Context;

    .line 58
    const v2, 0x7f120d46    # @string/storage_size_large_alternate '^1<small> <font size="20">^2</font></small>'

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v0, v2, v4

    .line 57
    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mTotalBytes:J

    .line 61
    invoke-static {v2, v5, v6}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 60
    const v2, 0x7f120d52    # @string/storage_volume_total 'Used of %1$s'

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 62
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mUsedBytes:J

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreferenceController;->mTotalBytes:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setPercent(JJ)V

    .line 63
    invoke-virtual {p1, v4}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setEnabled(Z)V

    .line 64
    return-void
.end method
