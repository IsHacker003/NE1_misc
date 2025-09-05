.class public Lcom/android/settings/datausage/DataUsageSummary;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/datausage/DataUsageEditController;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

.field private mDefaultSubId:I

.field private mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private mEnableDataService:Landroid/support/v14/preference/SwitchPreference;

.field private mIsAirplaneModeOn:Z

.field private mPhoneCount:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

.field private mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

.field mTempPhoneid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 545
    sget-object v0, Lcom/android/settings/datausage/-$$Lambda$YwlDb-ChrdnT61OB-L_A63UT4To;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$YwlDb-ChrdnT61OB-L_A63UT4To;

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 551
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$1;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummary$1;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    .line 104
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneCount:I

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTempPhoneid:I

    .line 736
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/DataUsageSummary$4;-><init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mContentObserver:Landroid/database/ContentObserver;

    .line 754
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageSummary$5;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v14/preference/SwitchPreference;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEnableDataService:Landroid/support/v14/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateScreenEnabled()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/datausage/DataUsageSummary;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getDataService()Z

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/android/settings/datausage/DataUsageSummary;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    return-object p0
.end method

.method private addEthernetSection()V
    .locals 4

    .line 319
    nop

    .line 320
    const v0, 0x7f150039    # @xml/data_usage_ethernet 'res/xml/data_usage_ethernet.xml'

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 321
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 322
    return-void
.end method

.method private addMobileSection(ILandroid/telephony/SubscriptionInfo;)V
    .locals 4

    .line 290
    nop

    .line 291
    const v0, 0x7f150038    # @xml/data_usage_cellular 'res/xml/data_usage_cellular.xml'

    invoke-direct {p0, v0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->inflateFihPreferences(II)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 293
    const-string v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMobileSection with subID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 295
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 296
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 297
    const-string p1, "mobile_category"

    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 309
    :cond_0
    return-void
.end method

.method private addMobileSection(ILandroid/telephony/SubscriptionInfo;I)V
    .locals 4

    .line 261
    nop

    .line 262
    const v0, 0x7f150038    # @xml/data_usage_cellular 'res/xml/data_usage_cellular.xml'

    invoke-direct {p0, v0, p3}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(II)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 263
    const-string v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMobileSection with subID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " orderd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object p3

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, p3, p1, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 266
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 267
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 268
    const-string p1, "mobile_category"

    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 269
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 271
    :cond_0
    return-void
.end method

.method static formatUsage(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;
    .locals 6

    .line 405
    const/high16 v4, 0x3fc80000    # 1.5625f

    const v5, 0x3f23d70a    # 0.64f

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummary;->formatUsage(Landroid/content/Context;Ljava/lang/String;JFF)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static formatUsage(Landroid/content/Context;Ljava/lang/String;JFF)Ljava/lang/CharSequence;
    .locals 4

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, p2, p3, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p2

    .line 414
    new-instance p3, Landroid/text/SpannableString;

    iget-object v0, p2, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-direct {p3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 415
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, p4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result p4

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, p4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 417
    new-instance p4, Landroid/text/SpannableString;

    .line 418
    const v0, 0x1040cdf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%1$s"

    const-string v3, "^1"

    .line 419
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%2$s"

    const-string v3, "^2"

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 420
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/CharSequence;

    aput-object p3, p0, v2

    iget-object p2, p2, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 p3, 0x1

    aput-object p2, p0, p3

    invoke-static {p4, p0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 423
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 424
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p1, p5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result p4

    invoke-virtual {p2, p1, v2, p4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 425
    new-array p1, p3, [Ljava/lang/CharSequence;

    .line 426
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p3

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    .line 425
    invoke-static {p2, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getDataService()Z
    .locals 5

    .line 720
    nop

    .line 721
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 722
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "data_service_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 726
    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "DataUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataService ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private getNetworkTemplate(I)Landroid/net/NetworkTemplate;
    .locals 4

    .line 356
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 357
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 358
    const-string v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkTemplate with subID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p1, p1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 360
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-static {v0, p1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object p1

    return-object p1
.end method

.method private inflateFihPreferences(II)Landroid/support/v7/preference/Preference;
    .locals 3

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 339
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 342
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 345
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 347
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 349
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 351
    return-object v1
.end method

.method private inflatePreferences(I)Landroid/support/v7/preference/Preference;
    .locals 3

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 325
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 327
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 328
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 331
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 332
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 334
    return-object v0
.end method

.method private inflatePreferences(II)Landroid/support/v7/preference/Preference;
    .locals 3

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 274
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 277
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 280
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 281
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 283
    return-object v0
.end method

.method private static isDataServiceSupport()Z
    .locals 2

    .line 773
    const-string v0, "1"

    const-string v1, "persist.vendor.radio.smart.data.switch"

    .line 774
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 773
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 775
    :goto_0
    return v0
.end method

.method private updateScreenEnabled()V
    .locals 4

    .line 706
    invoke-static {}, Lcom/mediatek/settings/sim/TelephonyUtils;->isCapabilitySwitching()Z

    move-result v0

    .line 707
    const-string v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScreenEnabled, mIsAirplaneModeOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsAirplaneModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSwitching = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mTempPhoneid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTempPhoneid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEnableDataService:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 711
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEnableDataService:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsAirplaneModeOn:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    iget v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTempPhoneid:I

    .line 712
    invoke-interface {v0, v2}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customTempdata(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 711
    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 713
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEnableDataService:Landroid/support/v14/preference/SwitchPreference;

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customTempdataHide(Landroid/support/v14/preference/SwitchPreference;)V

    goto :goto_1

    .line 715
    :cond_1
    const-string v0, "DataUsageSummary"

    const-string v1, "mEnableDataService == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :goto_1
    return-void
.end method

.method private updateState()V
    .locals 6

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 431
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 432
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 434
    instance-of v3, v2, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v3, :cond_0

    .line 435
    move-object v3, v2

    check-cast v3, Landroid/support/v7/preference/PreferenceCategory;

    .line 436
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "service_category"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEnableDataService:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 438
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getDataService()Z

    move-result v2

    .line 439
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEnableDataService:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 440
    const-string v3, "DataUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateState, dataService="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    goto :goto_1

    .line 446
    :cond_0
    instance-of v3, v2, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-eqz v3, :cond_1

    .line 447
    check-cast v2, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 431
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    :cond_2
    return-void
.end method


# virtual methods
.method addMobileSection(I)V
    .locals 1

    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(ILandroid/telephony/SubscriptionInfo;)V

    .line 254
    return-void
.end method

.method addMobileSection(II)V
    .locals 1

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(ILandroid/telephony/SubscriptionInfo;I)V

    .line 258
    return-void
.end method

.method addWifiSection()V
    .locals 4

    .line 313
    nop

    .line 314
    const v0, 0x7f15003d    # @xml/data_usage_wifi 'res/xml/data_usage_wifi.xml'

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 315
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 316
    return-void
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    new-instance v1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, v2, p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    .line 246
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 248
    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 112
    const v0, 0x7f1206fd    # @string/help_url_data_usage ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 237
    const-string v0, "DataUsageSummary"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 454
    const/16 v0, 0x25

    return v0
.end method

.method public getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    return-object v0
.end method

.method public getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 2

    .line 464
    const-string v0, "DataUsageSummary"

    const-string v1, "getNetworkTemplate without subID: DefaultTemplate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 232
    const v0, 0x7f150037    # @xml/data_usage 'res/xml/data_usage.xml'

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const-string p1, "DataUsageSummary"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mContext:Landroid/content/Context;

    .line 122
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 122
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getDataUsageSummaryExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    .line 125
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result p1

    .line 127
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultSubId:I

    .line 128
    iget v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultSubId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 129
    const-string p1, "DataUsageSummary"

    const-string v0, "onCreate INVALID_SUBSCRIPTION_ID Mobile data false"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    nop

    .line 132
    move p1, v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultSubId:I

    invoke-static {v0, v2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    .line 133
    const-string v0, "status_header"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    .line 135
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isAdmin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    :cond_1
    const-string v0, "restrict_background"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->removePreference(Ljava/lang/String;)Z

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    .line 139
    const/4 v2, 0x1

    if-eqz p1, :cond_8

    .line 147
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p1, p1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 148
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    .line 150
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 151
    :cond_3
    iget v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultSubId:I

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(I)V

    .line 153
    :cond_4
    :goto_0
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 154
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 155
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_5

    .line 156
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(ILandroid/telephony/SubscriptionInfo;)V

    goto :goto_1

    .line 158
    :cond_5
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(I)V

    .line 153
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_6
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addWifiSection()V

    .line 171
    :cond_7
    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addWifiSection()V

    .line 174
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasEthernet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 175
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addEthernetSection()V

    .line 177
    :cond_a
    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 178
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const v0, 0x7f0e0001    # @menu/data_usage 'res/menu/data_usage.xml'

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const v0, 0x7f0a00f8    # @id/data_usage_menu_cellular_networks

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 190
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 191
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 780
    const-string v0, "DataUsageSummary"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onDestroy()V

    .line 782
    invoke-static {}, Lcom/android/settings/datausage/DataUsageSummary;->isDataServiceSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEnableDataService:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 787
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 788
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEnableDataService:Landroid/support/v14/preference/SwitchPreference;

    .line 791
    :cond_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 792
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_2

    .line 793
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 795
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 218
    const/4 p1, 0x0

    return p1

    .line 197
    :pswitch_0
    const-string p1, "DataUsageSummary"

    const-string v1, "select CELLULAR_NETWORKDATA"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 202
    return v0

    .line 207
    :pswitch_1
    const-string p1, "DataUsageSummary"

    const-string v1, "select CELLULAR_DATA"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.mediatek.security.CELLULAR_DATA"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_0

    .line 211
    :catch_0
    move-exception p1

    .line 212
    const-string p1, "DataUsageSummary"

    const-string v1, "cellular data control activity not found!!!"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00f7
        :pswitch_1    # @id/data_usage_menu_cellular_data_control
        :pswitch_0    # @id/data_usage_menu_cellular_networks
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 223
    const-string v0, "status_header"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 224
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/DataUsageEditController;Z)V

    .line 225
    return p1

    .line 227
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 607
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 609
    const v0, 0x7f0a00f7    # @id/data_usage_menu_cellular_data_control

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 611
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.mediatek.cta.CtaUtils"

    .line 612
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 611
    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 613
    new-array v2, v0, [Ljava/lang/Class;

    .line 614
    const-string v3, "isCtaSupported"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 615
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 616
    new-array v3, v0, [Ljava/lang/Class;

    .line 617
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 618
    if-eqz p1, :cond_0

    .line 619
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :cond_0
    goto :goto_0

    .line 621
    :catch_0
    move-exception v1

    .line 622
    if-eqz p1, :cond_1

    .line 623
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 625
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 628
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 365
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    .line 367
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    .line 368
    const-string v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResumed mDefaultSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newDefaultSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v1

    .line 371
    iget v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultSubId:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 372
    const-string v1, "DataUsageSummary"

    const-string v2, "onResume INVALID_SUBSCRIPTION_ID Mobile data false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    nop

    .line 375
    move v1, v3

    :cond_0
    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultSubId:I

    if-eq v1, v0, :cond_1

    .line 376
    nop

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "mobile_category"

    .line 378
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 379
    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getOrder()I

    move-result v2

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 382
    const-string v1, "DataUsageSummary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removePreferencedd and add (data_usage_cellular_screen) order = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-eq v0, v4, :cond_1

    .line 386
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(II)V

    .line 391
    :cond_1
    invoke-static {}, Lcom/mediatek/settings/sim/TelephonyUtils;->getMainCapabilityPhoneId()I

    move-result v0

    .line 392
    if-nez v0, :cond_2

    .line 393
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTempPhoneid:I

    goto :goto_0

    .line 395
    :cond_2
    iput v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTempPhoneid:I

    .line 397
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateScreenEnabled()V

    .line 398
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    .line 399
    return-void
.end method

.method public updateDataUsage()V
    .locals 2

    .line 470
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    .line 471
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 472
    return-void
.end method
