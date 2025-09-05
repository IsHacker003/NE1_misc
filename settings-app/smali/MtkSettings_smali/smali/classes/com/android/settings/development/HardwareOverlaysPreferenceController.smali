.class public Lcom/android/settings/development/HardwareOverlaysPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "HardwareOverlaysPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final SURFACE_FLINGER_READ_CODE:I = 0x3f2


# instance fields
.field private final mSurfaceFlinger:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 50
    const-string p1, "SurfaceFlinger"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    .line 51
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "disable_overlays"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 72
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 73
    iget-object v0, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 74
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->writeHardwareOverlaysSetting(Z)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 80
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 60
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->writeHardwareOverlaysSetting(Z)V

    .line 62
    const/4 p1, 0x1

    return p1
.end method

.method updateHardwareOverlaysSetting()V
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 85
    return-void

    .line 89
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 91
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 95
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    iget-object v3, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 104
    :goto_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->updateHardwareOverlaysSetting()V

    .line 68
    return-void
.end method

.method writeHardwareOverlaysSetting(Z)V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 113
    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    nop

    .line 115
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object p1, p0, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 v1, 0x3f0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 119
    :catch_0
    move-exception p1

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;->updateHardwareOverlaysSetting()V

    .line 123
    return-void
.end method
