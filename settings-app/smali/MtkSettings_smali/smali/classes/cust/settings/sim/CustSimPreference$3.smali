.class Lcust/settings/sim/CustSimPreference$3;
.super Ljava/lang/Object;
.source "CustSimPreference.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcust/settings/sim/CustSimPreference;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/sim/CustSimPreference;


# direct methods
.method constructor <init>(Lcust/settings/sim/CustSimPreference;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcust/settings/sim/CustSimPreference$3;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 2

    .line 287
    const-string p1, "CustSimPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++onBeforeCheckedChanged  checked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$3;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p1, p2}, Lcust/settings/sim/CustSimPreference;->access$302(Lcust/settings/sim/CustSimPreference;Z)Z

    .line 291
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference$3;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p1}, Lcust/settings/sim/CustSimPreference;->access$400(Lcust/settings/sim/CustSimPreference;)V

    .line 292
    const/4 p1, 0x0

    return p1
.end method
