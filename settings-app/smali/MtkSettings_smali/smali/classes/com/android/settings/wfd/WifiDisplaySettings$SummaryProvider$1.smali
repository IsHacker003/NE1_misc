.class Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 921
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;

    invoke-static {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->access$2100(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V

    .line 922
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 931
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;

    invoke-static {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->access$2100(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V

    .line 932
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 926
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;

    invoke-static {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->access$2100(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V

    .line 927
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 911
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;

    invoke-static {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->access$2100(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V

    .line 912
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 916
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;

    invoke-static {p1}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->access$2100(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V

    .line 917
    return-void
.end method
