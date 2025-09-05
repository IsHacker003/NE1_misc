.class Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 1

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 936
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 937
    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 938
    const-string p2, "media_router"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter;

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouter:Landroid/media/MediaRouter;

    .line 939
    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V
    .locals 0

    .line 903
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->updateSummary()V

    return-void
.end method

.method private updateSummary()V
    .locals 5

    .line 952
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f12055e    # @string/disconnected 'Not connected'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 954
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v1}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v1

    .line 955
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 956
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v3, v2}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    .line 957
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 958
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v3

    if-nez v3, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f121025    # @string/wifi_display_status_connected 'Connected'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 960
    goto :goto_1

    .line 955
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 963
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 964
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 2

    .line 943
    if-eqz p1, :cond_0

    .line 944
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouter:Landroid/media/MediaRouter;

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 945
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->updateSummary()V

    goto :goto_0

    .line 947
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouter:Landroid/media/MediaRouter;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 949
    :goto_0
    return-void
.end method
