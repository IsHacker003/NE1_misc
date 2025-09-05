.class public Lcom/android/settings/datetime/TimePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TimePreferenceController.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;
    }
.end annotation


# instance fields
.field private final mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

.field private final mHost:Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p2, p0, Lcom/android/settings/datetime/TimePreferenceController;->mHost:Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;

    .line 54
    iput-object p3, p0, Lcom/android/settings/datetime/TimePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    .line 55
    return-void
.end method


# virtual methods
.method public buildTimePicker(Landroid/app/Activity;)Landroid/app/TimePickerDialog;
    .locals 8

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 101
    new-instance v7, Landroid/app/TimePickerDialog;

    .line 104
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 105
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 106
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 101
    return-object v7
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 85
    const-string v0, "time"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 76
    const-string v0, "time"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 77
    const/4 p1, 0x0

    return p1

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datetime/TimePreferenceController;->mHost:Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;

    invoke-interface {p1}, Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;->showTimePicker()V

    .line 80
    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/android/settings/datetime/TimePreferenceController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/datetime/TimePreferenceController;->setTime(II)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/datetime/TimePreferenceController;->mHost:Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;

    iget-object p2, p0, Lcom/android/settings/datetime/TimePreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p2}, Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 97
    :cond_0
    return-void
.end method

.method setTime(II)V
    .locals 4

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 112
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 113
    const/16 p1, 0xc

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 114
    const/4 p1, 0x0

    const/16 p2, 0xd

    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 115
    const/16 p2, 0xe

    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 116
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const-wide v0, 0x1160d1b4800L

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 118
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/datetime/TimePreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/AlarmManager;->setTime(J)V

    .line 121
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 64
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/settings/datetime/TimePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/settings/datetime/TimePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 72
    :cond_1
    return-void
.end method
