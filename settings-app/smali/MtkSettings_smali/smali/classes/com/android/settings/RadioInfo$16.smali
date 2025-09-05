.class Lcom/android/settings/RadioInfo$16;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 1303
    iput-object p1, p0, Lcom/android/settings/RadioInfo$16;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1306
    iget-object p1, p0, Lcom/android/settings/RadioInfo$16;->this$0:Lcom/android/settings/RadioInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toggle radio power: currently "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/RadioInfo$16;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$3800(Lcom/android/settings/RadioInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/RadioInfo;->access$1000(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    .line 1307
    iget-object p1, p0, Lcom/android/settings/RadioInfo$16;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$3600(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1308
    return-void
.end method
