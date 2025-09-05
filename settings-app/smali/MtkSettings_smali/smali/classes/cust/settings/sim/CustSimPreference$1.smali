.class Lcust/settings/sim/CustSimPreference$1;
.super Ljava/lang/Object;
.source "CustSimPreference.java"

# interfaces
.implements Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcust/settings/sim/CustSimPreference;->registHotSwap()V
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

    .line 129
    iput-object p1, p0, Lcust/settings/sim/CustSimPreference$1;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimHotSwap()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference$1;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-virtual {v0}, Lcust/settings/sim/CustSimPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "CustSimPreference"

    const-string v1, "onSimHotSwap, finish Activity~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference$1;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-virtual {v0}, Lcust/settings/sim/CustSimPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 136
    :cond_0
    return-void
.end method
