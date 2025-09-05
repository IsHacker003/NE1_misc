.class public Lcom/android/settings/datetime/AutoTimeZonePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AutoTimeZonePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

.field private final mIsFromSUW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    .line 40
    iput-boolean p3, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mIsFromSUW:Z

    .line 41
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "auto_zone"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mIsFromSUW:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "auto_time_zone"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 63
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 64
    iget-object p2, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "auto_time_zone"

    .line 65
    nop

    .line 64
    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    iget-object p1, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    iget-object p2, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p2}, Lcom/android/settings/datetime/UpdateTimeAndDateCallback;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 67
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 55
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 59
    return-void
.end method
