.class Lcom/android/settings/fuelgauge/PowerUsageSummary$3;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;>;"
        }
    .end annotation

    .line 198
    new-instance p1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {p1, p2, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 194
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;)V"
        }
    .end annotation

    .line 204
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->updateBatteryTips(Ljava/util/List;)V

    .line 205
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;>;)V"
        }
    .end annotation

    .line 210
    return-void
.end method
