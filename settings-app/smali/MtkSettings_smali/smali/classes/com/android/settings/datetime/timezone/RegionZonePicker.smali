.class public Lcom/android/settings/datetime/timezone/RegionZonePicker;
.super Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;
.source "RegionZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;
    }
.end annotation


# instance fields
.field private mRegionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 52
    const v0, 0x7f1204ea    # @string/date_time_set_timezone_title 'Time zone'

    const v1, 0x7f120bd3    # @string/search_settings 'Search'

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;-><init>(IIZZ)V

    .line 53
    return-void
.end method


# virtual methods
.method public getAllTimeZoneInfos(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/datetime/timezone/model/TimeZoneData;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/TimeZoneInfo;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    const-string p1, "RegionZoneSearchPicker"

    const-string v0, "getArguments() == null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.android.settings.datetime.timezone.region_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    move-result-object p1

    .line 96
    if-nez p1, :cond_1

    .line 97
    const-string p1, "RegionZoneSearchPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "region id is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 105
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->getTimeZoneIds()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getRegionTimeZoneInfo(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker;->mRegionName:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 57
    const/16 v0, 0x54c

    return v0
.end method

.method public getRegionTimeZoneInfo(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/TimeZoneInfo;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getLocale()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;-><init>(Ljava/util/Locale;Ljava/util/Date;)V

    .line 118
    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/text/Collator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;-><init>(Landroid/icu/text/Collator;Ljava/util/Date;)V

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 122
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 123
    invoke-static {v2}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Etc/Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->format(Landroid/icu/util/TimeZone;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 129
    goto :goto_0

    .line 130
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 67
    move-object v0, v1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.android.settings.datetime.timezone.region_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker;->mRegionName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method protected prepareResultData(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Landroid/content/Intent;
    .locals 3

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->prepareResultData(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Landroid/content/Intent;

    move-result-object p1

    .line 81
    const-string v0, "com.android.settings.datetime.timezone.result_region_id"

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.android.settings.datetime.timezone.region_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    return-object p1
.end method
