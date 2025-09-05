.class Lcom/android/settings/sim/SimDialogActivity$5;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I

.field final synthetic val$subInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;ILandroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iput p2, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$id:I

    iput-object p3, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$subInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 284
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$600()Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$id:I

    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    invoke-interface {p1, v0, p2, v1}, Lcom/mediatek/settings/ext/ISimManagementExt;->simDialogOnClick(IILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Handle the click event in plugin."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {p1}, Lcom/android/settings/sim/SimDialogActivity;->access$100(Lcom/android/settings/sim/SimDialogActivity;)V

    .line 287
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {p1}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    .line 288
    return-void

    .line 294
    :cond_0
    iget p1, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$id:I

    packed-switch p1, :pswitch_data_0

    .line 353
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid dialog type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in SIM dialog."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 347
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$subInfoList:Ljava/util/List;

    invoke-static {p1, v0, p2}, Lcom/android/settings/sim/SimDialogActivity;->access$700(Lcom/android/settings/sim/SimDialogActivity;Ljava/util/List;I)I

    move-result p1

    .line 348
    iget-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/settings/sim/SimDialogActivity;->access$400(Landroid/content/Context;I)V

    .line 351
    goto/16 :goto_3

    .line 324
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    .line 325
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p1

    .line 326
    nop

    .line 327
    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object p1

    .line 329
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneAccountsList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 336
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone account changed, do noting. value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", phone account size="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 336
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    goto/16 :goto_3

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    .line 343
    const/4 v1, 0x1

    if-ge p2, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    sub-int/2addr p2, v1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 342
    :goto_0
    invoke-static {v0, p1}, Lcom/android/settings/sim/SimDialogActivity;->access$500(Lcom/android/settings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    .line 344
    goto :goto_3

    .line 296
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$subInfoList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    .line 299
    if-nez p1, :cond_3

    .line 300
    const/4 p1, -0x1

    goto :goto_1

    .line 301
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 302
    :goto_1
    iget-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    invoke-static {p2}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCardCompetionForData(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 304
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p2

    .line 305
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currnt default subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-eq p2, p1, :cond_5

    .line 309
    iget-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    invoke-static {p2}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 310
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    const p2, 0x7f120504    # @string/default_data_switch_err_msg1 'Can not switch preferred SIM for cellular data during the call.'

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 312
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 314
    :cond_4
    iget-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    invoke-static {p2, v0, p1}, Lcom/android/settings/sim/SimDialogActivity;->access$300(Lcom/android/settings/sim/SimDialogActivity;Landroid/content/Context;I)V

    .line 317
    :cond_5
    :goto_2
    goto :goto_3

    .line 318
    :cond_6
    iget-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$5;->val$context:Landroid/content/Context;

    invoke-static {p2, v0, p1}, Lcom/android/settings/sim/SimDialogActivity;->access$300(Lcom/android/settings/sim/SimDialogActivity;Landroid/content/Context;I)V

    .line 322
    nop

    .line 358
    :goto_3
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {p1}, Lcom/android/settings/sim/SimDialogActivity;->access$100(Lcom/android/settings/sim/SimDialogActivity;)V

    .line 360
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$5;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {p1}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    .line 361
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
