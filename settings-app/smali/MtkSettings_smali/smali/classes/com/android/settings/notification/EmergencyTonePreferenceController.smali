.class public Lcom/android/settings/notification/EmergencyTonePreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "EmergencyTonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 7

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 41
    new-instance p1, Lcom/android/settings/notification/EmergencyTonePreferenceController$1;

    const-string v3, "emergency_tone"

    const-string v4, "emergency_tone"

    const/4 p2, 0x3

    new-array v6, p2, [I

    fill-array-data v6, :array_0

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/EmergencyTonePreferenceController$1;-><init>(Lcom/android/settings/notification/EmergencyTonePreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object p1, p0, Lcom/android/settings/notification/EmergencyTonePreferenceController;->mPreference:Lcom/android/settings/notification/SettingPref;

    .line 67
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x0
    .end array-data
.end method
