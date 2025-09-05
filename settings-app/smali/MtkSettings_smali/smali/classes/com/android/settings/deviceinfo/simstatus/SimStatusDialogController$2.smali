.class Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;
.super Landroid/telephony/PhoneStateListener;
.source "SimStatusDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Ljava/lang/Integer;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$100(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 561
    const-string p1, "SimStatusDialogCtrl"

    const-string v0, "DataConnectionStateChanged, dialog is null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void

    .line 565
    :cond_0
    const-string v0, "SimStatusDialogCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    .line 566
    invoke-static {v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$000(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$200(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;I)V

    .line 568
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$300(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    .line 569
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$100(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 587
    const-string p1, "SimStatusDialogCtrl"

    const-string v0, "onServiceStateChanged, dialog is null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void

    .line 591
    :cond_0
    const-string v0, "SimStatusDialogCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged, serviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$500(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V

    .line 593
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$600(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V

    .line 594
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$700(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V

    .line 596
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$300(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    .line 598
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$800(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V

    .line 599
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    .line 574
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$100(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 575
    const-string p1, "SimStatusDialogCtrl"

    const-string v0, "onSignalStrengthsChanged, dialog is null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-void

    .line 579
    :cond_0
    const-string v0, "SimStatusDialogCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged, signalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->access$400(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/SignalStrength;)V

    .line 581
    return-void
.end method
