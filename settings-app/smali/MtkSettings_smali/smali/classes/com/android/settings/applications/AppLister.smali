.class public abstract Lcom/android/settings/applications/AppLister;
.super Landroid/os/AsyncTask;
.source "AppLister.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/settings/applications/UserAppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected final mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field protected final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/os/UserManager;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/settings/applications/AppLister;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 43
    iput-object p2, p0, Lcom/android/settings/applications/AppLister;->mUm:Landroid/os/UserManager;

    .line 44
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppLister;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/UserAppInfo;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iget-object v0, p0, Lcom/android/settings/applications/AppLister;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 50
    iget-object v2, p0, Lcom/android/settings/applications/AppLister;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const v3, 0x8200

    .line 53
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x400000

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v3, v4

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 51
    invoke-virtual {v2, v3, v4}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 55
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 56
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppLister;->includeInCount(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    new-instance v4, Lcom/android/settings/applications/UserAppInfo;

    invoke-direct {v4, v1, v3}, Lcom/android/settings/applications/UserAppInfo;-><init>(Landroid/content/pm/UserInfo;Landroid/content/pm/ApplicationInfo;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    goto :goto_2

    .line 60
    :cond_2
    goto :goto_0

    .line 61
    :cond_3
    return-object p1
.end method

.method protected abstract includeInCount(Landroid/content/pm/ApplicationInfo;)Z
.end method

.method protected abstract onAppListBuilt(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/UserAppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppLister;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/UserAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppLister;->onAppListBuilt(Ljava/util/List;)V

    .line 67
    return-void
.end method
