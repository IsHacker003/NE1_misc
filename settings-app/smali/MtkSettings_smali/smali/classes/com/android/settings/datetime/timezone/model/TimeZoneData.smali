.class public Lcom/android/settings/datetime/timezone/model/TimeZoneData;
.super Ljava/lang/Object;
.source "TimeZoneData.java"


# static fields
.field private static sCache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/datetime/timezone/model/TimeZoneData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCountryZonesFinder:Llibcore/util/CountryZonesFinder;

.field private final mRegionIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->sCache:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Llibcore/util/CountryZonesFinder;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mCountryZonesFinder:Llibcore/util/CountryZonesFinder;

    .line 58
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mCountryZonesFinder:Llibcore/util/CountryZonesFinder;

    invoke-virtual {p1}, Llibcore/util/CountryZonesFinder;->lookupAllCountryIsoCodes()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->getNormalizedRegionIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mRegionIds:Ljava/util/Set;

    .line 59
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/settings/datetime/timezone/model/TimeZoneData;
    .locals 3

    const-class v0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->sCache:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->sCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datetime/timezone/model/TimeZoneData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :goto_0
    if-eqz v1, :cond_1

    .line 48
    monitor-exit v0

    return-object v1

    .line 50
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/util/TimeZoneFinder;->getCountryZonesFinder()Llibcore/util/CountryZonesFinder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;-><init>(Llibcore/util/CountryZonesFinder;)V

    .line 51
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->sCache:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    monitor-exit v0

    return-object v1

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getNormalizedRegionIds(Ljava/util/List;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 89
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    invoke-static {v1}, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->normalizeRegionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeRegionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 97
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getRegionIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mRegionIds:Ljava/util/Set;

    return-object v0
.end method

.method public lookupCountryCodesForZoneId(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    if-nez p1, :cond_0

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mCountryZonesFinder:Llibcore/util/CountryZonesFinder;

    .line 70
    invoke-virtual {v0, p1}, Llibcore/util/CountryZonesFinder;->lookupCountryTimeZonesForZoneId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 71
    new-instance v1, Landroid/support/v4/util/ArraySet;

    invoke-direct {v1}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llibcore/util/CountryTimeZones;

    .line 73
    new-instance v3, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    invoke-direct {v3, v2}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;-><init>(Llibcore/util/CountryTimeZones;)V

    .line 74
    invoke-virtual {v3}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->getTimeZoneIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v3}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;->getRegionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_1
    goto :goto_0

    .line 78
    :cond_2
    return-object v1
.end method

.method public lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;
    .locals 2

    .line 82
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 84
    move-object p1, v0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneData;->mCountryZonesFinder:Llibcore/util/CountryZonesFinder;

    invoke-virtual {v1, p1}, Llibcore/util/CountryZonesFinder;->lookupCountryTimeZones(Ljava/lang/String;)Llibcore/util/CountryTimeZones;

    move-result-object p1

    .line 84
    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;

    invoke-direct {v0, p1}, Lcom/android/settings/datetime/timezone/model/FilteredCountryTimeZones;-><init>(Llibcore/util/CountryTimeZones;)V

    :goto_1
    return-object v0
.end method
