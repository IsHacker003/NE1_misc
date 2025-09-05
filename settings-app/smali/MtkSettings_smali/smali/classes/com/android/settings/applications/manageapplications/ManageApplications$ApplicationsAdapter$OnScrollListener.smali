.class public Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnScrollListener"
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

.field private mDelayNotifyDataChange:Z

.field private mScrollState:I


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V
    .locals 1

    .line 1377
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 1373
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mScrollState:I

    .line 1378
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    .line 1379
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 1383
    iput p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mScrollState:I

    .line 1384
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mScrollState:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mDelayNotifyDataChange:Z

    if-eqz p1, :cond_0

    .line 1385
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mDelayNotifyDataChange:Z

    .line 1386
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 1388
    :cond_0
    return-void
.end method

.method public postNotifyItemChange(I)V
    .locals 1

    .line 1391
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mScrollState:I

    if-nez v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 1394
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->mDelayNotifyDataChange:Z

    .line 1396
    :goto_0
    return-void
.end method
