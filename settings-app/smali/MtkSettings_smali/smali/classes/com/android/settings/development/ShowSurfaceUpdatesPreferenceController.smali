.class public Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "ShowSurfaceUpdatesPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final SURFACE_FLINGER_READ_CODE:I = 0x3f2

.field static final SURFACE_FLINGER_SERVICE_KEY:Ljava/lang/String; = "SurfaceFlinger"


# instance fields
.field private final mSurfaceFlinger:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 51
    const-string p1, "SurfaceFlinger"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    .line 52
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "show_screen_updates"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 74
    iget-object v0, p0, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 75
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;->writeShowUpdatesSetting(Z)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 81
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 61
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;->writeShowUpdatesSetting(Z)V

    .line 63
    const/4 p1, 0x1

    return p1
.end method

.method updateShowUpdatesSetting()V
    .locals 5

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 90
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 92
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    iget-object v3, p0, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 97
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_1
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 102
    :goto_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;->updateShowUpdatesSetting()V

    .line 69
    return-void
.end method

.method writeShowUpdatesSetting(Z)V
    .locals 4

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 109
    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 110
    nop

    .line 111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object p1, p0, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    goto :goto_0

    .line 116
    :catch_0
    move-exception p1

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;->updateShowUpdatesSetting()V

    .line 120
    return-void
.end method
