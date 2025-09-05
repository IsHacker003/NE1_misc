.class public Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AutoBatterySeekBarPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;
    }
.end annotation


# static fields
.field static final KEY_AUTO_BATTERY_SEEK_BAR:Ljava/lang/String; = "battery_saver_seek_bar"

.field private static final TAG:Ljava/lang/String; = "AutoBatterySeekBarPreferenceController"


# instance fields
.field private mContentObserver:Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;

.field private mPreference:Lcom/android/settings/widget/SeekBarPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    .line 52
    const-string v0, "battery_saver_seek_bar"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    new-instance p1, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;-><init>(Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mContentObserver:Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;

    .line 54
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;)Lcom/android/settings/widget/SeekBarPreference;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mPreference:Lcom/android/settings/widget/SeekBarPreference;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 62
    const-string v0, "battery_saver_seek_bar"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mPreference:Lcom/android/settings/widget/SeekBarPreference;

    .line 64
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setAccessibilityRangeInfoType(I)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->updatePreference(Landroid/support/v7/preference/Preference;)V

    .line 68
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 93
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 94
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "low_power_trigger_level"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mContentObserver:Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;->registerContentObserver()V

    .line 84
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mContentObserver:Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;->unRegisterContentObserver()V

    .line 89
    return-void
.end method

.method updatePreference(Landroid/support/v7/preference/Preference;)V
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    const-string v1, "low_power_trigger_level_max"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 106
    if-lez v1, :cond_2

    .line 107
    instance-of v3, p1, Lcom/android/settings/widget/SeekBarPreference;

    if-nez v3, :cond_0

    .line 108
    const-string v1, "AutoBatterySeekBarPreferenceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected preference class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_0
    move-object v3, p1

    check-cast v3, Lcom/android/settings/widget/SeekBarPreference;

    .line 111
    invoke-virtual {v3}, Lcom/android/settings/widget/SeekBarPreference;->getMin()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 112
    const-string v1, "AutoBatterySeekBarPreferenceController"

    const-string v3, "LOW_POWER_MODE_TRIGGER_LEVEL_MAX too low; ignored."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 120
    :cond_2
    :goto_0
    const-string v1, "low_power_trigger_level"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 123
    if-nez v0, :cond_3

    .line 124
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 126
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 127
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120208    # @string/battery_saver_seekbar_title 'At %1$s'

    new-array v1, v1, [Ljava/lang/Object;

    .line 128
    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 127
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    check-cast p1, Lcom/android/settings/widget/SeekBarPreference;

    .line 130
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12020c    # @string/battery_saver_turn_on_automatically_title 'Turn on automatically'

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    :goto_1
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->updatePreference(Landroid/support/v7/preference/Preference;)V

    .line 79
    return-void
.end method
