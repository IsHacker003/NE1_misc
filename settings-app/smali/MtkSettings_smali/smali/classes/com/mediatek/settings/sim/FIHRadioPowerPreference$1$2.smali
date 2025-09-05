.class Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;
.super Ljava/lang/Object;
.source "FIHRadioPowerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;

.field final synthetic val$isChecked:Z

.field final synthetic val$newDefaultDataSubId:I

.field final synthetic val$telecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;ZILandroid/telecom/TelecomManager;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->this$1:Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;

    iput-boolean p2, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->val$isChecked:Z

    iput p3, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->val$newDefaultDataSubId:I

    iput-object p4, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->val$telecomManager:Landroid/telecom/TelecomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 160
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->this$1:Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;

    iget-object p1, p1, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {p1}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$200(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)Lcom/mediatek/settings/sim/RadioPowerController;

    move-result-object p1

    iget-object p2, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->this$1:Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;

    iget-object p2, p2, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {p2}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$100(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)I

    move-result p2

    iget-boolean v0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->val$isChecked:Z

    invoke-virtual {p1, p2, v0}, Lcom/mediatek/settings/sim/RadioPowerController;->setRadionOn(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->this$1:Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;

    iget-object p1, p1, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    iget-object p1, p1, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget p2, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->val$newDefaultDataSubId:I

    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 162
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->this$1:Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;

    iget-object p1, p1, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    iget-object p1, p1, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget p2, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->val$newDefaultDataSubId:I

    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 163
    const-string p1, "FIHRadioPowerPreference"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "subscriptionIdToPhoneAccountHandle(newDefaultDataSubId) = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->this$1:Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;

    iget-object v0, v0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    iget v1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->val$newDefaultDataSubId:I

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$400(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->val$telecomManager:Landroid/telecom/TelecomManager;

    iget-object p2, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->this$1:Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;

    iget-object p2, p2, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    iget v0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->val$newDefaultDataSubId:I

    invoke-static {p2, v0}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$400(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 165
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->this$1:Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;

    iget-object p1, p1, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-virtual {p1}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f12046f    # @string/data_switch_started 'Switching data SIM, this may take up to a minute...'

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 169
    :cond_0
    const-string p1, "FIHRadioPowerPreference"

    const-string p2, "set radio power FAIL!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->this$1:Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;

    iget-object p1, p1, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    iget-boolean p2, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;->val$isChecked:Z

    invoke-virtual {p1, p2}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->setRadioOn(Z)V

    .line 172
    :goto_0
    return-void
.end method
