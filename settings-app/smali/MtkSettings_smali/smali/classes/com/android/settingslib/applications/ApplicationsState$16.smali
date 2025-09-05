.class Lcom/android/settingslib/applications/ApplicationsState$16;
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


# instance fields
.field private mHidePackageNames:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 2

    .line 1667
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$16;->mHidePackageNames:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1668
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1669
    return v1

    .line 1670
    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1672
    return v1

    .line 1676
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public init()V
    .locals 0

    .line 1663
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 1657
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1658
    const v0, 0x107002f    # @android:array/config_keyboardTapVibePattern

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$16;->mHidePackageNames:[Ljava/lang/String;

    .line 1659
    return-void
.end method
