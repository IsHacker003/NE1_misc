.class public Lcom/android/settings/network/AirplaneModePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AirplaneModePreferenceController.java"

# interfaces
.implements Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AirplaneModePreferenceController"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

.field private final mContext:Landroid/content/Context;

.field private mFragment:Landroid/app/Fragment;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 67
    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mContext:Landroid/content/Context;

    .line 68
    new-instance p1, Lcom/android/settings/AirplaneModeEnabler;

    iget-object p2, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {p1, p2, v0, p0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;)V

    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 69
    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050039    # @bool/config_show_toggle_airplane 'true'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 110
    :goto_0
    return p0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 107
    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/AirplaneModePreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    .line 78
    const-string v0, "airplane_mode"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 79
    const-string p1, "ril.cdma.inecmmode"

    const-string v0, "false"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    .line 83
    const-string v1, "AirplaneModePreferenceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Click airplane mode, ECM="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isAdmin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", fragment="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v3, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mFragment:Landroid/app/Fragment;

    if-nez v3, :cond_0

    const-string v3, "null"

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mFragment:Landroid/app/Fragment;

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-eqz p1, :cond_2

    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 88
    iget-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mFragment:Landroid/app/Fragment;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mFragment:Landroid/app/Fragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 93
    :cond_1
    return v0

    .line 98
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isChecked()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toggle_airplane"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    .line 141
    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_3

    .line 143
    if-nez p3, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    const-string p1, "exit_ecm_result"

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 143
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 145
    const-string v0, "AirplaneModePreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit ECM, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    if-nez p3, :cond_1

    const-string p3, "null"

    :cond_1
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 145
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p3, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    if-eqz p3, :cond_2

    .line 149
    const-string p3, "AirplaneModePreferenceController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit ECM, checked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p3, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 152
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 151
    invoke-virtual {p3, p1, v0}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 154
    :cond_2
    return p2

    .line 156
    :cond_3
    return v0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 178
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 137
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 130
    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 167
    const/4 p1, 0x0

    return p1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneMode(Z)V

    .line 170
    const/4 p1, 0x1

    return p1
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mFragment:Landroid/app/Fragment;

    .line 73
    return-void
.end method
