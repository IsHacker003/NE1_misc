.class Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedWifiCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$1;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 111
    const-string v0, "OP12AdvancedWifiCallingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive()... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v0, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string p1, "OP12AdvancedWifiCallingSettings"

    const-string v0, "IMS Registration error, disable WFC Switch"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$1;->setResultCode(I)V

    .line 115
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$1;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;

    invoke-static {v0}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->access$000(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 116
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$1;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;

    invoke-static {p1, p2}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->access$100(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    :cond_0
    const-string p2, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 118
    const-string p1, "OP12AdvancedWifiCallingSettings"

    const-string p2, "config changed, finish WFC activity"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$1;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;

    invoke-virtual {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 121
    :cond_1
    const-string p2, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 122
    const-string p1, "OP12AdvancedWifiCallingSettings"

    const-string p2, "Phone state changed, so update the screen"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$1;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->access$200(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;)V

    .line 125
    :cond_2
    :goto_0
    return-void
.end method
