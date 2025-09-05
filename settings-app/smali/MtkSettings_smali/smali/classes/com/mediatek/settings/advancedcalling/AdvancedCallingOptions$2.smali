.class Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$2;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedCallingOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$2;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 77
    const-string v0, "OP12AdvancedCallingOptionsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive()... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v0, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    const-string p1, "OP12AdvancedCallingOptionsFragment"

    const-string v0, "IMS Registration error, disable Switch"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0, v1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$2;->setResultCode(I)V

    .line 82
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$2;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$100(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 83
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$2;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p1, p2}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$200(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 84
    :cond_0
    const-string p2, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 85
    const-string p1, "OP12AdvancedCallingOptionsFragment"

    const-string p2, "config changed, finish Advance Calling activity"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :try_start_0
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$2;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;

    move-result-object p1

    .line 88
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result p2

    .line 87
    invoke-static {p1, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object p1

    .line 89
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$2;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/android/ims/ImsConfig;->getProvisionedValue(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {p2, v0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$402(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;Z)Z

    .line 91
    const-string p1, "OP12AdvancedCallingOptionsFragment"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableLVC:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$2;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {v0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$400(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  enablePlatform:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$2;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    .line 92
    invoke-static {v0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$500(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 91
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_1

    .line 93
    :catch_0
    move-exception p1

    .line 94
    const-string p2, "OP12AdvancedCallingOptionsFragment"

    const-string v0, "Advanced settings not updated, ImsConfig null"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 97
    :goto_1
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$2;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-virtual {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 99
    :cond_2
    const-string p2, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 100
    const-string p1, "OP12AdvancedCallingOptionsFragment"

    const-string p2, "Phone state changed, so update the screen"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$2;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->access$600(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)V

    .line 103
    :cond_3
    :goto_2
    return-void
.end method
