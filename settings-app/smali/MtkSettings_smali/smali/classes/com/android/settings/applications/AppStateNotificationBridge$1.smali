.class Lcom/android/settings/applications/AppStateNotificationBridge$1;
.super Ljava/lang/Object;
.source "AppStateNotificationBridge.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateNotificationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 5

    .line 240
    invoke-static {p1}, Lcom/android/settings/applications/AppStateNotificationBridge;->access$000(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object p1

    .line 241
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 242
    iget-wide v1, p1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 244
    :cond_1
    return v0
.end method

.method public init()V
    .locals 0

    .line 236
    return-void
.end method
