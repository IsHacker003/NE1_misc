.class public Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "EncryptionInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptionInterstitialFragment"
.end annotation


# instance fields
.field private mDontRequirePasswordToDecrypt:Landroid/view/View;

.field private mPasswordRequired:Z

.field private mRequestedPasswordQuality:I

.field private mRequirePasswordToDecrypt:Landroid/view/View;

.field private mUnlockMethodIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    return-void
.end method

.method private setRequirePasswordState(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    .line 202
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 206
    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 212
    :goto_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 98
    const/16 v0, 0x30

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 173
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 174
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->finish()V

    .line 178
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecrypt:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    .line 184
    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    if-nez p1, :cond_0

    .line 185
    invoke-direct {p0, v1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 186
    iget p1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    invoke-static {p1}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->newInstance(I)Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;

    move-result-object p1

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "AccessibilityWarningDialog"

    .line 187
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    .line 194
    :goto_0
    goto :goto_1

    .line 195
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    .line 198
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 104
    const p3, 0x7f0d008f    # @layout/encryption_interstitial 'res/layout/encryption_interstitial.xml'

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 109
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 112
    invoke-static {}, Lcom/android/settings/EncryptionInterstitial;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncryptionInterstitialFragment onViewCreated,  isActivityFinishing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isActivity Destroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "Monkey user :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_3

    .line 122
    :cond_0
    const p2, 0x7f0a0131    # @id/encrypt_require_password

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecrypt:Landroid/view/View;

    .line 123
    const p2, 0x7f0a0130    # @id/encrypt_dont_require_password

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecrypt:Landroid/view/View;

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "for_fingerprint"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 127
    const-string v2, "extra_password_quality"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    .line 128
    const-string v1, "extra_unlock_method_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    .line 130
    iget v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_4

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_2

    .line 143
    if-eqz p2, :cond_1

    .line 144
    const p2, 0x7f1205d8    # @string/encryption_interstitial_message_password_for_fingerprint 'In addition to using your fingerprint to unlock your device, you can further protect this device by  ...'

    goto :goto_2

    .line 145
    :cond_1
    const p2, 0x7f1205d7    # @string/encryption_interstitial_message_password 'You can further protect this device by requiring your password before it starts up. Until the device ...'

    goto :goto_2

    .line 138
    :cond_2
    if-eqz p2, :cond_3

    .line 139
    const p2, 0x7f1205dc    # @string/encryption_interstitial_message_pin_for_fingerprint 'In addition to using your fingerprint to unlock your device, you can further protect this device by  ...'

    goto :goto_0

    .line 140
    :cond_3
    const p2, 0x7f1205db    # @string/encryption_interstitial_message_pin 'You can further protect this device by requiring your PIN before it starts up. Until the device star ...'

    .line 141
    :goto_0
    goto :goto_2

    .line 132
    :cond_4
    if-eqz p2, :cond_5

    .line 133
    const p2, 0x7f1205da    # @string/encryption_interstitial_message_pattern_for_fingerprint 'In addition to using your fingerprint to unlock your device, you can further protect this device by  ...'

    goto :goto_1

    .line 134
    :cond_5
    const p2, 0x7f1205d9    # @string/encryption_interstitial_message_pattern 'You can further protect this device by requiring your pattern before it starts up. Until the device  ...'

    .line 135
    :goto_1
    nop

    .line 148
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0132    # @id/encryption_message

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget-object p2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecrypt:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object p2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecrypt:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "extra_require_password"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 157
    check-cast p1, Lcom/android/setupwizardlib/GlifLayout;

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 159
    return-void

    .line 118
    :cond_6
    :goto_3
    invoke-static {}, Lcom/android/settings/EncryptionInterstitial;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SettingsActivity is finishing or destroyed, returning"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method protected startLockIntent()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    const-string v1, "extra_require_password"

    iget-boolean v2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Lcom/android/settings/EncryptionInterstitial;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no unlock intent to start"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->finish()V

    .line 169
    :goto_0
    return-void
.end method
