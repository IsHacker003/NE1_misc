.class public Lcom/android/settings/applications/appops/AppOpsCategory;
.super Landroid/app/ListFragment;
.source "AppOpsCategory.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;,
        Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;,
        Lcom/android/settings/applications/appops/AppOpsCategory$PackageIntentReceiver;,
        Lcom/android/settings/applications/appops/AppOpsCategory$InterestingConfigChanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

.field mState:Lcom/android/settings/applications/appops/AppOpsState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string v1, "template"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appops/AppOpsCategory;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 310
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 314
    const-string p1, "No applications"

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 317
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory;->setHasOptionsMenu(Z)V

    .line 320
    new-instance p1, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appops/AppOpsState;)V

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    .line 321
    iget-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 324
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsCategory;->setListShown(Z)V

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 328
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 305
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 306
    new-instance p1, Lcom/android/settings/applications/appops/AppOpsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/applications/appops/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    .line 307
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;>;"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 349
    nop

    .line 350
    if-eqz p1, :cond_0

    .line 351
    const-string p2, "template"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    goto :goto_0

    .line 353
    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;

    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    invoke-direct {p2, v0, v1, p1}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListLoader;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appops/AppOpsState;Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;)V

    return-object p2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .line 331
    iget-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    invoke-virtual {p1, p3}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->getItem(I)Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    move-result-object p1

    .line 332
    if-eqz p1, :cond_1

    .line 334
    const p3, 0x7f0a0245    # @id/op_switch

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    .line 335
    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p3

    .line 336
    const/4 p4, 0x1

    xor-int/2addr p3, p4

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 337
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object p5

    .line 338
    if-eqz p3, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    move p2, p4

    :goto_0
    iget-object p3, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mState:Lcom/android/settings/applications/appops/AppOpsState;

    invoke-virtual {p3}, Lcom/android/settings/applications/appops/AppOpsState;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p3

    invoke-virtual {p5}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result p4

    .line 340
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    iget p5, p5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 341
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 339
    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 343
    invoke-virtual {p1, p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->overridePrimaryOpMode(I)V

    .line 345
    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appops/AppOpsCategory;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .line 358
    iget-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->setData(Ljava/util/List;)V

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/AppOpsCategory;->isResumed()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/appops/AppOpsCategory;->setListShown(Z)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/appops/AppOpsCategory;->setListShownNoAnimation(Z)V

    .line 366
    :goto_0
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;>;)V"
        }
    .end annotation

    .line 370
    iget-object p1, p0, Lcom/android/settings/applications/appops/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/appops/AppOpsCategory$AppListAdapter;->setData(Ljava/util/List;)V

    .line 371
    return-void
.end method
