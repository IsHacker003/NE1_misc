.class Lcom/mediatek/lbs/em2/utils/AgpsInterface$LbsHidlCallback;
.super Lvendor/mediatek/hardware/lbs/V1_0/ILbsCallback$Stub;
.source "AgpsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em2/utils/AgpsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LbsHidlCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em2/utils/AgpsInterface;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em2/utils/AgpsInterface;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface$LbsHidlCallback;->this$0:Lcom/mediatek/lbs/em2/utils/AgpsInterface;

    invoke-direct {p0}, Lvendor/mediatek/hardware/lbs/V1_0/ILbsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackToClient(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface$LbsHidlCallback;->this$0:Lcom/mediatek/lbs/em2/utils/AgpsInterface;

    iput-object p1, v0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->mData:Ljava/util/ArrayList;

    .line 203
    const/4 p1, 0x1

    return p1
.end method
