.class public Lcom/android/settings/datetime/AutoTimePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AutoTimePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    .line 37
    return-void
.end method

.method private getEnforcedAdminProperty()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAutoTimeRequired(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "auto_time"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 63
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 64
    iget-object p2, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "auto_time"

    .line 65
    nop

    .line 64
    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    iget-object p1, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    iget-object p2, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p2}, Lcom/android/settings/datetime/UpdateTimeAndDateCallback;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 67
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 46
    instance-of v0, p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez v0, :cond_0

    .line 47
    return-void

    .line 49
    :cond_0
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    nop

    .line 51
    invoke-direct {p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->getEnforcedAdminProperty()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 54
    return-void
.end method
