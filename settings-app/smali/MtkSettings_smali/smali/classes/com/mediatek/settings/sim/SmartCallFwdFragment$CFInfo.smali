.class Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;
.super Ljava/lang/Object;
.source "SmartCallFwdFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/sim/SmartCallFwdFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CFInfo"
.end annotation


# instance fields
.field public action:I

.field public callwait:I

.field public error:I

.field public phnum:Ljava/lang/String;

.field public reason:I

.field public simId:I

.field public status:I

.field final synthetic this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)V
    .locals 1

    .line 865
    iput-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    const/4 p1, 0x0

    iput p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->simId:I

    .line 867
    iput p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->status:I

    .line 868
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->reason:I

    .line 869
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->phnum:Ljava/lang/String;

    .line 870
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->error:I

    .line 871
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    .line 872
    iput p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->callwait:I

    .line 873
    return-void
.end method
