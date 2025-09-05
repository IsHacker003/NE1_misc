.class public Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsProfilesController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field static final HIGH_QUALITY_AUDIO_PREF_TAG:Ljava/lang/String; = "A2dpProfileHighQualityAudio"


# instance fields
.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 62
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 63
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 64
    iput-object p4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 65
    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 66
    return-void
.end method

.method private createProfilePreference(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    .line 86
    new-instance v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v0, p1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 89
    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    return-object v0
.end method

.method private disableProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/bluetooth/BluetoothDevice;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 1

    .line 152
    instance-of p3, p1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    const/4 v0, 0x2

    if-eqz p3, :cond_0

    .line 153
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 155
    return-void

    .line 157
    :cond_0
    iget-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p3, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 158
    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 159
    instance-of p1, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 162
    :cond_1
    return-void
.end method

.method private enableProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/bluetooth/BluetoothDevice;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 1

    .line 135
    instance-of p3, p1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 136
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 138
    return-void

    .line 140
    :cond_0
    instance-of p3, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz p3, :cond_1

    .line 141
    iget-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p3, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 143
    :cond_1
    invoke-interface {p1, p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 144
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 145
    return-void
.end method

.method private getProfiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    .line 200
    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v1

    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/settingslib/bluetooth/MapProfile;

    move-result-object v1

    .line 206
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v2

    .line 207
    if-eqz v2, :cond_1

    .line 208
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_1
    return-object v0
.end method

.method public static synthetic lambda$maybeAddHighQualityAudioPref$0(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 233
    check-cast p2, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result p2

    .line 234
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 235
    const/4 p1, 0x1

    return p1
.end method

.method private maybeAddHighQualityAudioPref(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 2

    .line 222
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 226
    check-cast p1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 227
    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    new-instance v0, Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    .line 229
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 230
    const-string v1, "A2dpProfileHighQualityAudio"

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 232
    new-instance v1, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$pv2kZi3KDLDrPBqbb1ECR74MeRo;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$pv2kZi3KDLDrPBqbb1ECR74MeRo;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;Lcom/android/settingslib/bluetooth/A2dpProfile;)V

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 237
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 239
    :cond_1
    return-void
.end method

.method private refreshProfilePreference(Landroid/support/v14/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 100
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 103
    :cond_1
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 106
    :cond_3
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_5

    .line 107
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 110
    :cond_5
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 113
    :goto_3
    instance-of p1, p2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz p1, :cond_7

    .line 114
    check-cast p2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 115
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    const-string v1, "A2dpProfileHighQualityAudio"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .line 117
    if-eqz p1, :cond_7

    .line 118
    invoke-virtual {p2, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 119
    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 120
    invoke-virtual {p2, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getHighQualityAudioOptionLabel(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p2, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 122
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_4

    .line 124
    :cond_6
    invoke-virtual {p1, v3}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 128
    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 274
    const-string v0, "bluetooth_profiles"

    return-object v0
.end method

.method protected init(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->refresh()V

    .line 74
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 171
    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    goto :goto_0

    .line 177
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 180
    :cond_1
    :goto_0
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .line 181
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->enableProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/bluetooth/BluetoothDevice;Landroid/support/v14/preference/SwitchPreference;)V

    goto :goto_1

    .line 185
    :cond_2
    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->disableProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/bluetooth/BluetoothDevice;Landroid/support/v14/preference/SwitchPreference;)V

    .line 187
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->refreshProfilePreference(Landroid/support/v14/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 188
    const/4 p1, 0x1

    return p1
.end method

.method protected refresh()V
    .locals 4

    .line 247
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 249
    if-nez v1, :cond_0

    .line 250
    const-string v1, "PrefControllerMixin"

    const-string v2, "profile is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    goto :goto_0

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    .line 255
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    .line 256
    if-nez v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->createProfilePreference(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    .line 258
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 259
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->maybeAddHighQualityAudioPref(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 261
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->refreshProfilePreference(Landroid/support/v14/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 262
    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 264
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    .line 265
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    .line 266
    if-eqz v1, :cond_3

    .line 267
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 269
    :cond_3
    goto :goto_1

    .line 270
    :cond_4
    return-void
.end method
