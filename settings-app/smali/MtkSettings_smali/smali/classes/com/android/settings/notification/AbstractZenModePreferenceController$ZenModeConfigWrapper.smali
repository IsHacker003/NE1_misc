.class Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;
.super Ljava/lang/Object;
.source "AbstractZenModePreferenceController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/AbstractZenModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZenModeConfigWrapper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->mContext:Landroid/content/Context;

    .line 171
    return-void
.end method

.method private isToday(J)Z
    .locals 0

    .line 187
    invoke-static {p1, p2}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected getFormattedTime(JI)Ljava/lang/CharSequence;
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->isToday(J)Z

    move-result v1

    invoke-static {v0, p1, p2, v1, p3}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected isTimeRule(Landroid/net/Uri;)Z
    .locals 1

    .line 178
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 178
    :goto_1
    return p1
.end method

.method protected parseAutomaticRuleEndTime(Landroid/net/Uri;)J
    .locals 6

    .line 195
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 200
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;

    move-result-object p1

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/service/notification/ScheduleCalendar;->getNextChangeTime(J)J

    move-result-wide v0

    .line 205
    invoke-virtual {p1}, Landroid/service/notification/ScheduleCalendar;->exitAtAlarm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->access$000(Landroid/content/Context;)J

    move-result-wide v2

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/service/notification/ScheduleCalendar;->maybeSetNextAlarm(JJ)V

    .line 208
    invoke-virtual {p1, v0, v1}, Landroid/service/notification/ScheduleCalendar;->shouldExitForAlarm(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 209
    return-wide v2

    .line 213
    :cond_1
    return-wide v0

    .line 216
    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected parseManualRuleTime(Landroid/net/Uri;)J
    .locals 2

    .line 191
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method
