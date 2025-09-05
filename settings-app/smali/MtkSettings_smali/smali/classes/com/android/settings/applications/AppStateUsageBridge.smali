.class public Lcom/android/settings/applications/AppStateUsageBridge;
.super Lcom/android/settings/applications/AppStateAppOpsBridge;
.source "AppStateUsageBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateUsageBridge$UsageState;
    }
.end annotation


# static fields
.field public static final FILTER_APP_USAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private static final PM_PERMISSION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "android.permission.PACKAGE_USAGE_STATS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStateUsageBridge;->PM_PERMISSION:[Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/android/settings/applications/AppStateUsageBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateUsageBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 6

    .line 42
    sget-object v5, Lcom/android/settings/applications/AppStateUsageBridge;->PM_PERMISSION:[Ljava/lang/String;

    const/16 v4, 0x2b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getUsageInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateUsageBridge$UsageState;
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getPermissionInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object p1

    .line 52
    new-instance p2, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-direct {p2, p1}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    return-object p2
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    .line 47
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/applications/AppStateUsageBridge;->getUsageInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 48
    return-void
.end method
