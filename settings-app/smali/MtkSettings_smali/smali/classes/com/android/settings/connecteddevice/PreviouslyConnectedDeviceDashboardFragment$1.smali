.class Lcom/android/settings/connecteddevice/PreviouslyConnectedDeviceDashboardFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "PreviouslyConnectedDeviceDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/PreviouslyConnectedDeviceDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 76
    const-string p1, "saved_device_list"

    iput-object p1, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 77
    const p1, 0x7f120405    # @string/connected_device_previously_connected_title 'Previously connected devices'

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 81
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-object p2
.end method
