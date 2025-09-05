.class public Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageSummaryDonutPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference$BoldLinkSpan;
    }
.end annotation


# instance fields
.field private mPercent:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mPercent:D

    .line 59
    const p1, 0x7f0d015a    # @layout/storage_summary_donut 'res/layout/storage_summary_donut.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setLayoutResource(I)V

    .line 60
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setEnabled(Z)V

    .line 61
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 74
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 76
    const v0, 0x7f0a011f    # @id/donut

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/DonutView;

    .line 77
    if-eqz v0, :cond_0

    .line 78
    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mPercent:D

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/DonutView;->setPercentage(D)V

    .line 81
    :cond_0
    const v0, 0x7f0a0107    # @id/deletion_helper_button

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 82
    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 89
    if-eqz p1, :cond_0

    const v0, 0x7f0a0107    # @id/deletion_helper_button

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 91
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/16 v1, 0x348

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 93
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setPercent(JJ)V
    .locals 2

    .line 64
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    long-to-double p1, p1

    long-to-double p3, p3

    div-double/2addr p1, p3

    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mPercent:D

    .line 69
    return-void
.end method
