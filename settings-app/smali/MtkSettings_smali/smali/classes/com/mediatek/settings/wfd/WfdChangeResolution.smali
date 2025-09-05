.class public Lcom/mediatek/settings/wfd/WfdChangeResolution;
.super Ljava/lang/Object;
.source "WfdChangeResolution.java"


# static fields
.field public static final DEVICE_RESOLUTION_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Integer;

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/mediatek/settings/wfd/WfdChangeResolution;->DEVICE_RESOLUTION_LIST:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdChangeResolution;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public onOptionMenuSelected(Landroid/view/MenuItem;Landroid/app/FragmentManager;)Z
    .locals 1

    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 73
    new-instance p1, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;

    invoke-direct {p1}, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;-><init>()V

    const-string v0, "change resolution"

    invoke-virtual {p1, p2, v0}, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 75
    const/4 p1, 0x1

    return p1

    .line 77
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
