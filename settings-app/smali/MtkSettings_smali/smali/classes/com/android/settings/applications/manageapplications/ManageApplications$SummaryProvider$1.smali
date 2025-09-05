.class Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;
.super Lcom/android/settings/applications/InstalledAppCounter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->setListening(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;Landroid/content/Context;ILcom/android/settingslib/wrapper/PackageManagerWrapper;)V
    .locals 0

    .line 1414
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/applications/InstalledAppCounter;-><init>(Landroid/content/Context;ILcom/android/settingslib/wrapper/PackageManagerWrapper;)V

    return-void
.end method


# virtual methods
.method protected onCountComplete(I)V
    .locals 5

    .line 1417
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->access$1700(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;)Lcom/android/settings/dashboard/SummaryLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;

    .line 1418
    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->access$1600(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const p1, 0x7f120159    # @string/apps_summary '%1$d apps installed'

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1417
    invoke-virtual {v0, v1, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 1419
    return-void
.end method
