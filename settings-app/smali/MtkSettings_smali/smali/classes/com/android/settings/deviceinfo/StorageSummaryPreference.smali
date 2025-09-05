.class public Lcom/android/settings/deviceinfo/StorageSummaryPreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageSummaryPreference.java"


# instance fields
.field private mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    .line 36
    const p1, 0x7f0d0159    # @layout/storage_summary 'res/layout/storage_summary.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setLayoutResource(I)V

    .line 37
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setEnabled(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    .line 47
    const v0, 0x102000d    # @android:id/progress

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 48
    iget v1, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 50
    iget v1, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 51
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setScaleY(F)V

    goto :goto_0

    .line 53
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 56
    :goto_0
    const v0, 0x1020010    # @android:id/summary

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    const-string v1, "#8a000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 60
    return-void
.end method

.method public setPercent(JJ)V
    .locals 2

    .line 41
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    long-to-int p3, v0

    .line 42
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 p2, 0x64

    .line 41
    invoke-static {p3, p1, p2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    .line 43
    return-void
.end method
