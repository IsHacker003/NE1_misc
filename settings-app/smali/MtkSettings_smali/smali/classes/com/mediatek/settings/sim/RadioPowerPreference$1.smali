.class Lcom/mediatek/settings/sim/RadioPowerPreference$1;
.super Ljava/lang/Object;
.source "RadioPowerPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/sim/RadioPowerPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/sim/RadioPowerPreference;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 114
    iget-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged, mPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->access$000(Lcom/mediatek/settings/sim/RadioPowerPreference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    .line 115
    invoke-static {v1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->access$100(Lcom/mediatek/settings/sim/RadioPowerPreference;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {p1, v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->access$200(Lcom/mediatek/settings/sim/RadioPowerPreference;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {p1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->access$000(Lcom/mediatek/settings/sim/RadioPowerPreference;)Z

    move-result p1

    if-eq p1, p2, :cond_1

    .line 117
    iget-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {p1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->access$300(Lcom/mediatek/settings/sim/RadioPowerPreference;)Lcom/mediatek/settings/sim/RadioPowerController;

    move-result-object p1

    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->access$100(Lcom/mediatek/settings/sim/RadioPowerPreference;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/mediatek/settings/sim/RadioPowerController;->setRadionOn(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged, mPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->access$200(Lcom/mediatek/settings/sim/RadioPowerPreference;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {p1, p2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->access$002(Lcom/mediatek/settings/sim/RadioPowerPreference;Z)Z

    .line 121
    iget-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setRadioEnabled(Z)V

    .line 123
    iget-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {p1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->access$400(Lcom/mediatek/settings/sim/RadioPowerPreference;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object p1

    iget-object p2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {p2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->access$000(Lcom/mediatek/settings/sim/RadioPowerPreference;)Z

    move-result p2

    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->access$100(Lcom/mediatek/settings/sim/RadioPowerPreference;)I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/mediatek/settings/ext/ISimManagementExt;->customizeMainCapabily(ZI)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    const-string v0, "onCheckedChanged, set radio power FAIL."

    invoke-static {p1, v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->access$200(Lcom/mediatek/settings/sim/RadioPowerPreference;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setRadioOn(Z)V

    .line 131
    :cond_1
    :goto_0
    return-void
.end method
