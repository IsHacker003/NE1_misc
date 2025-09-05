.class Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;
.super Ljava/lang/Object;
.source "ManagerConfigulationtReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/ManagerConfigulationtReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigulationSimInfo"
.end annotation


# instance fields
.field public autoDateTime:I

.field public autoTimeZone:I

.field public hourFormat:I

.field public mcc:I

.field public mnc:I

.field final synthetic this$0:Lcust/settings/ManagerConfigulationtReceiver;


# direct methods
.method public constructor <init>(Lcust/settings/ManagerConfigulationtReceiver;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->this$0:Lcust/settings/ManagerConfigulationtReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    const/4 p1, -0x1

    iput p1, p0, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->mcc:I

    .line 412
    iput p1, p0, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->mnc:I

    .line 413
    iput p1, p0, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->autoDateTime:I

    .line 414
    iput p1, p0, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->autoTimeZone:I

    .line 415
    iput p1, p0, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->hourFormat:I

    .line 419
    return-void
.end method


# virtual methods
.method public updateConfigulationSimInfo(ILjava/lang/String;)V
    .locals 0

    .line 432
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 448
    :pswitch_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->hourFormat:I

    .line 449
    goto :goto_0

    .line 443
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->autoTimeZone:I

    .line 444
    goto :goto_0

    .line 440
    :pswitch_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->autoDateTime:I

    .line 441
    goto :goto_0

    .line 437
    :pswitch_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->mnc:I

    .line 438
    goto :goto_0

    .line 434
    :pswitch_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->mcc:I

    .line 435
    nop

    .line 455
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
