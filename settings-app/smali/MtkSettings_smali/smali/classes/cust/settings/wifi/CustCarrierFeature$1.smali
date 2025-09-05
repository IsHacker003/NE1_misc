.class Lcust/settings/wifi/CustCarrierFeature$1;
.super Landroid/content/BroadcastReceiver;
.source "CustCarrierFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcust/settings/wifi/CustCarrierFeature;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/wifi/CustCarrierFeature;


# direct methods
.method constructor <init>(Lcust/settings/wifi/CustCarrierFeature;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcust/settings/wifi/CustCarrierFeature$1;->this$0:Lcust/settings/wifi/CustCarrierFeature;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 62
    const-string p2, "CustCarrierFeature"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoadConfigReceiver action ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcust/settings/wifi/CustCarrierFeature$1;->this$0:Lcust/settings/wifi/CustCarrierFeature;

    const-string p2, "oem_config_wifi_carrier_eap_string_array"

    invoke-static {p1, p2}, Lcust/settings/wifi/CustCarrierFeature;->access$100(Lcust/settings/wifi/CustCarrierFeature;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcust/settings/wifi/CustCarrierFeature;->access$002([Ljava/lang/String;)[Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcust/settings/wifi/CustCarrierFeature$1;->this$0:Lcust/settings/wifi/CustCarrierFeature;

    const-string p2, "oem_config_wifi_carrier_open_string_array"

    invoke-static {p1, p2}, Lcust/settings/wifi/CustCarrierFeature;->access$100(Lcust/settings/wifi/CustCarrierFeature;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcust/settings/wifi/CustCarrierFeature;->access$202([Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    :cond_0
    return-void
.end method
