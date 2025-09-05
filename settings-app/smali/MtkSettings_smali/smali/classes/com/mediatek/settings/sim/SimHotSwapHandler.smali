.class public Lcom/mediatek/settings/sim/SimHotSwapHandler;
.super Ljava/lang/Object;
.source "SimHotSwapHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;

.field private mSubReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/mediatek/settings/sim/SimHotSwapHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/sim/SimHotSwapHandler$1;-><init>(Lcom/mediatek/settings/sim/SimHotSwapHandler;)V

    iput-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 68
    iget-object p1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionInfoList:Ljava/util/List;

    .line 69
    const-string p1, "SimHotSwapHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/sim/SimHotSwapHandler;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->handleHotSwap()V

    return-void
.end method

.method private handleHotSwap()V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 92
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 93
    const-string v1, "SimHotSwapHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleHotSwap, handler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", currentSubIdList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionInfoList:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->hasHotSwapHappened(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mListener:Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mListener:Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;

    invoke-interface {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;->onSimHotSwap()V

    .line 99
    :cond_0
    return-void
.end method

.method private hasHotSwapHappened(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 111
    nop

    .line 112
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 113
    move v1, v0

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 113
    :goto_0
    if-nez p2, :cond_1

    .line 115
    move v2, v0

    goto :goto_1

    .line 113
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 115
    :goto_1
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 116
    return v0

    .line 118
    :cond_2
    const/4 v3, 0x1

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    goto :goto_4

    .line 124
    :cond_3
    move v1, v0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 125
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 126
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 127
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 128
    nop

    .line 129
    nop

    .line 133
    move v0, v3

    goto :goto_3

    .line 124
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 133
    :cond_5
    :goto_3
    const-string p1, "SimHotSwapHandler"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasHotSwapHappened, result="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v0

    .line 120
    :cond_6
    :goto_4
    const-string p1, "SimHotSwapHandler"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hasHotSwapHappened, SIM count is different, oriCount="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", curCount="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v3
.end method


# virtual methods
.method public registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    iput-object p1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mListener:Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;

    .line 77
    const-string v0, "SimHotSwapHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerOnSimHotSwap, handler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    return-void
.end method

.method public unregisterOnSimHotSwap()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    const-string v0, "SimHotSwapHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterOnSimHotSwap, handler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mListener:Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;

    .line 88
    return-void
.end method
