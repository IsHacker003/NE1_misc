.class Lcom/android/settingslib/applications/ApplicationsState$10;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 2

    .line 1587
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1588
    return v1

    .line 1589
    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p1, v1}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1590
    return v1

    .line 1592
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public init()V
    .locals 0

    .line 1583
    return-void
.end method
