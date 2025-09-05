.class public Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;
.super Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollIntroduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;


# instance fields
.field private mErrorText:Landroid/widget/TextView;

.field private mFingerprintUnlockDisabledByAdmin:Z

.field private mHasPassword:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method

.method private launchChooseLock()V
    .locals 5

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getChooseLockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 134
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v1

    .line 135
    const-string v3, "minimum_quality"

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v3, "hide_disabled_prefs"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    const-string v3, "has_challenge"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    const-string v3, "challenge"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 140
    const-string v1, "for_fingerprint"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 142
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    :cond_0
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 145
    return-void
.end method

.method private launchFindSensor([B)V
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getFindSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .line 149
    if-eqz p1, :cond_0

    .line 150
    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 152
    :cond_0
    iget p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_1

    .line 153
    const-string p1, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    :cond_1
    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 156
    return-void
.end method

.method private updatePasswordQuality()V
    .locals 3

    .line 111
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    .line 112
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 113
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mHasPassword:Z

    .line 114
    return-void
.end method


# virtual methods
.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 2

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 201
    const/16 v0, 0xf3

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .line 118
    const v0, 0x7f0a015d    # @id/fingerprint_next_button

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected initViews()V
    .locals 2

    .line 210
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->initViews()V

    .line 212
    const v0, 0x7f0a0109    # @id/description_text

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 213
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    if-eqz v1, :cond_0

    .line 214
    const v1, 0x7f120bf4    # @string/security_settings_fingerprint_enroll_introduction_message_unlock_disabled 'Use your fingerprint to unlock your phone or approve purchases.\n\nNote: You can’t use your fingerprin ...'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 217
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 168
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 169
    move v1, v0

    goto :goto_0

    .line 168
    :cond_0
    const/4 v1, 0x0

    .line 169
    :goto_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 170
    if-nez v1, :cond_1

    if-ne p2, v2, :cond_5

    .line 171
    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, -0x1

    nop

    .line 172
    :cond_2
    invoke-virtual {p0, v2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 174
    return-void

    .line 176
    :cond_3
    if-ne p1, v0, :cond_4

    .line 177
    if-eqz v1, :cond_5

    .line 178
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->updatePasswordQuality()V

    .line 179
    const-string p1, "hw_auth_token"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 181
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->launchFindSensor([B)V

    .line 182
    return-void

    .line 184
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 185
    const v0, 0x7f01001a    # @anim/suw_slide_back_in 'res/anim/suw_slide_back_in.xml'

    const v1, 0x7f01001b    # @anim/suw_slide_back_out 'res/anim/suw_slide_back_out.xml'

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->overridePendingTransition(II)V

    .line 187
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 188
    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 206
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a015a    # @id/fingerprint_cancel_button

    if-ne v0, v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onCancelButtonClick()V

    goto :goto_0

    .line 195
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    .line 197
    :goto_0
    return-void
.end method

.method public onClick(Lcom/android/setupwizardlib/span/LinkSpan;)V
    .locals 3

    .line 221
    const-string v0, "url"

    invoke-virtual {p1}, Lcom/android/setupwizardlib/span/LinkSpan;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 222
    const p1, 0x7f120702    # @string/help_url_fingerprint ''

    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 224
    if-nez p1, :cond_0

    .line 225
    const-string p1, "FingerprintIntro"

    const-string v0, "Null help intent."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    goto :goto_0

    .line 232
    :catch_0
    move-exception p1

    .line 233
    const-string v0, "FingerprintIntro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity was not found for intent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iget p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v0, 0x20

    invoke-static {p0, v0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    .line 64
    const p1, 0x7f0d009f    # @layout/fingerprint_enroll_introduction 'res/layout/fingerprint_enroll_introduction.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setContentView(I)V

    .line 65
    iget-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    if-eqz p1, :cond_1

    .line 66
    const p1, 0x7f120bf6    # @string/security_settings_fingerprint_enroll_introduction_title_unlock_disabled 'Use your fingerprint'

    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    goto :goto_1

    .line 69
    :cond_1
    const p1, 0x7f120bf5    # @string/security_settings_fingerprint_enroll_introduction_title 'Unlock with fingerprint'

    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    .line 72
    :goto_1
    const p1, 0x7f0a015a    # @id/fingerprint_cancel_button

    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 73
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const p1, 0x7f0a0145    # @id/error_text

    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    .line 77
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    .line 78
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->updatePasswordQuality()V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 82
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mHasPassword:Z

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->launchChooseLock()V

    goto :goto_0

    .line 128
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->launchFindSensor([B)V

    .line 130
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 86
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onResume()V

    .line 88
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 89
    nop

    .line 90
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0046    # @android:integer/config_globalActionsKeyTimeout

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 93
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    .line 94
    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 95
    if-lt v0, v2, :cond_0

    .line 96
    const v0, 0x7f120665    # @string/fingerprint_intro_error_max 'You’ve added the maximum number of fingerprints'

    goto :goto_0

    .line 98
    :cond_0
    move v0, v1

    :goto_0
    goto :goto_1

    .line 99
    :cond_1
    const v0, 0x7f120666    # @string/fingerprint_intro_error_unknown 'Can’t add more fingerprints'

    .line 101
    :goto_1
    if-nez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    :goto_2
    return-void
.end method
