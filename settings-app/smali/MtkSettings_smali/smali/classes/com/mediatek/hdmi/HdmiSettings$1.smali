.class Lcom/mediatek/hdmi/HdmiSettings$1;
.super Landroid/os/Handler;
.source "HdmiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/HdmiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/hdmi/HdmiSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/hdmi/HdmiSettings;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings$1;->this$0:Lcom/mediatek/hdmi/HdmiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 68
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 63
    :pswitch_0
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings$1;->this$0:Lcom/mediatek/hdmi/HdmiSettings;

    invoke-static {p1}, Lcom/mediatek/hdmi/HdmiSettings;->access$000(Lcom/mediatek/hdmi/HdmiSettings;)Landroid/support/v7/preference/ListPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings$1;->this$0:Lcom/mediatek/hdmi/HdmiSettings;

    invoke-static {p1}, Lcom/mediatek/hdmi/HdmiSettings;->access$000(Lcom/mediatek/hdmi/HdmiSettings;)Landroid/support/v7/preference/ListPreference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings$1;->this$0:Lcom/mediatek/hdmi/HdmiSettings;

    invoke-static {p1}, Lcom/mediatek/hdmi/HdmiSettings;->access$000(Lcom/mediatek/hdmi/HdmiSettings;)Landroid/support/v7/preference/ListPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings$1;->this$0:Lcom/mediatek/hdmi/HdmiSettings;

    invoke-static {p1}, Lcom/mediatek/hdmi/HdmiSettings;->access$000(Lcom/mediatek/hdmi/HdmiSettings;)Landroid/support/v7/preference/ListPreference;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 70
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
