.class Lcom/android/settings/applications/AppStateInstallAppsBridge$1;
.super Ljava/lang/Object;
.source "AppStateInstallAppsBridge.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateInstallAppsBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 1

    .line 139
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    if-nez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    .line 143
    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isPotentialAppSource()Z

    move-result p1

    return p1

    .line 140
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public init()V
    .locals 0

    .line 135
    return-void
.end method
