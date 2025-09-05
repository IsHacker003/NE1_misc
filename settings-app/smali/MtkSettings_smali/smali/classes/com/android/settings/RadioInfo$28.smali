.class Lcom/android/settings/RadioInfo$28;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 1488
    iput-object p1, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1491
    iget-object p1, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$4200(Lcom/android/settings/RadioInfo;)I

    move-result p1

    if-eq p1, p3, :cond_1

    if-ltz p3, :cond_1

    .line 1492
    invoke-static {}, Lcom/android/settings/RadioInfo;->access$2000()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x2

    if-gt p3, p1, :cond_1

    .line 1493
    iget-object p1, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1, p3}, Lcom/android/settings/RadioInfo;->access$4202(Lcom/android/settings/RadioInfo;I)I

    .line 1501
    iget-object p1, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$3600(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 1502
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1503
    iget-object p2, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p2}, Lcom/android/settings/RadioInfo;->access$3600(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "preferred_network_mode"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    .line 1504
    invoke-static {p3}, Lcom/android/settings/RadioInfo;->access$4200(Lcom/android/settings/RadioInfo;)I

    move-result p3

    .line 1503
    invoke-static {p2, p1, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1506
    :cond_0
    iget-object p1, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Calling setPreferredNetworkType("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p3}, Lcom/android/settings/RadioInfo;->access$4200(Lcom/android/settings/RadioInfo;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/RadioInfo;->access$1000(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    .line 1507
    iget-object p1, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$2700(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1508
    iget-object p2, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p2}, Lcom/android/settings/RadioInfo;->access$3600(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p3}, Lcom/android/settings/RadioInfo;->access$4200(Lcom/android/settings/RadioInfo;)I

    move-result p3

    invoke-virtual {p2, p3, p1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1510
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1513
    return-void
.end method
