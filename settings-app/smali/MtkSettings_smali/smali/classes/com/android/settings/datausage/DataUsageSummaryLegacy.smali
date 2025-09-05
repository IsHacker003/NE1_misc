.class public Lcom/android/settings/datausage/DataUsageSummaryLegacy;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "DataUsageSummaryLegacy.java"

# interfaces
.implements Lcom/android/settings/datausage/DataUsageEditController;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataUsageSummaryLegacy$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataUsageTemplate:I

.field private mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private mLimitPreference:Landroid/support/v7/preference/Preference;

.field private mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

.field private mSummaryPreference:Lcom/android/settings/SummaryPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 359
    sget-object v0, Lcom/android/settings/datausage/-$$Lambda$7QiUIfMd3seAu_emb68cbM9H0Io;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$7QiUIfMd3seAu_emb68cbM9H0Io;

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 365
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummaryLegacy$1;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy$1;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    return-void
.end method

.method private addEthernetSection()V
    .locals 4

    .line 217
    nop

    .line 218
    const v0, 0x7f150039    # @xml/data_usage_ethernet 'res/xml/data_usage_ethernet.xml'

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 219
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 220
    return-void
.end method

.method private addMobileSection(I)V
    .locals 1

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->addMobileSection(ILandroid/telephony/SubscriptionInfo;)V

    .line 197
    return-void
.end method

.method private addMobileSection(ILandroid/telephony/SubscriptionInfo;)V
    .locals 3

    .line 200
    nop

    .line 201
    const v0, 0x7f150038    # @xml/data_usage_cellular 'res/xml/data_usage_cellular.xml'

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 202
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 203
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 204
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 205
    const-string p1, "mobile_category"

    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 206
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    :cond_0
    return-void
.end method

.method private addWifiSection()V
    .locals 4

    .line 211
    nop

    .line 212
    const v0, 0x7f15003d    # @xml/data_usage_wifi 'res/xml/data_usage_wifi.xml'

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 213
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 214
    return-void
.end method

.method static formatUsage(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;
    .locals 6

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p2, p3, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p2

    .line 256
    new-instance p3, Landroid/text/SpannableString;

    iget-object v0, p2, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-direct {p3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 257
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const/high16 v2, 0x3fc80000    # 1.5625f

    invoke-direct {v0, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 259
    new-instance v0, Landroid/text/SpannableString;

    .line 260
    const v2, 0x1040cdf

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "%1$s"

    const-string v5, "^1"

    .line 261
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "%2$s"

    const-string v5, "^2"

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 262
    new-array p0, v1, [Ljava/lang/CharSequence;

    aput-object p3, p0, v4

    iget-object p2, p2, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 p3, 0x1

    aput-object p2, p0, p3

    invoke-static {v0, p0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 265
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 266
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    const v0, 0x3f23d70a    # 0.64f

    invoke-direct {p1, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {p2, p1, v4, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 267
    new-array p1, p3, [Ljava/lang/CharSequence;

    .line 268
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p3

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v4

    .line 267
    invoke-static {p2, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getNetworkTemplate(I)Landroid/net/NetworkTemplate;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 237
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 239
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {p1, v0}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object p1

    return-object p1
.end method

.method private inflatePreferences(I)Landroid/support/v7/preference/Preference;
    .locals 3

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 223
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 226
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 230
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 232
    return-object v0
.end method

.method private updateState()V
    .locals 14

    .line 272
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 275
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    .line 276
    invoke-virtual {v3, v4}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 275
    invoke-virtual {v2, v0, v3}, Lcom/android/settings/datausage/DataUsageInfoController;->updateDataLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/net/NetworkPolicy;)V

    .line 278
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    iget v7, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDataUsageTemplate:I

    .line 280
    invoke-virtual {p0, v7}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v1, v7, v8, v9}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->formatUsage(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;

    move-result-object v7

    .line 279
    invoke-virtual {v2, v7}, Lcom/android/settings/SummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    invoke-virtual {v2, v0}, Lcom/android/settings/datausage/DataUsageInfoController;->getSummaryLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J

    move-result-wide v7

    .line 282
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    iget-object v9, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/android/settings/SummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 283
    cmp-long v2, v7, v5

    if-gtz v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings/SummaryPreference;->setChartEnabled(Z)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/SummaryPreference;->setChartEnabled(Z)V

    .line 287
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    invoke-static {v1, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 288
    invoke-static {v1, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 287
    invoke-virtual {v2, v9, v10}, Lcom/android/settings/SummaryPreference;->setLabels(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    iget-wide v9, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    long-to-float v9, v9

    long-to-float v10, v7

    div-float/2addr v9, v10

    const/4 v11, 0x0

    iget-wide v12, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    sub-long/2addr v7, v12

    long-to-float v7, v7

    div-float/2addr v7, v10

    invoke-virtual {v2, v9, v11, v7}, Lcom/android/settings/SummaryPreference;->setRatios(FFF)V

    .line 293
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mLimitPreference:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_4

    iget-wide v7, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    cmp-long v2, v7, v5

    if-gtz v2, :cond_2

    iget-wide v7, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v2, v7, v5

    if-lez v2, :cond_4

    .line 294
    :cond_2
    iget-wide v7, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-static {v1, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 295
    iget-wide v7, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v1, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 296
    iget-object v7, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mLimitPreference:Landroid/support/v7/preference/Preference;

    iget-wide v8, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v0, v8, v5

    if-gtz v0, :cond_3

    const v0, 0x7f120395    # @string/cell_warning_only '%1$s Data warning'

    goto :goto_1

    .line 297
    :cond_3
    const v0, 0x7f120394    # @string/cell_warning_and_limit '%1$s Data warning / %2$s Data limit'

    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v3

    aput-object v1, v5, v4

    .line 296
    invoke-virtual {p0, v0, v5}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mLimitPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_5

    .line 299
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mLimitPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 303
    :goto_3
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v4, v1, :cond_6

    .line 304
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 303
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 306
    :cond_6
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 192
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    .line 90
    const v0, 0x7f1206fd    # @string/help_url_data_usage ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 187
    const-string v0, "DataUsageSummaryLegacy"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 310
    const/16 v0, 0x25

    return v0
.end method

.method public getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    return-object v0
.end method

.method public getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 182
    const v0, 0x7f15003a    # @xml/data_usage_legacy 'res/xml/data_usage_legacy.xml'

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 98
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-direct {v1, v0}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 101
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v0

    .line 102
    new-instance v1, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {v1, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 103
    new-instance v1, Lcom/android/settings/datausage/DataUsageInfoController;

    invoke-direct {v1}, Lcom/android/settings/datausage/DataUsageInfoController;-><init>()V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    .line 105
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v1

    .line 106
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 107
    nop

    .line 109
    move v0, v2

    :cond_0
    invoke-static {p1, v1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    .line 110
    const-string v3, "status_header"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SummaryPreference;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    .line 112
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_2

    .line 113
    :cond_1
    const-string v3, "restrict_background_legacy"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->removePreference(Ljava/lang/String;)Z

    .line 115
    :cond_2
    const/4 v3, 0x1

    if-eqz v0, :cond_7

    .line 116
    const-string v4, "limit_summary"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mLimitPreference:Landroid/support/v7/preference/Preference;

    .line 117
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v4, v4, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 118
    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 119
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 120
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->addMobileSection(I)V

    .line 122
    :cond_4
    :goto_0
    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 123
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 124
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_5

    .line 125
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-direct {p0, v5, v1}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->addMobileSection(ILandroid/telephony/SubscriptionInfo;)V

    goto :goto_1

    .line 127
    :cond_5
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->addMobileSection(I)V

    .line 122
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_6
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/SummaryPreference;->setSelectable(Z)V

    .line 131
    goto :goto_2

    .line 132
    :cond_7
    const-string v1, "limit_summary"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->removePreference(Ljava/lang/String;)Z

    .line 133
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/SummaryPreference;->setSelectable(Z)V

    .line 135
    :goto_2
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v1

    .line 136
    if-eqz v1, :cond_8

    .line 137
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->addWifiSection()V

    .line 139
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->hasEthernet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 140
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->addEthernetSection()V

    .line 142
    :cond_9
    if-eqz v0, :cond_a

    const p1, 0x7f120391    # @string/cell_data_template '^1 mobile data'

    goto :goto_3

    .line 143
    :cond_a
    if-eqz v1, :cond_b

    const p1, 0x7f121008    # @string/wifi_data_template '^1 Wi-Fi data'

    goto :goto_3

    .line 144
    :cond_b
    const p1, 0x7f120614    # @string/ethernet_data_template '^1 ethernet data'

    :goto_3
    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->mDataUsageTemplate:I

    .line 146
    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->setHasOptionsMenu(Z)V

    .line 147
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const v0, 0x7f0e0001    # @menu/data_usage 'res/menu/data_usage.xml'

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 154
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 155
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a00f8    # @id/data_usage_menu_cellular_networks

    if-eq p1, v0, :cond_0

    .line 168
    const/4 p1, 0x0

    return p1

    .line 161
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->startActivity(Landroid/content/Intent;)V

    .line 165
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 173
    const-string v0, "status_header"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 174
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/DataUsageEditController;Z)V

    .line 175
    return p1

    .line 177
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 244
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    .line 245
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->updateState()V

    .line 246
    return-void
.end method

.method public updateDataUsage()V
    .locals 0

    .line 325
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummaryLegacy;->updateState()V

    .line 326
    return-void
.end method
