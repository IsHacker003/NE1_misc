.class public Lcom/android/settings/security/EncryptionStatusPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "EncryptionStatusPreferenceController.java"


# static fields
.field static final PREF_KEY_ENCRYPTION_DETAIL_PAGE:Ljava/lang/String; = "encryption_and_credentials_encryption_status"

.field static final PREF_KEY_ENCRYPTION_SECURITY_PAGE:Ljava/lang/String; = "encryption_and_credential"


# instance fields
.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/security/EncryptionStatusPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 40
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/security/EncryptionStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "encryption_and_credentials_encryption_status"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/EncryptionStatusPreferenceController;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050023    # @bool/config_show_encryption_and_credentials_encryption_status 'true'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x2

    return v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/EncryptionStatusPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 55
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/security/EncryptionStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "encryption_and_credentials_encryption_status"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 60
    :cond_0
    const v0, 0x7f12043a    # @string/crypt_keeper_encrypted_summary 'Encrypted'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/security/EncryptionStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "encryption_and_credentials_encryption_status"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const-class v0, Lcom/android/settings/security/CryptKeeperSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 65
    :cond_2
    const v0, 0x7f1204fb    # @string/decryption_settings_summary 'Phone not encrypted'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 68
    :goto_0
    return-void
.end method
