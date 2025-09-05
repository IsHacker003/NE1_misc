.class Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$SummaryProvider;
.super Ljava/lang/Object;
.source "ConnectedDeviceDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 105
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 2

    .line 109
    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {v1}, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceController;->getConnectedDevicesSummaryResourceId(Landroid/content/Context;)I

    move-result v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    return-void
.end method
