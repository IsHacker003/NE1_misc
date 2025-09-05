.class Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;
.super Ljava/lang/Object;
.source "BaseTimeZoneInfoPicker.java"

# interfaces
.implements Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneInfoItem"
.end annotation


# instance fields
.field private final mItemId:J

.field private final mResources:Landroid/content/res/Resources;

.field private final mSearchKeys:[Ljava/lang/String;

.field private final mTimeFormat:Landroid/icu/text/DateFormat;

.field private final mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLcom/android/settings/datetime/timezone/TimeZoneInfo;Landroid/content/res/Resources;Landroid/icu/text/DateFormat;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-wide p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mItemId:J

    .line 109
    iput-object p3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 110
    iput-object p4, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mResources:Landroid/content/res/Resources;

    .line 111
    iput-object p5, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeFormat:Landroid/icu/text/DateFormat;

    .line 112
    invoke-static {p3}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->createTitle(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    .line 113
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mSearchKeys:[Ljava/lang/String;

    .line 114
    return-void
.end method

.method synthetic constructor <init>(JLcom/android/settings/datetime/timezone/TimeZoneInfo;Landroid/content/res/Resources;Landroid/icu/text/DateFormat;Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$1;)V
    .locals 0

    .line 98
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;-><init>(JLcom/android/settings/datetime/timezone/TimeZoneInfo;Landroid/content/res/Resources;Landroid/icu/text/DateFormat;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    return-object p0
.end method

.method private static createTitle(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/lang/String;
    .locals 3

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getExemplarLocation()Ljava/lang/String;

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGenericName()Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getDaylightName()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_1
    if-nez v0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getStandardName()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_2
    if-nez v0, :cond_3

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_3
    return-object v0
.end method


# virtual methods
.method public getCurrentTime()Ljava/lang/String;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeFormat:Landroid/icu/text/DateFormat;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconText()Ljava/lang/String;
    .locals 1

    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()J
    .locals 2

    .line 171
    iget-wide v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mItemId:J

    return-wide v0
.end method

.method public getSearchKeys()[Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mSearchKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 6

    .line 140
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGenericName()Ljava/lang/String;

    move-result-object v0

    .line 141
    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getDaylightName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getStandardName()Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f121201    # @string/zone_info_offset_and_name '%2$s (%1$s)'

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 155
    invoke-virtual {v5}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 154
    invoke-static {v1, v2, v3}, Lcom/android/settings/datetime/timezone/SpannableUtil;->getResourcesText(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0

    .line 151
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v0, ""

    :cond_5
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
