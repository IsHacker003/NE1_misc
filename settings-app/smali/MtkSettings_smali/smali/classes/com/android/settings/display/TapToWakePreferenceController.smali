.class public Lcom/android/settings/display/TapToWakePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TapToWakePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "tap_to_wake"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/settings/display/TapToWakePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200b4    # @android:bool/config_supportsMultiDisplay

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 53
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 54
    iget-object p2, p0, Lcom/android/settings/display/TapToWakePreferenceController;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "double_tap_to_wake"

    .line 54
    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 56
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/android/settings/display/TapToWakePreferenceController;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tap_to_wake"

    .line 46
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 48
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 49
    return-void
.end method
