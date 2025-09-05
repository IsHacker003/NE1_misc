.class public final Lcom/android/settings/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CredentialStorage$UnlockDialog;,
        Lcom/android/settings/CredentialStorage$MarkKeyAsUserSelectable;,
        Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/android/settings/CredentialStorage$ResetDialog;
    }
.end annotation


# static fields
.field private static sResetDialog:Landroid/app/AlertDialog;

.field private static sUnlockDialog:Landroid/app/AlertDialog;


# instance fields
.field private mInstallBundle:Landroid/os/Bundle;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mRetriesRemaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    .line 128
    sput-object v0, Lcom/android/settings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/CredentialStorage;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->handleUnlockOrInstall()V

    return-void
.end method

.method static synthetic access$200()Landroid/app/AlertDialog;
    .locals 1

    .line 96
    sget-object v0, Lcom/android/settings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 96
    sput-object p0, Lcom/android/settings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/CredentialStorage;I)Z
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage;->confirmKeyGuard(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/CredentialStorage;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->clearLegacyVpnIfEstablished()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/CredentialStorage;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/settings/CredentialStorage;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    return p1
.end method

.method static synthetic access$700()Landroid/app/AlertDialog;
    .locals 1

    .line 96
    sget-object v0, Lcom/android/settings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 96
    sput-object p0, Lcom/android/settings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/CredentialStorage;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    return-void
.end method

.method private checkCallerIsCertInstallerOrSelfInProfile()Z
    .locals 5

    .line 491
    const-string v0, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 494
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 500
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    .line 502
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 503
    const-string v0, "CredentialStorage"

    const-string v1, "com.android.credentials.INSTALL must be started with startActivityForResult"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return v2

    .line 506
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 508
    return v2

    .line 510
    :cond_3
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    nop

    .line 516
    const-string v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/settings/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 517
    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 518
    if-eqz v0, :cond_5

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eq v0, v3, :cond_4

    goto :goto_1

    .line 522
    :cond_4
    return v1

    .line 520
    :cond_5
    :goto_1
    return v2

    .line 511
    :catch_0
    move-exception v0

    .line 513
    return v2
.end method

.method private checkKeyGuardQuality()Z
    .locals 2

    .line 237
    nop

    .line 238
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    .line 239
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 240
    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private clearLegacyVpnIfEstablished()V
    .locals 2

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->disconnectLegacyVpn(Landroid/content/Context;)Z

    move-result v0

    .line 454
    if-eqz v0, :cond_0

    .line 455
    const v0, 0x7f120f58    # @string/vpn_disconnected 'Disconnected from VPN'

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 458
    :cond_0
    return-void
.end method

.method private confirmKeyGuard(I)Z
    .locals 3

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 530
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 532
    const v2, 0x7f12042e    # @string/credentials_title 'Credential storage'

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 531
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result p1

    .line 533
    return p1
.end method

.method private ensureKeyGuard()V
    .locals 3

    .line 218
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/android/settings/security/ConfigureKeyGuardDialog;

    invoke-direct {v0}, Lcom/android/settings/security/ConfigureKeyGuardDialog;-><init>()V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ConfigureKeyGuardDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 223
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/CredentialStorage;->confirmKeyGuard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    return-void

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 231
    return-void
.end method

.method private handleUnlockOrInstall()V
    .locals 3

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    return-void

    .line 189
    :cond_0
    sget-object v0, Lcom/android/settings/CredentialStorage$1;->$SwitchMap$android$security$KeyStore$State:[I

    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 209
    return-void

    .line 199
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    new-instance v0, Lcom/android/settings/security/ConfigureKeyGuardDialog;

    invoke-direct {v0}, Lcom/android/settings/security/ConfigureKeyGuardDialog;-><init>()V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ConfigureKeyGuardDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 202
    return-void

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->installIfAvailable()V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 206
    return-void

    .line 195
    :pswitch_1
    new-instance v0, Lcom/android/settings/CredentialStorage$UnlockDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/CredentialStorage$UnlockDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V

    .line 196
    return-void

    .line 191
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    .line 192
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private installIfAvailable()V
    .locals 9

    .line 261
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 266
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 268
    const-string v1, "install_as_uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 270
    const/16 v3, 0x3f2

    if-eq v1, v2, :cond_2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {v1, v4}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 271
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 272
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 275
    if-eq v1, v3, :cond_1

    .line 276
    const-string v0, "CredentialStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install credentials as uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": cross-user installs may only target wifi uids"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 281
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.credentials.INSTALL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x2000000

    .line 282
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 283
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 284
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/CredentialStorage;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 285
    return-void

    .line 288
    :cond_2
    const-string v4, "user_private_key_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_6

    .line 289
    const-string v4, "user_private_key_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 290
    const-string v7, "user_private_key_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 292
    nop

    .line 293
    if-ne v1, v3, :cond_3

    invoke-direct {p0, v7}, Lcom/android/settings/CredentialStorage;->isHardwareBackedKey([B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 296
    const-string v3, "CredentialStorage"

    const-string v8, "Saving private key with FLAG_NONE for WIFI_UID"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    nop

    .line 300
    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v6

    :goto_0
    iget-object v8, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8, v4, v7, v1, v3}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v3

    if-nez v3, :cond_4

    .line 301
    const-string v0, "CredentialStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void

    .line 310
    :cond_4
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_5

    if-ne v1, v2, :cond_6

    .line 311
    :cond_5
    new-instance v3, Lcom/android/settings/CredentialStorage$MarkKeyAsUserSelectable;

    const-string v7, "^USRPKEY_"

    const-string v8, ""

    .line 312
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/settings/CredentialStorage$MarkKeyAsUserSelectable;-><init>(Lcom/android/settings/CredentialStorage;Ljava/lang/String;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/settings/CredentialStorage$MarkKeyAsUserSelectable;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 316
    :cond_6
    nop

    .line 318
    const-string v3, "user_certificate_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 319
    const-string v3, "user_certificate_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    const-string v4, "user_certificate_data"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 322
    iget-object v7, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v7, v3, v4, v1, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v4

    if-nez v4, :cond_7

    .line 323
    const-string v0, "CredentialStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to install "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void

    .line 328
    :cond_7
    const-string v3, "ca_certificates_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 329
    const-string v3, "ca_certificates_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    const-string v4, "ca_certificates_data"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 332
    iget-object v7, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v7, v3, v4, v1, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v4

    if-nez v4, :cond_8

    .line 333
    const-string v0, "CredentialStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to install "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void

    .line 339
    :cond_8
    const-string v3, "wapi_user_certificate_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 340
    const-string v3, "wapi_user_certificate_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 341
    const-string v4, "wapi_user_certificate_data"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 342
    if-eqz v3, :cond_9

    iget-object v5, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v5, v3, v4, v1, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v4

    if-nez v4, :cond_9

    .line 344
    const-string v0, "CredentialStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to install "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void

    .line 349
    :cond_9
    const-string v3, "wapi_server_certificate_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 350
    const-string v3, "wapi_server_certificate_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    const-string v4, "wapi_server_certificate_data"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 354
    if-eqz v3, :cond_a

    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4, v3, v0, v1, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v0

    if-nez v0, :cond_a

    .line 356
    const-string v0, "CredentialStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to install "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void

    .line 363
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.action.KEYCHAIN_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0, v0}, Lcom/android/settings/CredentialStorage;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    invoke-virtual {p0, v2}, Lcom/android/settings/CredentialStorage;->setResult(I)V

    .line 367
    return-void

    .line 262
    :cond_b
    :goto_1
    return-void
.end method

.method private isHardwareBackedKey([B)Z
    .locals 2

    .line 245
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 246
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    .line 248
    new-instance v0, Lsun/security/x509/AlgorithmId;

    new-instance v1, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v1, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-static {p1}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 251
    :catch_0
    move-exception p1

    .line 252
    const-string p1, "CredentialStorage"

    const-string v0, "Failed to parse key data"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 538
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 543
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 544
    if-ne p2, v0, :cond_0

    .line 545
    const-string p1, "password"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 546
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 548
    iget-object p2, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {p2, p1}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 550
    return-void

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0

    .line 555
    :cond_1
    const/4 p3, 0x2

    if-ne p1, p3, :cond_3

    .line 556
    if-ne p2, v0, :cond_2

    .line 557
    new-instance p1, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 558
    return-void

    .line 561
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 563
    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const/4 p1, 0x0

    sput-object p1, Lcom/android/settings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    .line 134
    sput-object p1, Lcom/android/settings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    .line 135
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 168
    sget-object v0, Lcom/android/settings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/android/settings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 170
    sput-object v1, Lcom/android/settings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    .line 172
    :cond_0
    sget-object v0, Lcom/android/settings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 173
    sget-object v0, Lcom/android/settings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 174
    sput-object v1, Lcom/android/settings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    .line 176
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 177
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 144
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/android/settings/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 145
    const-string v3, "no_config_credentials"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 146
    const-string v2, "com.android.credentials.RESET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    new-instance v0, Lcom/android/settings/CredentialStorage$ResetDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V

    goto :goto_0

    .line 149
    :cond_0
    const-string v2, "com.android.credentials.INSTALL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkCallerIsCertInstallerOrSelfInProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->handleUnlockOrInstall()V

    goto :goto_0

    .line 158
    :cond_2
    const-string v0, "com.android.credentials.UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_3

    .line 159
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 164
    :goto_0
    return-void
.end method
