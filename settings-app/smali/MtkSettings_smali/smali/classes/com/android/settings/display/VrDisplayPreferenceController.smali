.class public Lcom/android/settings/display/VrDisplayPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "VrDisplayPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "vr_display_pref"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/settings/display/VrDisplayPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 38
    const-string v1, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    .line 48
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/android/settings/display/VrDisplayPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vr_display_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    const v0, 0x7f120570    # @string/display_vr_pref_low_persistence 'Reduce blur (recommended)'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 55
    :cond_0
    const v0, 0x7f120571    # @string/display_vr_pref_off 'Reduce flicker'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 57
    :goto_0
    return-void
.end method
