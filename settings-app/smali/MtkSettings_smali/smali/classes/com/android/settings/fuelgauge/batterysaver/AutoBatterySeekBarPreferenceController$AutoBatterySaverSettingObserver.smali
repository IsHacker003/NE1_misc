.class final Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;
.super Landroid/database/ContentObserver;
.source "AutoBatterySeekBarPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoBatterySaverSettingObserver"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;->this$0:Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;

    .line 145
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 140
    const-string p2, "low_power_trigger_level"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;->mUri:Landroid/net/Uri;

    .line 146
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->access$000(Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 147
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 159
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;->this$0:Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;->this$0:Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;

    invoke-static {p2}, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->access$100(Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;)Lcom/android/settings/widget/SeekBarPreference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->updatePreference(Landroid/support/v7/preference/Preference;)V

    .line 162
    :cond_0
    return-void
.end method

.method public registerContentObserver()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    return-void
.end method

.method public unRegisterContentObserver()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 155
    return-void
.end method
