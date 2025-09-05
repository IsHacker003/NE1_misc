.class public Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;
.super Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;
.source "TimeZoneInfoPreferenceController.java"


# static fields
.field private static final PREFERENCE_KEY:Ljava/lang/String; = "footer_preference"


# instance fields
.field mDate:Ljava/util/Date;

.field private final mDateFormat:Landroid/icu/text/DateFormat;

.field private mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    const-string v0, "footer_preference"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    const/4 p1, 0x1

    invoke-static {p1}, Landroid/icu/text/DateFormat;->getDateInstance(I)Landroid/icu/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 46
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDateFormat:Landroid/icu/text/DateFormat;

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {p1, v0}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 47
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDate:Ljava/util/Date;

    .line 48
    return-void
.end method

.method private findNextDstTransition(Landroid/icu/util/TimeZone;)Landroid/icu/util/TimeZoneTransition;
    .locals 4

    .line 117
    instance-of v0, p1, Landroid/icu/impl/OlsonTimeZone;

    if-nez v0, :cond_0

    .line 118
    const/4 p1, 0x0

    return-object p1

    .line 120
    :cond_0
    check-cast p1, Landroid/icu/impl/OlsonTimeZone;

    .line 121
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDate:Ljava/util/Date;

    .line 122
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 121
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v0

    .line 124
    :cond_1
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    nop

    .line 128
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    .line 127
    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v0

    .line 129
    if-nez v0, :cond_1

    .line 130
    :goto_0
    return-object v0
.end method

.method private formatInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/lang/CharSequence;
    .locals 7

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->formatOffsetAndName(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->observesDaylightTime()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 92
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121200    # @string/zone_info_footer_no_dst 'Uses %1$s. No daylight savings time.'

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 95
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->findNextDstTransition(Landroid/icu/util/TimeZone;)Landroid/icu/util/TimeZoneTransition;

    move-result-object v2

    .line 96
    if-nez v2, :cond_1

    .line 97
    const/4 p1, 0x0

    return-object p1

    .line 99
    :cond_1
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    move v5, v4

    goto :goto_0

    .line 99
    :cond_2
    nop

    .line 100
    move v5, v3

    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getDaylightName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getStandardName()Ljava/lang/String;

    move-result-object p1

    .line 101
    :goto_1
    if-nez p1, :cond_5

    .line 104
    if-eqz v5, :cond_4

    .line 105
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f121206    # @string/zone_time_type_dst 'Daylight savings time'

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 106
    :cond_4
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f121207    # @string/zone_time_type_standard 'Standard time'

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 109
    :cond_5
    :goto_2
    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;

    move-result-object v1

    .line 110
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 111
    iget-object v2, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDateFormat:Landroid/icu/text/DateFormat;

    invoke-virtual {v2, v1}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1211ff    # @string/zone_info_footer 'Uses %1$s. %2$s starts on %3$s.'

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object p1, v6, v4

    const/4 p1, 0x2

    aput-object v1, v6, p1

    invoke-static {v2, v5, v6}, Lcom/android/settings/datetime/timezone/SpannableUtil;->getResourcesText(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method

.method private formatOffsetAndName(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/lang/CharSequence;
    .locals 5

    .line 71
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGenericName()Ljava/lang/String;

    move-result-object v0

    .line 72
    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getDaylightName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getStandardName()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 80
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121201    # @string/zone_info_offset_and_name '%2$s (%1$s)'

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 83
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    .line 82
    invoke-static {v1, v2, v3}, Lcom/android/settings/datetime/timezone/SpannableUtil;->getResourcesText(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getTimeZoneInfo()Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    return-object v0
.end method

.method public setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 64
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->formatInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 58
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 60
    return-void
.end method
