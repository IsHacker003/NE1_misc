.class public interface abstract Lvendor/mediatek/hardware/lbs/V1_0/ILbs;
.super Ljava/lang/Object;
.source "ILbs.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mediatek/hardware/lbs/V1_0/ILbs$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/lbs/V1_0/ILbs;
    .locals 4

    .line 7
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 8
    return-object v0

    .line 11
    :cond_0
    const-string v1, "vendor.mediatek.hardware.lbs@1.0::ILbs"

    .line 12
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    instance-of v2, v1, Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    if-eqz v2, :cond_1

    .line 15
    check-cast v1, Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    return-object v1

    .line 18
    :cond_1
    new-instance v1, Lvendor/mediatek/hardware/lbs/V1_0/ILbs$Proxy;

    invoke-direct {v1, p0}, Lvendor/mediatek/hardware/lbs/V1_0/ILbs$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 21
    :try_start_0
    invoke-interface {v1}, Lvendor/mediatek/hardware/lbs/V1_0/ILbs;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    const-string v3, "vendor.mediatek.hardware.lbs@1.0::ILbs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 23
    return-object v1

    .line 25
    :cond_2
    goto :goto_0

    .line 27
    :cond_3
    goto :goto_1

    .line 26
    :catch_0
    move-exception p0

    .line 29
    :goto_1
    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/mediatek/hardware/lbs/V1_0/ILbs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const-string v0, "vendor.mediatek.hardware.lbs@1.0::ILbs"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/mediatek/hardware/lbs/V1_0/ILbs;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendToServerWithCallback(Lvendor/mediatek/hardware/lbs/V1_0/ILbsCallback;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/mediatek/hardware/lbs/V1_0/ILbsCallback;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
