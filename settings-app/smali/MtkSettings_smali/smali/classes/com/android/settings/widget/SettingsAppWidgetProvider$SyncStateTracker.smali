.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 593
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0

    .line 593
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 0

    .line 605
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result p1

    .line 606
    return p1
.end method

.method public getButtonDescription()I
    .locals 1

    .line 597
    const v0, 0x7f1206a2    # @string/gadget_sync 'Sync'

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .line 595
    const v0, 0x7f0a01a8    # @id/img_sync

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 0

    .line 599
    if-eqz p1, :cond_0

    const p1, 0x7f0800cd    # @drawable/ic_appwidget_settings_sync_on_holo 'res/drawable-xhdpi/ic_appwidget_settings_sync_on_holo.png'

    goto :goto_0

    .line 600
    :cond_0
    const p1, 0x7f0800cc    # @drawable/ic_appwidget_settings_sync_off_holo 'res/drawable-xhdpi/ic_appwidget_settings_sync_off_holo.png'

    .line 599
    :goto_0
    return p1
.end method

.method public getContainerId()I
    .locals 1

    .line 594
    const v0, 0x7f0a0082    # @id/btn_sync

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .line 596
    const v0, 0x7f0a01b0    # @id/ind_sync

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 611
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;->getActualState(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 612
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 2

    .line 616
    const-string v0, "connectivity"

    .line 617
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 618
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 620
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;ZZLandroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 645
    invoke-virtual {v1, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 646
    return-void
.end method
