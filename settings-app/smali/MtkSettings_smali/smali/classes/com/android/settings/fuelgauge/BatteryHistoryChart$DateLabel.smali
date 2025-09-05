.class Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;
.super Ljava/lang/Object;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DateLabel"
.end annotation


# instance fields
.field final label:Ljava/lang/String;

.field final width:I

.field final x:I


# direct methods
.method constructor <init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V
    .locals 0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    .line 347
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    if-eqz p4, :cond_0

    const-string p4, "dM"

    goto :goto_0

    :cond_0
    const-string p4, "Md"

    .line 346
    :goto_0
    invoke-static {p2, p4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 348
    invoke-static {p2, p3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    .line 349
    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    .line 350
    return-void
.end method
