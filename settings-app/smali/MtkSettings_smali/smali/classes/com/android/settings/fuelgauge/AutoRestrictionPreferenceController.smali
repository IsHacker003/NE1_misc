.class public Lcom/android/settings/fuelgauge/AutoRestrictionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AutoRestrictionPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_SMART_BATTERY:Ljava/lang/String; = "auto_restriction"

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1


# instance fields
.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    const-string v0, "auto_restriction"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AutoRestrictionPreferenceController;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 40
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AutoRestrictionPreferenceController;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isSmartBatterySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x2

    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 59
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 60
    iget-object p2, p0, Lcom/android/settings/fuelgauge/AutoRestrictionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "app_auto_restriction_enabled"

    .line 62
    nop

    .line 60
    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AutoRestrictionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_auto_restriction_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 54
    :goto_0
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 55
    return-void
.end method
