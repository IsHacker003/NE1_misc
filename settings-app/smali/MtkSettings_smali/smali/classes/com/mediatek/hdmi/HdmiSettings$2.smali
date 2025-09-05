.class Lcom/mediatek/hdmi/HdmiSettings$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/mediatek/hdmi/HdmiSettings;Landroid/os/Handler;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings$2;->this$0:Lcom/mediatek/hdmi/HdmiSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 81
    const-string v0, "@M_HDMISettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHdmiSettingsObserver onChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings$2;->this$0:Lcom/mediatek/hdmi/HdmiSettings;

    invoke-static {p1}, Lcom/mediatek/hdmi/HdmiSettings;->access$100(Lcom/mediatek/hdmi/HdmiSettings;)V

    .line 83
    return-void
.end method
