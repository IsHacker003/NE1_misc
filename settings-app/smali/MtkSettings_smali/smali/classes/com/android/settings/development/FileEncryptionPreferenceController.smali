.class public Lcom/android/settings/development/FileEncryptionPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "FileEncryptionPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final FILE_ENCRYPTION_PROPERTY_KEY:Ljava/lang/String; = "ro.crypto.type"


# instance fields
.field private final mStorageManager:Landroid/os/storage/IStorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/android/settings/development/FileEncryptionPreferenceController;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/FileEncryptionPreferenceController;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 47
    return-void
.end method

.method private getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 1

    .line 81
    :try_start_0
    const-string v0, "mount"

    .line 82
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "convert_to_file_encryption"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settings/development/FileEncryptionPreferenceController;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 52
    return v1

    .line 56
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/FileEncryptionPreferenceController;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->isConvertibleToFBE()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 69
    const-string p1, "file"

    const-string v0, "ro.crypto.type"

    const-string v1, "none"

    .line 70
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    return-void

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/FileEncryptionPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/development/FileEncryptionPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/development/FileEncryptionPreferenceController;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120416    # @string/convert_to_file_encryption_done 'Already file encrypted'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method
