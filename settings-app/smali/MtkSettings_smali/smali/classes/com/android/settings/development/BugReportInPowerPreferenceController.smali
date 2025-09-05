.class public Lcom/android/settings/development/BugReportInPowerPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BugReportInPowerPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static SETTING_VALUE_OFF:I

.field static SETTING_VALUE_ON:I


# instance fields
.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_ON:I

    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 45
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "bugreport_in_power"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_debugging_features"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 75
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bugreport_in_power_menu"

    sget v2, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 79
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 59
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 60
    iget-object p2, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "bugreport_in_power_menu"

    .line 62
    if-eqz p1, :cond_0

    sget p1, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_ON:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    .line 60
    :goto_0
    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "bugreport_in_power_menu"

    sget v1, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 70
    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    sget v1, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 71
    return-void
.end method
