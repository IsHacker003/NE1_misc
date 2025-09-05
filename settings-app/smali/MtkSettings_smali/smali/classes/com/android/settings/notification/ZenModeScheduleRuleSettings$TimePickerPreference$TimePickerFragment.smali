.class public Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimePickerFragment"
.end annotation


# instance fields
.field public pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 288
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 294
    const/16 v0, 0x22c

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 299
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->access$300(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->access$400(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 300
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 301
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->access$300(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result v1

    .line 302
    :goto_1
    move v5, v1

    goto :goto_2

    .line 301
    :cond_1
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_1

    .line 302
    :goto_2
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->access$400(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result p1

    .line 303
    :goto_3
    move v6, p1

    goto :goto_4

    .line 302
    :cond_2
    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    goto :goto_3

    .line 303
    :goto_4
    new-instance p1, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 303
    return-object p1
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 0

    .line 308
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    if-eqz p1, :cond_0

    .line 309
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    .line 311
    :cond_0
    return-void
.end method
