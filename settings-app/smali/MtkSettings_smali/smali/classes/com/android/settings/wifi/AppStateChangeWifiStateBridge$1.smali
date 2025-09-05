.class Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$1;
.super Ljava/lang/Object;
.source "AppStateChangeWifiStateBridge.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 3

    .line 87
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    .line 91
    iget-object v1, p1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->packageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 94
    const-string v2, "android.permission.NETWORK_SETTINGS"

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    return v0

    .line 102
    :cond_1
    iget-boolean p1, p1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->permissionDeclared:Z

    return p1

    .line 88
    :cond_2
    :goto_0
    return v0
.end method

.method public init()V
    .locals 0

    .line 83
    return-void
.end method
