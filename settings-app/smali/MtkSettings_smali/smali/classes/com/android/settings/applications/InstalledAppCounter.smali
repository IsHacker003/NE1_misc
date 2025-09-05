.class public abstract Lcom/android/settings/applications/InstalledAppCounter;
.super Lcom/android/settings/applications/AppCounter;
.source "InstalledAppCounter.java"


# instance fields
.field private final mInstallReason:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/settingslib/wrapper/PackageManagerWrapper;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p3}, Lcom/android/settings/applications/AppCounter;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;)V

    .line 40
    iput p2, p0, Lcom/android/settings/applications/InstalledAppCounter;->mInstallReason:I

    .line 41
    return-void
.end method

.method public static includeInCount(ILcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/ApplicationInfo;)Z
    .locals 5

    .line 50
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 51
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 52
    invoke-virtual {p1, v2, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    if-eq v2, p0, :cond_0

    .line 54
    return v1

    .line 56
    :cond_0
    iget p0, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x80

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    .line 57
    return v2

    .line 59
    :cond_1
    iget p0, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p0, v2

    if-nez p0, :cond_2

    .line 60
    return v2

    .line 62
    :cond_2
    new-instance p0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    .line 63
    invoke-virtual {p0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 65
    const p2, 0xc0200

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 71
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .line 45
    iget v0, p0, Lcom/android/settings/applications/InstalledAppCounter;->mInstallReason:I

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppCounter;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-static {v0, v1, p1}, Lcom/android/settings/applications/InstalledAppCounter;->includeInCount(ILcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    return p1
.end method
