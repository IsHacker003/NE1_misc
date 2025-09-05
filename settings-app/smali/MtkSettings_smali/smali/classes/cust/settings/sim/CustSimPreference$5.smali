.class Lcust/settings/sim/CustSimPreference$5;
.super Ljava/lang/Object;
.source "CustSimPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcust/settings/sim/CustSimPreference;->handleUserRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/sim/CustSimPreference;

.field final synthetic val$newDefaultDataSubId:I

.field final synthetic val$telecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method constructor <init>(Lcust/settings/sim/CustSimPreference;ILandroid/telecom/TelecomManager;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcust/settings/sim/CustSimPreference$5;->this$0:Lcust/settings/sim/CustSimPreference;

    iput p2, p0, Lcust/settings/sim/CustSimPreference$5;->val$newDefaultDataSubId:I

    iput-object p3, p0, Lcust/settings/sim/CustSimPreference$5;->val$telecomManager:Landroid/telecom/TelecomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 361
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$5;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p1}, Lcust/settings/sim/CustSimPreference;->access$600(Lcust/settings/sim/CustSimPreference;)Lcom/mediatek/settings/sim/RadioPowerController;

    move-result-object p1

    iget-object p2, p0, Lcust/settings/sim/CustSimPreference$5;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p2}, Lcust/settings/sim/CustSimPreference;->access$500(Lcust/settings/sim/CustSimPreference;)I

    move-result p2

    iget-object v0, p0, Lcust/settings/sim/CustSimPreference$5;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {v0}, Lcust/settings/sim/CustSimPreference;->access$300(Lcust/settings/sim/CustSimPreference;)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/mediatek/settings/sim/RadioPowerController;->setRadionOn(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 362
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$5;->this$0:Lcust/settings/sim/CustSimPreference;

    iget-object p2, p0, Lcust/settings/sim/CustSimPreference$5;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p2}, Lcust/settings/sim/CustSimPreference;->access$300(Lcust/settings/sim/CustSimPreference;)Z

    move-result p2

    invoke-static {p1, p2}, Lcust/settings/sim/CustSimPreference;->access$702(Lcust/settings/sim/CustSimPreference;Z)Z

    .line 363
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$5;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p1}, Lcust/settings/sim/CustSimPreference;->access$100(Lcust/settings/sim/CustSimPreference;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iget p2, p0, Lcust/settings/sim/CustSimPreference$5;->val$newDefaultDataSubId:I

    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 364
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$5;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p1}, Lcust/settings/sim/CustSimPreference;->access$100(Lcust/settings/sim/CustSimPreference;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iget p2, p0, Lcust/settings/sim/CustSimPreference$5;->val$newDefaultDataSubId:I

    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 365
    const-string p1, "CustSimPreference"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "subscriptionIdToPhoneAccountHandle(newDefaultDataSubId) = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcust/settings/sim/CustSimPreference$5;->this$0:Lcust/settings/sim/CustSimPreference;

    iget v1, p0, Lcust/settings/sim/CustSimPreference$5;->val$newDefaultDataSubId:I

    invoke-static {v0, v1}, Lcust/settings/sim/CustSimPreference;->access$800(Lcust/settings/sim/CustSimPreference;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$5;->val$telecomManager:Landroid/telecom/TelecomManager;

    iget-object p2, p0, Lcust/settings/sim/CustSimPreference$5;->this$0:Lcust/settings/sim/CustSimPreference;

    iget v0, p0, Lcust/settings/sim/CustSimPreference$5;->val$newDefaultDataSubId:I

    invoke-static {p2, v0}, Lcust/settings/sim/CustSimPreference;->access$800(Lcust/settings/sim/CustSimPreference;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 367
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$5;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-virtual {p1}, Lcust/settings/sim/CustSimPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f12046f    # @string/data_switch_started 'Switching data SIM, this may take up to a minute...'

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 370
    :cond_0
    const-string p1, "CustSimPreference"

    const-string p2, "set radio power FAIL!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$5;->this$0:Lcust/settings/sim/CustSimPreference;

    iget-object p2, p0, Lcust/settings/sim/CustSimPreference$5;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p2}, Lcust/settings/sim/CustSimPreference;->access$300(Lcust/settings/sim/CustSimPreference;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcust/settings/sim/CustSimPreference;->setRadioOn(Z)V

    .line 373
    :goto_0
    return-void
.end method
