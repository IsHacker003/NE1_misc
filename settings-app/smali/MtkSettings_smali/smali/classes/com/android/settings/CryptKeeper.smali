.class public Lcom/android/settings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;,
        Lcom/android/settings/CryptKeeper$ValidationTask;,
        Lcom/android/settings/CryptKeeper$DecryptTask;,
        Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCooldown:Z

.field private mCorrupt:Z

.field private mEncryptionGoneBad:Z

.field private final mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNotificationCountdown:I

.field private mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

.field private mPhoneStateReceiver:Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;

.field private mReleaseWakeLockCountdown:I

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    .line 130
    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 132
    iput v0, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 133
    const v0, 0x7f1205e1    # @string/enter_password 'To start Android, enter your password'

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    .line 143
    new-instance v0, Lcom/android/settings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$1;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    .line 153
    new-instance v0, Lcom/android/settings/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$2;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 323
    new-instance v0, Lcom/android/settings/CryptKeeper$3;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$3;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    .line 737
    new-instance v0, Lcom/android/settings/CryptKeeper$6;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$6;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/CryptKeeper;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return p0
.end method

.method static synthetic access$1202(Lcom/android/settings/CryptKeeper;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/CryptKeeper;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->passwordEntryInit()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/CryptKeeper;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/CryptKeeper;Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->beginAttempt()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IStorageManager;
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/CryptKeeper;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mCorrupt:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    return-void
.end method

.method private beginAttempt()V
    .locals 2

    .line 232
    const v0, 0x7f0a0333    # @id/status

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 233
    const v1, 0x7f1203a5    # @string/checking_decryption 'Checking…'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    return-void
.end method

.method private cooldown()V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 716
    :cond_1
    const v0, 0x7f0a0333    # @id/status

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 717
    const v1, 0x7f12043f    # @string/crypt_keeper_force_power_cycle 'To unlock your phone, turn it off and then on.'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 718
    return-void
.end method

.method private delayAudioNotification()V
    .locals 1

    .line 1028
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 1029
    return-void
.end method

.method private static disableCryptKeeperComponent(Landroid/content/Context;)V
    .locals 4

    .line 1059
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1060
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/CryptKeeper;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1061
    const-string p0, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const/4 p0, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1064
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 3

    .line 602
    const-string v0, "CryptKeeper"

    const-string v1, "Encryption progress screen initializing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 604
    const-string v0, "CryptKeeper"

    const-string v1, "Acquiring wakelock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 606
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 607
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 610
    :cond_0
    const v0, 0x7f0a0284    # @id/progress_bar

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 612
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 615
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    .line 616
    return-void
.end method

.method private fakeUnlockAttempt(Landroid/view/View;)V
    .locals 3

    .line 733
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->beginAttempt()V

    .line 734
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 735
    return-void
.end method

.method private getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 1

    .line 891
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 892
    if-eqz v0, :cond_0

    .line 893
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    return-object v0

    .line 895
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .line 1021
    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 1017
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleBadAttempt(Ljava/lang/Integer;)V
    .locals 6

    .line 238
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 241
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 244
    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    .line 247
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    goto/16 :goto_2

    .line 249
    :cond_1
    const v0, 0x7f0a0333    # @id/status

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x1e

    .line 252
    const/4 v3, 0x0

    if-ge p1, v1, :cond_2

    .line 253
    const v1, 0x7f120447    # @string/crypt_keeper_warn_wipe 'Warning: Your device will be wiped after ^1 more failed attempts to be unlocked!'

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 254
    new-array v4, v2, [Ljava/lang/CharSequence;

    .line 255
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    .line 254
    invoke-static {v1, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 256
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    goto :goto_1

    .line 258
    :cond_2
    nop

    .line 260
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object p1

    .line 261
    invoke-interface {p1}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_0

    .line 262
    :catch_0
    move-exception p1

    .line 263
    const-string v1, "CryptKeeper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling mount service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    move p1, v3

    :goto_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 267
    const p1, 0x7f12044c    # @string/cryptkeeper_wrong_pin 'Wrong PIN'

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 268
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 269
    const p1, 0x7f12044b    # @string/cryptkeeper_wrong_pattern 'Wrong Pattern'

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 271
    :cond_4
    const p1, 0x7f12044a    # @string/cryptkeeper_wrong_password 'Wrong Password'

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 275
    :goto_1
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz p1, :cond_5

    .line 276
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 277
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 281
    :cond_5
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz p1, :cond_6

    .line 282
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 283
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {p1}, Lcom/android/settings/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    .line 284
    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 287
    :cond_6
    :goto_2
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 8

    .line 851
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 854
    nop

    .line 856
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 858
    if-le v2, v4, :cond_0

    return v4

    .line 859
    :cond_0
    nop

    .line 860
    invoke-virtual {p1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    .line 862
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 863
    add-int/lit8 v2, v2, 0x1

    .line 864
    goto :goto_0

    .line 867
    :cond_1
    nop

    .line 868
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 869
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 870
    add-int/lit8 v6, v6, 0x1

    .line 872
    :cond_2
    goto :goto_1

    .line 873
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    .line 878
    if-gtz v3, :cond_5

    if-eqz p2, :cond_4

    if-le v6, v4, :cond_4

    goto :goto_2

    .line 882
    :cond_4
    goto :goto_0

    .line 879
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 880
    goto :goto_0

    .line 884
    :cond_6
    if-gt v2, v4, :cond_8

    const/4 p2, 0x0

    .line 887
    invoke-virtual {p1, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v4, :cond_7

    goto :goto_3

    :cond_7
    goto :goto_4

    .line 884
    :cond_8
    :goto_3
    move v1, v4

    :goto_4
    return v1
.end method

.method private isDebugView()Z
    .locals 2

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .line 994
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d4    # @android:bool/config_wifi_convert_apband_5ghz_to_any

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isPatternLockType()Z
    .locals 5

    .line 1097
    nop

    .line 1099
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 1100
    if-eqz v1, :cond_0

    .line 1101
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    .line 1102
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    .line 1106
    :cond_0
    goto :goto_0

    .line 1104
    :catch_0
    move-exception v1

    .line 1105
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling mount service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :goto_0
    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .line 1009
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1010
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1012
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 1013
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 1014
    return-void
.end method

.method private listenPhoneStateBroadcast(Landroid/app/Activity;)V
    .locals 2

    .line 1082
    new-instance v0, Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateReceiver:Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;

    .line 1083
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1084
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateReceiver:Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1085
    return-void
.end method

.method private notifyUser()V
    .locals 4

    .line 367
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    if-lez v0, :cond_0

    .line 368
    const-string v0, "CryptKeeper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Counting down to notify user..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 371
    const-string v0, "CryptKeeper"

    const-string v1, "Notifying user that we are waiting for input..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 388
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    if-lez v0, :cond_2

    .line 390
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    goto :goto_1

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 395
    :cond_3
    :goto_1
    return-void
.end method

.method private passwordEntryInit()V
    .locals 4

    .line 766
    const-string v0, "CryptKeeper"

    const-string v1, "passwordEntryInit()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const v0, 0x7f0a0255    # @id/passwordEntry

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ImeAwareEditText;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    .line 769
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 771
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->requestFocus()Z

    .line 773
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 774
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 775
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImeAwareEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 779
    :cond_0
    const v0, 0x7f0a01f7    # @id/lockPattern

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 780
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 785
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 786
    const v0, 0x7f0a012b    # @id/emergencyCallButton

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 787
    if-eqz v0, :cond_2

    .line 788
    const-string v1, "CryptKeeper"

    const-string v2, "Removing the emergency Call button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 793
    :cond_2
    const v0, 0x7f0a0370    # @id/switch_ime_button

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 794
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 797
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isPatternLockType()Z

    move-result v2

    if-nez v2, :cond_3

    .line 798
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 799
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 800
    new-instance v2, Lcom/android/settings/CryptKeeper$7;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/CryptKeeper$7;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    :cond_3
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_4

    .line 812
    const-string v0, "CryptKeeper"

    const-string v1, "Acquiring wakelock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 814
    if-eqz v0, :cond_4

    .line 815
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 816
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 819
    const/16 v0, 0x60

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 824
    :cond_4
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    if-nez v0, :cond_5

    .line 825
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 827
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz v0, :cond_5

    .line 828
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    .line 832
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 834
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 835
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 838
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 840
    return-void
.end method

.method private removePhoneStateBroadcast(Landroid/app/Activity;)V
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateReceiver:Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateReceiver:Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1090
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateReceiver:Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;

    .line 1092
    :cond_0
    return-void
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 3

    .line 944
    nop

    .line 945
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 946
    move v0, v1

    goto :goto_0

    .line 945
    :cond_0
    const/4 v0, 0x0

    .line 946
    :goto_0
    if-nez v0, :cond_1

    .line 947
    const-string v0, "CryptKeeper"

    const-string v2, "Going into airplane mode."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 949
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 950
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 951
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 953
    :cond_1
    return-void
.end method

.method private final setBackFunctionality(Z)V
    .locals 1

    .line 725
    if-eqz p1, :cond_0

    .line 726
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v0, 0x3a70000

    invoke-virtual {p1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 728
    :cond_0
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v0, 0x3e70000

    invoke-virtual {p1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 730
    :goto_0
    return-void
.end method

.method private setupUi()V
    .locals 3

    .line 474
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:Z

    const v1, 0x7f0d006c    # @layout/crypt_keeper_progress 'res/layout/crypt_keeper_progress.xml'

    if-nez v0, :cond_6

    const-string v0, "error"

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 480
    :cond_0
    const-string v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "progress"

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 484
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    if-nez v0, :cond_3

    const-string v0, "password"

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 546
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    if-nez v0, :cond_5

    .line 548
    new-instance v0, Lcom/android/settings/CryptKeeper$ValidationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    goto :goto_2

    .line 485
    :cond_3
    :goto_0
    new-instance v0, Lcom/android/settings/CryptKeeper$4;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$4;-><init>(Lcom/android/settings/CryptKeeper;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 545
    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 482
    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 483
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->encryptionProgressInit()V

    .line 551
    :cond_5
    :goto_2
    return-void

    .line 475
    :cond_6
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 476
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mCorrupt:Z

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V

    .line 477
    return-void
.end method

.method private showFactoryReset(Z)V
    .locals 3

    .line 626
    const v0, 0x7f0a012f    # @id/encroid

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 629
    const v0, 0x7f0a0151    # @id/factory_reset

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 630
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 631
    new-instance v2, Lcom/android/settings/CryptKeeper$5;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/CryptKeeper$5;-><init>(Lcom/android/settings/CryptKeeper;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    const v0, 0x7f0a0333    # @id/status

    const v2, 0x7f0a038e    # @id/title

    if-eqz p1, :cond_0

    .line 646
    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f120435    # @string/crypt_keeper_data_corrupt_title 'Decryption unsuccessful'

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 647
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f120434    # @string/crypt_keeper_data_corrupt_summary 'The password you entered is correct, but unfortunately your data is corrupt. \n\nTo resume using your  ...'

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 649
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f12043d    # @string/crypt_keeper_failed_title 'Encryption unsuccessful'

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 650
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f12043c    # @string/crypt_keeper_failed_summary 'Encryption was interrupted and can’t complete. As a result, the data on your phone is no longer acce ...'

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 653
    :goto_0
    const p1, 0x7f0a0076    # @id/bottom_divider

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 655
    if-eqz p1, :cond_1

    .line 656
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 658
    :cond_1
    return-void
.end method

.method private takeEmergencyCallAction()V
    .locals 4

    .line 998
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 999
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick Button telecomManager.isInCall() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    goto :goto_0

    .line 1003
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->launchEmergencyDialer()V

    .line 1005
    :goto_0
    return-void
.end method

.method private updateEmergencyCallButtonState()V
    .locals 4

    .line 962
    const v0, 0x7f0a012b    # @id/emergencyCallButton

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 964
    if-nez v0, :cond_0

    .line 965
    return-void

    .line 967
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 968
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 969
    new-instance v1, Lcom/android/settings/CryptKeeper$8;

    invoke-direct {v1, p0}, Lcom/android/settings/CryptKeeper$8;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 982
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    const v1, 0x7f120449    # @string/cryptkeeper_return_to_call 'Return to call'

    .line 985
    const-string v2, "CryptKeeper"

    const-string v3, "show cryptkeeper_return_to_call"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 987
    :cond_1
    const v1, 0x7f120448    # @string/cryptkeeper_emergency_call 'Emergency call'

    .line 988
    const-string v2, "CryptKeeper"

    const-string v3, "show cryptkeeper_emergency_call"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 991
    return-void

    .line 977
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 978
    return-void
.end method

.method private updateProgress()V
    .locals 6

    .line 661
    const-string v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    const-string v1, "error_partially_encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 664
    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V

    .line 665
    return-void

    .line 669
    :cond_0
    const v1, 0x7f120442    # @string/crypt_keeper_setup_description 'Wait while your phone is being encrypted. ^1% complete.'

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 670
    nop

    .line 673
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x32

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :goto_0
    goto :goto_1

    .line 674
    :catch_0
    move-exception v0

    .line 675
    const-string v3, "CryptKeeper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 680
    const-string v3, "CryptKeeper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encryption progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :try_start_1
    const-string v3, "vold.encrypt_time_remaining"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 683
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 684
    if-ltz v3, :cond_2

    .line 686
    add-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0xa

    mul-int/lit8 v3, v3, 0xa

    .line 687
    int-to-long v3, v3

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 688
    const v0, 0x7f120443    # @string/crypt_keeper_setup_time_remaining 'Wait while your phone is being encrypted. Time remaining: ^1'

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 692
    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    .line 690
    :catch_1
    move-exception v0

    move-object v0, v3

    goto :goto_3

    .line 692
    :cond_2
    :goto_2
    goto :goto_3

    .line 690
    :catch_2
    move-exception v3

    .line 694
    :goto_3
    const v3, 0x7f0a0333    # @id/status

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 695
    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 696
    new-array v5, v4, [Ljava/lang/CharSequence;

    aput-object v0, v5, v2

    invoke-static {v1, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    :cond_3
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 701
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 702
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1055
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1045
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 403
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 407
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 408
    const-string v0, "CryptKeeper"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    invoke-static {p0}, Lcom/android/settings/CryptKeeper;->disableCryptKeeperComponent(Landroid/content/Context;)V

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->finish()V

    .line 421
    return-void

    .line 425
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004d    # @bool/crypt_keeper_allow_rotation 'true'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :cond_2
    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 433
    :goto_0
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 434
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3a70000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 436
    if-eqz p1, :cond_3

    .line 437
    const-string v0, "cooldown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    .line 440
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 441
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p1

    .line 444
    instance-of v0, p1, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v0, :cond_4

    .line 445
    check-cast p1, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    .line 446
    iget-object p1, p1, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object p1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 447
    const-string p1, "CryptKeeper"

    const-string v0, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 576
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 577
    const-string v0, "CryptKeeper"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 579
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 585
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 593
    :cond_2
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 900
    const/4 p3, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 925
    :cond_0
    return p3

    .line 902
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 904
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 905
    return v1

    .line 909
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 914
    invoke-direct {p0, p3}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 916
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x4

    if-lt p1, v2, :cond_3

    .line 917
    new-instance p1, Lcom/android/settings/CryptKeeper$DecryptTask;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    new-array v0, v1, [Ljava/lang/String;

    aput-object p2, v0, p3

    invoke-virtual {p1, v0}, Lcom/android/settings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 920
    :cond_3
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    .line 923
    :goto_1
    return v1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1033
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1034
    const/4 p1, 0x0

    return p1
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 568
    new-instance v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 569
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 571
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 453
    const-string v0, "cooldown"

    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 454
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 463
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 464
    const-string v0, "CryptKeeper"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-direct {p0, p0}, Lcom/android/settings/CryptKeeper;->listenPhoneStateBroadcast(Landroid/app/Activity;)V

    .line 466
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    .line 467
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 555
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 556
    invoke-direct {p0, p0}, Lcom/android/settings/CryptKeeper;->removePhoneStateBroadcast(Landroid/app/Activity;)V

    .line 557
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 559
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1050
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1051
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1039
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1040
    const/4 p1, 0x0

    return p1
.end method
