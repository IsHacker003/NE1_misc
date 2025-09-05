.class public Lcom/android/settings/display/CameraGesturePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "CameraGesturePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "camera_gesture"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/android/settings/display/CameraGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0020    # @android:integer/config_cameraLaunchGestureSensorType

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 52
    move v0, v1

    goto :goto_0

    .line 50
    :cond_0
    nop

    .line 52
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "gesture.disable_camera_launch"

    .line 53
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 58
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 59
    iget-object p2, p0, Lcom/android/settings/display/CameraGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "camera_gesture_disabled"

    .line 60
    nop

    .line 59
    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/android/settings/display/CameraGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_gesture_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 45
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 46
    return-void
.end method
