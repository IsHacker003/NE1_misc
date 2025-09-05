.class public Lcom/android/settings/display/NightDisplayTimeFormatter;
.super Ljava/lang/Object;
.source "NightDisplayTimeFormatter.java"


# instance fields
.field private mTimeFormatter:Ljava/text/DateFormat;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/NightDisplayTimeFormatter;->mTimeFormatter:Ljava/text/DateFormat;

    .line 35
    iget-object p1, p0, Lcom/android/settings/display/NightDisplayTimeFormatter;->mTimeFormatter:Ljava/text/DateFormat;

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 36
    return-void
.end method

.method private getAutoModeSummary(Landroid/content/Context;Lcom/android/internal/app/ColorDisplayController;)Ljava/lang/String;
    .locals 3

    .line 55
    invoke-virtual {p2}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    .line 56
    invoke-virtual {p2}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v1

    .line 57
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 58
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 59
    const v0, 0x7f120977    # @string/night_display_summary_on_auto_mode_custom 'Will turn off automatically at %1$s'

    new-array v2, v2, [Ljava/lang/Object;

    .line 60
    invoke-virtual {p2}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    .line 59
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    const v0, 0x7f120973    # @string/night_display_summary_off_auto_mode_custom 'Will turn on automatically at %1$s'

    new-array v2, v2, [Ljava/lang/Object;

    .line 63
    invoke-virtual {p2}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    .line 62
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :cond_1
    const/4 p2, 0x2

    if-ne v1, p2, :cond_3

    .line 66
    if-eqz v0, :cond_2

    .line 67
    const p2, 0x7f120979    # @string/night_display_summary_on_auto_mode_twilight 'Will turn off automatically at sunrise'

    goto :goto_0

    .line 68
    :cond_2
    const p2, 0x7f120975    # @string/night_display_summary_off_auto_mode_twilight 'Will turn on automatically at sunset'

    .line 66
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :cond_3
    if-eqz v0, :cond_4

    .line 71
    const p2, 0x7f120978    # @string/night_display_summary_on_auto_mode_never 'Will never turn off automatically'

    goto :goto_1

    .line 72
    :cond_4
    const p2, 0x7f120974    # @string/night_display_summary_off_auto_mode_never 'Will never turn on automatically'

    .line 70
    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAutoModeTimeSummary(Landroid/content/Context;Lcom/android/internal/app/ColorDisplayController;)Ljava/lang/String;
    .locals 3

    .line 49
    invoke-virtual {p2}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120976    # @string/night_display_summary_on 'On / %1$s'

    goto :goto_0

    .line 50
    :cond_0
    const v0, 0x7f120972    # @string/night_display_summary_off 'Off / %1$s'

    .line 51
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getAutoModeSummary(Landroid/content/Context;Lcom/android/internal/app/ColorDisplayController;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 3

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/settings/display/NightDisplayTimeFormatter;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 41
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 42
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result p1

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 43
    const/4 p1, 0x0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 44
    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 45
    iget-object p1, p0, Lcom/android/settings/display/NightDisplayTimeFormatter;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
