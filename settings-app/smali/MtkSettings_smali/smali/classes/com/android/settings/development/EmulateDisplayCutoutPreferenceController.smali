.class public Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "EmulateDisplayCutoutPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mAvailable:Z

.field private final mOverlayManager:Lcom/android/settings/wrapper/OverlayManagerWrapper;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreference:Landroid/support/v7/preference/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wrapper/OverlayManagerWrapper;

    invoke-direct {v1}, Lcom/android/settings/wrapper/OverlayManagerWrapper;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/wrapper/OverlayManagerWrapper;)V

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/wrapper/OverlayManagerWrapper;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p3, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mOverlayManager:Lcom/android/settings/wrapper/OverlayManagerWrapper;

    .line 55
    iput-object p2, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 56
    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->getOverlayInfos()[Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mAvailable:Z

    .line 57
    return-void
.end method

.method private getOverlayInfos()[Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mOverlayManager:Lcom/android/settings/wrapper/OverlayManagerWrapper;

    const-string v1, "android"

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wrapper/OverlayManagerWrapper;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 151
    const-string v2, "com.android.internal.display_cutout_emulation"

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    iget-object v3, v3, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->category:Ljava/lang/String;

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 150
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    return-object v0
.end method

.method private setEmulationOverlay(Ljava/lang/String;)Z
    .locals 7

    .line 90
    invoke-direct {p0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->getOverlayInfos()[Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    move-result-object v0

    .line 91
    nop

    .line 92
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 93
    invoke-virtual {v5}, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    iget-object v4, v5, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->packageName:Ljava/lang/String;

    .line 92
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 99
    :cond_2
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    :cond_3
    const/4 p1, 0x1

    return p1

    .line 105
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    iget-object p1, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mOverlayManager:Lcom/android/settings/wrapper/OverlayManagerWrapper;

    invoke-virtual {p1, v4, v2, v2}, Lcom/android/settings/wrapper/OverlayManagerWrapper;->setEnabled(Ljava/lang/String;ZI)Z

    move-result p1

    goto :goto_1

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mOverlayManager:Lcom/android/settings/wrapper/OverlayManagerWrapper;

    invoke-virtual {v0, p1, v2}, Lcom/android/settings/wrapper/OverlayManagerWrapper;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result p1

    .line 110
    :goto_1
    iget-object v0, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 111
    return p1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->setPreference(Landroid/support/v7/preference/ListPreference;)V

    .line 77
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "display_cutout_emulation"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mAvailable:Z

    return v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 161
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 162
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->setEmulationOverlay(Ljava/lang/String;)Z

    .line 163
    iget-object v0, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 164
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 86
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->setEmulationOverlay(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method setPreference(Landroid/support/v7/preference/ListPreference;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    .line 82
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 8

    .line 116
    invoke-direct {p0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->getOverlayInfos()[Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    move-result-object p1

    .line 118
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 119
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 121
    nop

    .line 122
    const-string v3, ""

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 123
    iget-object v3, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f120562    # @string/display_cutout_emulation_none 'None'

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 125
    move v3, v4

    move v5, v3

    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_1

    .line 126
    aget-object v6, p1, v3

    .line 127
    add-int/lit8 v3, v3, 0x1

    iget-object v7, v6, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->packageName:Ljava/lang/String;

    aput-object v7, v0, v3

    .line 128
    invoke-virtual {v6}, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 129
    nop

    .line 125
    move v5, v3

    :cond_0
    goto :goto_0

    .line 132
    :cond_1
    :goto_1
    array-length p1, v0

    if-ge v1, p1, :cond_2

    .line 134
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v3, v0, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object v3, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 135
    invoke-virtual {p1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v2, v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_2

    .line 136
    :catch_0
    move-exception p1

    .line 137
    aget-object p1, v0, v1

    aput-object p1, v2, v1

    .line 132
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    :cond_2
    iget-object p1, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 142
    iget-object p1, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 144
    iget-object p1, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    aget-object v0, v2, v5

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method
