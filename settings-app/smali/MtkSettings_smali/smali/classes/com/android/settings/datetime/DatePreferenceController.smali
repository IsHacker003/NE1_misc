.class public Lcom/android/settings/datetime/DatePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DatePreferenceController.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;
    }
.end annotation


# instance fields
.field private final mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

.field private final mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/android/settings/datetime/DatePreferenceController;->mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;

    .line 53
    iput-object p3, p0, Lcom/android/settings/datetime/DatePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    .line 54
    return-void
.end method


# virtual methods
.method public buildDatePicker(Landroid/app/Activity;)Landroid/app/DatePickerDialog;
    .locals 9

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 95
    new-instance v7, Landroid/app/DatePickerDialog;

    .line 98
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 99
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 100
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 102
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 103
    const/16 p1, 0x7d7

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v8}, Ljava/util/Calendar;->set(III)V

    .line 104
    invoke-virtual {v7}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 105
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 106
    const/16 p1, 0x7f5

    const/16 v1, 0xb

    const/16 v2, 0x1f

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 107
    invoke-virtual {v7}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 108
    return-object v7
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "date"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 75
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "date"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 76
    const/4 p1, 0x0

    return p1

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datetime/DatePreferenceController;->mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;

    invoke-interface {p1}, Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;->showDatePicker()V

    .line 79
    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 89
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/settings/datetime/DatePreferenceController;->setDate(III)V

    .line 90
    iget-object p1, p0, Lcom/android/settings/datetime/DatePreferenceController;->mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;

    iget-object p2, p0, Lcom/android/settings/datetime/DatePreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p2}, Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method setDate(III)V
    .locals 4

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 116
    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 117
    const/4 p1, 0x5

    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 118
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const-wide v0, 0x1160d1b4800L

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 120
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p3, v0, v2

    if-gez p3, :cond_0

    .line 121
    iget-object p3, p0, Lcom/android/settings/datetime/DatePreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AlarmManager;

    invoke-virtual {p3, p1, p2}, Landroid/app/AlarmManager;->setTime(J)V

    .line 123
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 63
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/android/settings/datetime/DatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/settings/datetime/DatePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 71
    :cond_1
    return-void
.end method
