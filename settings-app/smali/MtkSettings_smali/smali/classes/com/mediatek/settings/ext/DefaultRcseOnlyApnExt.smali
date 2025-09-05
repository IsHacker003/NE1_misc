.class public Lcom/mediatek/settings/ext/DefaultRcseOnlyApnExt;
.super Ljava/lang/Object;
.source "DefaultRcseOnlyApnExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IRcseOnlyApnExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRcseOnlyApnEnabled(Ljava/lang/String;)Z
    .locals 0

    .line 10
    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Lcom/mediatek/settings/ext/IRcseOnlyApnExt$OnRcseOnlyApnStateChangedListener;I)V
    .locals 0

    .line 17
    return-void
.end method

.method public onDestory()V
    .locals 0

    .line 22
    return-void
.end method
