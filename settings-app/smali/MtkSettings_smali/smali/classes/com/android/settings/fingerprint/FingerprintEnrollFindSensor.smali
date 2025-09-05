.class public Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;
.super Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFindSensor.java"


# instance fields
.field private mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

.field private mLaunchedConfirmLock:Z

.field private mNextClicked:Z

.field private mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->proceedToEnrolling(Z)V

    return-void
.end method

.method private launchConfirmLock()V
    .locals 9

    .line 209
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v6

    .line 210
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 211
    nop

    .line 212
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mUserId:I

    const v2, 0x7f120c00    # @string/security_settings_fingerprint_preference_title 'Fingerprint'

    const/16 v3, -0x2710

    if-ne v0, v3, :cond_0

    .line 213
    const/4 v0, 0x1

    .line 214
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 213
    move v2, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v0

    goto :goto_0

    .line 217
    :cond_0
    const/4 v0, 0x1

    .line 218
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mUserId:I

    .line 217
    move v2, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    .line 221
    :goto_0
    if-nez v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_1

    .line 226
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    .line 228
    :goto_1
    return-void
.end method

.method private proceedToEnrolling(Z)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    .line 156
    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 165
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 168
    :cond_1
    return-void
.end method

.method private startLookingForFingerprint()V
    .locals 3

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 89
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    const-string v2, "sidecar"

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .line 75
    const v0, 0x7f0d0098    # @layout/fingerprint_enroll_find_sensor '@layout/fingerprint_enroll_find_sensor_base'

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 232
    const/16 v0, 0xf1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 172
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 173
    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 174
    const-string p1, "hw_auth_token"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    .line 175
    const p1, 0x7f01001c    # @anim/suw_slide_next_in 'res/anim/suw_slide_next_in.xml'

    const p2, 0x7f01001d    # @anim/suw_slide_next_out 'res/anim/suw_slide_next_out.xml'

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->overridePendingTransition(II)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "hw_auth_token"

    iget-object p3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 177
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    goto :goto_1

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_1

    .line 181
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 182
    if-ne p2, v0, :cond_2

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_1

    .line 185
    :cond_2
    if-ne p2, v1, :cond_3

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_1

    .line 188
    :cond_3
    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_1

    .line 192
    :cond_4
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e0046    # @android:integer/config_globalActionsKeyTimeout

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 196
    if-lt p1, p2, :cond_5

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 200
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    .line 202
    :goto_0
    goto :goto_1

    .line 204
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 206
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0317    # @id/skip_button

    if-eq v0, v1, :cond_0

    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->onSkipButtonClick()V

    .line 143
    nop

    .line 147
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setContentView(I)V

    .line 52
    const v0, 0x7f0a0317    # @id/skip_button

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f120beb    # @string/security_settings_fingerprint_enroll_find_sensor_title 'Touch the sensor'

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setHeaderText(I)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    const-string v0, "launched_confirm_lock"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    .line 58
    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    if-nez p1, :cond_1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->launchConfirmLock()V

    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    if-eqz p1, :cond_2

    .line 64
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    .line 66
    :cond_2
    :goto_0
    const p1, 0x7f0a0161    # @id/fingerprint_sensor_location_animation

    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 67
    instance-of v0, p1, Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    if-eqz v0, :cond_3

    .line 68
    check-cast p1, Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    goto :goto_1

    .line 70
    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    .line 72
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 125
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onDestroy()V

    .line 126
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;->stopAnimation()V

    .line 129
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    const-string v0, "launched_confirm_lock"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 136
    return-void
.end method

.method protected onSkipButtonClick()V
    .locals 1

    .line 150
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    .line 152
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onStart()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;->startAnimation()V

    .line 84
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onStop()V

    .line 118
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;->pauseAnimation()V

    .line 121
    :cond_0
    return-void
.end method
