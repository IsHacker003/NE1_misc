.class Lcom/android/settings/DateTimeSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 206
    iput-object p2, p0, Lcom/android/settings/DateTimeSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 207
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 3

    .line 211
    if-eqz p1, :cond_0

    .line 212
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 214
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 213
    invoke-static {v1, v2, p1}, Lcom/android/settingslib/datetime/ZoneGetter;->getTimeZoneOffsetAndName(Landroid/content/Context;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 216
    :cond_0
    return-void
.end method
