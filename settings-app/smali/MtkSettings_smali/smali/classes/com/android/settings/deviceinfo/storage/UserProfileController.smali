.class public Lcom/android/settings/deviceinfo/storage/UserProfileController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "UserProfileController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;
.implements Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;


# instance fields
.field private final mPreferenceOrder:I

.field private mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mTotalSizeBytes:J

.field private mUser:Landroid/content/pm/UserInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/UserInfo;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    .line 53
    iput p3, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mPreferenceOrder:I

    .line 54
    return-void
.end method

.method private static applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 132
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 133
    const v0, 0x1010429    # @android:attr/colorControlNormal

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 134
    return-object p1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    .line 68
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 69
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget v1, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mPreferenceOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setOrder(I)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_profile_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 73
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pref_profile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 77
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne v0, p1, :cond_0

    .line 78
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string v0, "userId"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    const-string v1, "private"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/deviceinfo/StorageProfileFragment;

    .line 83
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 85
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/16 v0, 0x2a

    .line 86
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 88
    const/4 p1, 0x1

    return p1

    .line 91
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public handleResult(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 99
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 100
    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v0, v0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    iget-wide v2, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mTotalSizeBytes:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/storage/UserProfileController;->setSize(JJ)V

    .line 108
    :cond_0
    return-void
.end method

.method public handleUserIcons(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mUser:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/settings/deviceinfo/storage/UserProfileController;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public setSize(JJ)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/UserProfileController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 117
    :cond_0
    return-void
.end method
