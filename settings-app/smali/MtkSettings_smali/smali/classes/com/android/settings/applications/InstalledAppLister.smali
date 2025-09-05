.class public abstract Lcom/android/settings/applications/InstalledAppLister;
.super Lcom/android/settings/applications/AppLister;
.source "InstalledAppLister.java"


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/os/UserManager;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/AppLister;-><init>(Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/os/UserManager;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppLister;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/android/settings/applications/InstalledAppCounter;->includeInCount(ILcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    return p1
.end method
