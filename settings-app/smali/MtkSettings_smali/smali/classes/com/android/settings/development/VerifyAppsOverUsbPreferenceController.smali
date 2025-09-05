.class public Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "VerifyAppsOverUsbPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/AdbOnChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;
    }
.end annotation


# static fields
.field static final SETTING_VALUE_OFF:I = 0x0

.field static final SETTING_VALUE_ON:I = 0x1


# instance fields
.field private final mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private final mRestrictedLockUtils:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;

    invoke-direct {v0, p0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;-><init>(Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mRestrictedLockUtils:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;

    .line 73
    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 74
    return-void
.end method

.method private shouldBeEnabled()Z
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 145
    return v2

    .line 147
    :cond_0
    const-string v1, "package_verifier_enable"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 149
    return v2

    .line 151
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v1, v0, v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 157
    return v2

    .line 160
    :cond_2
    return v3
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "verify_apps_over_usb"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "verifier_setting_visible"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onAdbSettingChanged()V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 127
    :cond_0
    return-void
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 1

    .line 131
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 133
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 89
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 90
    iget-object p2, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "verifier_verify_adb_installs"

    .line 92
    nop

    .line 90
    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5

    .line 98
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 100
    invoke-direct {p0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->shouldBeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 103
    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 104
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mRestrictedLockUtils:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;

    iget-object v2, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "ensure_verify_apps"

    .line 108
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 107
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController$RestrictedLockUtilsDelegate;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 109
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 111
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 112
    return-void

    .line 115
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "verifier_verify_adb_installs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    move v1, v2

    goto :goto_0

    .line 116
    :cond_2
    nop

    .line 119
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 120
    return-void
.end method
