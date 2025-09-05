.class public Lcom/android/settings/security/CredentialStoragePreferenceController;
.super Lcom/android/settings/security/RestrictedEncryptionPreferenceController;
.source "CredentialStoragePreferenceController.java"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    const-string v0, "no_config_credentials"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/CredentialStoragePreferenceController;->mKeyStore:Landroid/security/KeyStore;

    .line 35
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "credential_storage_type"

    return-object v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/settings/security/CredentialStoragePreferenceController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const v0, 0x7f12041e    # @string/credential_storage_type_hardware 'Hardware-backed'

    goto :goto_0

    .line 46
    :cond_0
    const v0, 0x7f12041f    # @string/credential_storage_type_software 'Software only'

    .line 44
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 47
    return-void
.end method
