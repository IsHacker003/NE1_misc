.class public Lcom/android/settings/wrapper/OverlayManagerWrapper;
.super Ljava/lang/Object;
.source "OverlayManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;
    }
.end annotation


# instance fields
.field private final mOverlayManager:Landroid/content/om/IOverlayManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    const-string v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wrapper/OverlayManagerWrapper;-><init>(Landroid/content/om/IOverlayManager;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/om/IOverlayManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 34
    return-void
.end method


# virtual methods
.method public getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-nez v0, :cond_0

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 45
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 46
    invoke-interface {v0, p1, p2}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 49
    new-instance v1, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayInfo;

    invoke-direct {v1, v2}, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;-><init>(Landroid/content/om/OverlayInfo;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    return-object p2

    .line 52
    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setEnabled(Ljava/lang/String;ZI)Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-nez v0, :cond_0

    .line 59
    const/4 p1, 0x0

    return p1

    .line 62
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 63
    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-nez v0, :cond_0

    .line 70
    const/4 p1, 0x0

    return p1

    .line 73
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wrapper/OverlayManagerWrapper;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v0, p1, p2}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 74
    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
