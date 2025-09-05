.class Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    .line 1405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1406
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    .line 1407
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 1408
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/applications/manageapplications/ManageApplications$1;)V
    .locals 0

    .line 1400
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;)Landroid/content/Context;
    .locals 0

    .line 1400
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;)Lcom/android/settings/dashboard/SummaryLoader;
    .locals 0

    .line 1400
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-object p0
.end method


# virtual methods
.method public setListening(Z)V
    .locals 4

    .line 1412
    if-eqz p1, :cond_0

    .line 1413
    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    new-instance v2, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    .line 1414
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;Landroid/content/Context;ILcom/android/settingslib/wrapper/PackageManagerWrapper;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 1420
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1422
    :cond_0
    return-void
.end method
