.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationStateTracker"
.end annotation


# instance fields
.field private mCurrentLocationMode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 522
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    .line 523
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0

    .line 522
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2

    .line 545
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 546
    const-string v0, "location_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    .line 548
    iget p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    if-nez p1, :cond_0

    .line 549
    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 548
    :goto_0
    return v1
.end method

.method public getButtonDescription()I
    .locals 1

    .line 528
    const v0, 0x7f12069b    # @string/gadget_location 'Location'

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .line 526
    const v0, 0x7f0a01a7    # @id/img_location

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1

    .line 530
    if-eqz p1, :cond_1

    .line 531
    iget p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->mCurrentLocationMode:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 536
    const p1, 0x7f0800cb    # @drawable/ic_appwidget_settings_location_saving_holo 'res/drawable-xhdpi/ic_appwidget_settings_location_saving_holo.png'

    return p1

    .line 534
    :cond_0
    const p1, 0x7f0800ca    # @drawable/ic_appwidget_settings_location_on_holo 'res/drawable-xhdpi/ic_appwidget_settings_location_on_holo.png'

    return p1

    .line 540
    :cond_1
    const p1, 0x7f0800c9    # @drawable/ic_appwidget_settings_location_off_holo 'res/drawable-xhdpi/ic_appwidget_settings_location_off_holo.png'

    return p1
.end method

.method public getContainerId()I
    .locals 1

    .line 525
    const v0, 0x7f0a0081    # @id/btn_location

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .line 527
    const v0, 0x7f0a01af    # @id/ind_location

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 556
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->getActualState(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 557
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 0

    .line 561
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 562
    new-instance p2, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 586
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 587
    return-void
.end method
