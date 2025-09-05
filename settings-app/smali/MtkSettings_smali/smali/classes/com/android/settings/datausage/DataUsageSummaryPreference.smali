.class public Lcom/android/settings/datausage/DataUsageSummaryPreference;
.super Landroid/support/v7/preference/Preference;
.source "DataUsageSummaryPreference.java"


# static fields
.field private static final MILLIS_IN_A_DAY:J

.field static final SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final WARNING_AGE:J


# instance fields
.field private mCarrierName:Ljava/lang/CharSequence;

.field private mChartEnabled:Z

.field private mCycleEndTimeMs:J

.field private mDataplanSize:J

.field private mDataplanUse:J

.field private mEndLabel:Ljava/lang/CharSequence;

.field private mHasMobileData:Z

.field private mLaunchIntent:Landroid/content/Intent;

.field private mLimitInfoText:Ljava/lang/String;

.field private mNumPlans:I

.field private mProgress:F

.field private mSnapshotTimeMs:J

.field private mStartLabel:Ljava/lang/CharSequence;

.field private mUsagePeriod:Ljava/lang/String;

.field private mWifiMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->MILLIS_IN_A_DAY:J

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->WARNING_AGE:J

    .line 55
    const-string v0, "sans-serif-medium"

    .line 56
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    .line 97
    const p1, 0x7f0d007d    # @layout/data_usage_summary_preference 'res/layout/data_usage_summary_preference.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLayoutResource(I)V

    .line 98
    return-void
.end method

.method private calculateTruncatedUpdateAge()J
    .locals 7

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSnapshotTimeMs:J

    sub-long/2addr v0, v2

    .line 317
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-ltz v2, :cond_0

    .line 318
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    div-long/2addr v0, v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0

    .line 319
    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-ltz v2, :cond_1

    .line 320
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    div-long/2addr v0, v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0

    .line 321
    :cond_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-ltz v2, :cond_2

    .line 322
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    div-long/2addr v0, v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0

    .line 324
    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/android/settings/datausage/DataUsageSummaryPreference;Landroid/view/View;)V
    .locals 0

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->launchWifiDataUsage(Landroid/content/Context;)V

    .line 181
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/android/settings/datausage/DataUsageSummaryPreference;Landroid/view/View;)V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method private static launchWifiDataUsage(Landroid/content/Context;)V
    .locals 3

    .line 203
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 204
    const-string v1, "network_template"

    .line 205
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 206
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/datausage/DataUsageList;

    .line 208
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 209
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 210
    const v1, 0x7f121009    # @string/wifi_data_usage 'Wi‑Fi data usage'

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    .line 211
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 212
    return-void
.end method

.method private setCarrierInfoTextStyle(Landroid/widget/TextView;ILandroid/graphics/Typeface;)V
    .locals 1

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 332
    return-void
.end method

.method private updateCarrierInfo(Landroid/widget/TextView;)V
    .locals 8

    .line 272
    iget v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    if-lez v0, :cond_4

    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSnapshotTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->calculateTruncatedUpdateAge()J

    move-result-wide v4

    .line 277
    const/4 v1, 0x0

    .line 278
    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 280
    const v2, 0x7f120382    # @string/carrier_and_update_now_text 'Updated by ^1 just now'

    goto :goto_2

    .line 282
    :cond_0
    const v2, 0x7f120981    # @string/no_carrier_update_now_text 'Updated just now'

    goto :goto_2

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 286
    const v1, 0x7f120383    # @string/carrier_and_update_text 'Updated by ^1 ^2 ago'

    .line 290
    :goto_0
    move v2, v1

    goto :goto_1

    .line 288
    :cond_2
    const v1, 0x7f120982    # @string/no_carrier_update_text 'Updated ^2 ago'

    goto :goto_0

    .line 290
    :goto_1
    nop

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    long-to-double v6, v4

    .line 290
    invoke-static {v1, v6, v7, v0}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 293
    :goto_2
    nop

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    aput-object v6, v3, v0

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 293
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    sget-wide v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->WARNING_AGE:J

    cmp-long v0, v4, v0

    if-gtz v0, :cond_3

    .line 299
    const v0, 0x1010038    # @android:attr/textColorSecondary

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setCarrierInfoTextStyle(Landroid/widget/TextView;ILandroid/graphics/Typeface;)V

    goto :goto_3

    .line 302
    :cond_3
    const v0, 0x1010543    # @android:attr/colorError

    sget-object v1, Lcom/android/settings/datausage/DataUsageSummaryPreference;->SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setCarrierInfoTextStyle(Landroid/widget/TextView;ILandroid/graphics/Typeface;)V

    .line 304
    :goto_3
    goto :goto_4

    .line 305
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    :goto_4
    return-void
.end method

.method private updateCycleTimeText(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6

    .line 256
    const v0, 0x7f0a00e9    # @id/cycle_left_time

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 258
    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 259
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120257    # @string/billing_cycle_none_left 'No time remaining'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 262
    :cond_0
    sget-wide v2, Lcom/android/settings/datausage/DataUsageSummaryPreference;->MILLIS_IN_A_DAY:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 263
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120256    # @string/billing_cycle_less_than_one_day_left 'Less than 1 day left'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10000f    # @plurals/billing_cycle_days_left

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 265
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 263
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :goto_1
    return-void
.end method

.method private updateDataUsageLabels(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 10

    .line 215
    const v0, 0x7f0a00f9    # @id/data_usage_view

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    const/16 v4, 0xa

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    .line 219
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 220
    nop

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701c6    # @dimen/usage_number_text_size '36.0sp'

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 222
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v4, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1204ca    # @string/data_used_formatted '^1 ^2 used'

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 226
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v2, v4, v5

    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v4, v2

    .line 227
    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    nop

    .line 231
    const v1, 0x7f0a03b4    # @id/usage_layout

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/MeasurableLinearLayout;

    .line 233
    iget-boolean v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mHasMobileData:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    if-ltz v3, :cond_1

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanSize:J

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-lez v3, :cond_1

    .line 234
    const v3, 0x7f0a00f3    # @id/data_remaining_view

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 235
    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanSize:J

    iget-wide v8, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    sub-long/2addr v3, v8

    .line 236
    cmp-long v6, v3, v6

    if-ltz v6, :cond_0

    .line 237
    nop

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f120463    # @string/data_remaining '^1 left'

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    .line 238
    invoke-static {v6, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 237
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    nop

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1010435    # @android:attr/colorAccent

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    .line 240
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 243
    :cond_0
    nop

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f120460    # @string/data_overusage '^1 over'

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    neg-long v3, v3

    invoke-static {v7, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    .line 244
    invoke-static {v6, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 243
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    nop

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1010543    # @android:attr/colorError

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    .line 246
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    :goto_0
    invoke-virtual {v1, v0, p1}, Lcom/android/settings/datausage/MeasurableLinearLayout;->setChildren(Landroid/view/View;Landroid/view/View;)V

    .line 250
    goto :goto_1

    .line 251
    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/datausage/MeasurableLinearLayout;->setChildren(Landroid/view/View;Landroid/view/View;)V

    .line 253
    :goto_1
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 8

    .line 150
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 152
    const v0, 0x7f0a010d    # @id/determinateBar

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 153
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    const v2, 0x7f0a01d9    # @id/label_bar

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 155
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 157
    const v0, 0x1020014    # @android:id/text1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const v0, 0x1020015    # @android:id/text2

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 161
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateDataUsageLabels(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 166
    const v0, 0x7f0a03b6    # @id/usage_title

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    const v1, 0x7f0a00a2    # @id/carrier_and_update

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 168
    const v2, 0x7f0a01e6    # @id/launch_mdp_app_button

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 169
    const v5, 0x7f0a00ee    # @id/data_limits

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 171
    iget-boolean v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWifiMode:Z

    if-eqz v6, :cond_2

    .line 172
    const v6, 0x7f1204c8    # @string/data_usage_wifi_title 'Wi‑Fi data'

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 173
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    const v0, 0x7f0a00e9    # @id/cycle_left_time

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsagePeriod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    new-instance p1, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreference$zBjNn20lFyV2SqYMtfKeIRkAo7w;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreference$zBjNn20lFyV2SqYMtfKeIRkAo7w;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreference;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const p1, 0x7f1207d9    # @string/launch_wifi_text 'View details'

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(I)V

    .line 183
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    goto :goto_4

    .line 185
    :cond_2
    iget v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateCycleTimeText(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 187
    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateCarrierInfo(Landroid/widget/TextView;)V

    .line 188
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLaunchIntent:Landroid/content/Intent;

    if-eqz p1, :cond_4

    .line 189
    new-instance p1, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreference$1NKWVGupHVFnsudApVgFBRMGUJg;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/-$$Lambda$DataUsageSummaryPreference$1NKWVGupHVFnsudApVgFBRMGUJg;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreference;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 194
    :cond_4
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    :goto_2
    nop

    .line 197
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 196
    :cond_5
    move v3, v4

    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/String;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_4
    return-void
.end method

.method public setChartEnabled(Z)V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    if-eq v0, p1, :cond_0

    .line 124
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    .line 127
    :cond_0
    return-void
.end method

.method public setLabels(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    .line 131
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    .line 133
    return-void
.end method

.method public setLimitInfo(Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    .line 105
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    .line 110
    return-void
.end method

.method public setUsageInfo(JJLjava/lang/CharSequence;ILandroid/content/Intent;)V
    .locals 0

    .line 114
    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:J

    .line 115
    iput-wide p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSnapshotTimeMs:J

    .line 116
    iput-object p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    .line 117
    iput p6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    .line 118
    iput-object p7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLaunchIntent:Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    .line 120
    return-void
.end method

.method setUsageNumbers(JJZ)V
    .locals 0

    .line 136
    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    .line 137
    iput-wide p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanSize:J

    .line 138
    iput-boolean p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mHasMobileData:Z

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    .line 140
    return-void
.end method

.method setWifiMode(ZLjava/lang/String;)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWifiMode:Z

    .line 144
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsagePeriod:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->notifyChanged()V

    .line 146
    return-void
.end method
