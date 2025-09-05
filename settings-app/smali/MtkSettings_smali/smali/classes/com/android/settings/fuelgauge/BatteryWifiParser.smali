.class public Lcom/android/settings/fuelgauge/BatteryWifiParser;
.super Lcom/android/settings/fuelgauge/BatteryFlagParser;
.source "BatteryWifiParser.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    .line 24
    return-void
.end method


# virtual methods
.method protected isSet(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 1

    .line 28
    iget p1, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x0

    shr-int/2addr p1, v0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 38
    const/4 p1, 0x1

    return p1

    .line 36
    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
