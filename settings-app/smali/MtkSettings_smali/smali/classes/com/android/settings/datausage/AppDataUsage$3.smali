.class Lcom/android/settings/datausage/AppDataUsage$3;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/util/ArraySet<",
        "Landroid/support/v7/preference/Preference;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/util/ArraySet<",
            "Landroid/support/v7/preference/Preference;",
            ">;>;"
        }
    .end annotation

    .line 405
    new-instance p1, Lcom/android/settings/datausage/AppPrefLoader;

    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2}, Lcom/android/settings/datausage/AppDataUsage;->access$800(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->access$900(Lcom/android/settings/datausage/AppDataUsage;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/settings/datausage/AppDataUsage;->access$1000(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lcom/android/settings/datausage/AppPrefLoader;-><init>(Landroid/content/Context;Landroid/util/ArraySet;Landroid/content/pm/PackageManager;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/util/ArraySet<",
            "Landroid/support/v7/preference/Preference;",
            ">;>;",
            "Landroid/util/ArraySet<",
            "Landroid/support/v7/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 411
    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->access$1100(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/preference/Preference;

    .line 413
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->access$1100(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 414
    goto :goto_0

    .line 416
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 402
    check-cast p2, Landroid/util/ArraySet;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsage$3;->onLoadFinished(Landroid/content/Loader;Landroid/util/ArraySet;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/util/ArraySet<",
            "Landroid/support/v7/preference/Preference;",
            ">;>;)V"
        }
    .end annotation

    .line 420
    return-void
.end method
