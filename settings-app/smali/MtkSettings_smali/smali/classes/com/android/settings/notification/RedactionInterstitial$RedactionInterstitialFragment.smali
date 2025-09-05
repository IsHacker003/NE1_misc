.class public Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RedactionInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RedactionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedactionInterstitialFragment"
.end annotation


# instance fields
.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

.field private mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private checkNotificationFeaturesAndSetDisabled(Lcom/android/settings/RestrictedRadioButton;I)V
    .locals 2

    .line 169
    nop

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 169
    invoke-static {v0, p2, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    .line 171
    invoke-virtual {p1, p2}, Lcom/android/settings/RestrictedRadioButton;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 172
    return-void
.end method

.method private loadFromSettings()V
    .locals 6

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    .line 178
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_show_notifications"

    iget v4, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 178
    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    move v0, v2

    goto :goto_1

    .line 178
    :cond_1
    :goto_0
    nop

    .line 180
    move v0, v1

    .line 181
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_allow_private_notifications"

    iget v5, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 180
    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 183
    :cond_2
    move v1, v2

    :goto_2
    const v2, 0x7f0a018c    # @id/hide_all

    .line 184
    if-eqz v0, :cond_4

    .line 185
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {v0}, Lcom/android/settings/RestrictedRadioButton;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_3

    .line 186
    const v2, 0x7f0a0303    # @id/show_all

    goto :goto_3

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {v0}, Lcom/android/settings/RestrictedRadioButton;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_4

    .line 188
    const v2, 0x7f0a02a1    # @id/redact_sensitive

    .line 192
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 193
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 108
    const/16 v0, 0x4a

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 197
    const/4 p1, 0x0

    const/4 v0, 0x1

    const v1, 0x7f0a0303    # @id/show_all

    if-ne p2, v1, :cond_0

    .line 198
    move v1, v0

    goto :goto_0

    .line 197
    :cond_0
    nop

    .line 198
    move v1, p1

    :goto_0
    const v2, 0x7f0a018c    # @id/hide_all

    if-eq p2, v2, :cond_1

    .line 200
    move p1, v0

    goto :goto_1

    .line 198
    :cond_1
    nop

    .line 200
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "lock_screen_allow_private_notifications"

    .line 201
    iget v2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 200
    invoke-static {p2, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "lock_screen_show_notifications"

    .line 203
    iget v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 202
    invoke-static {p2, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 205
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02a2    # @id/redaction_done_button

    if-ne p1, v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->setEnabled(Landroid/content/Context;Z)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/RedactionInterstitial;

    .line 147
    if-eqz p1, :cond_0

    .line 148
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->setResult(ILandroid/content/Intent;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->finish()V

    .line 152
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 114
    const p3, 0x7f0d011c    # @layout/redaction_interstitial 'res/layout/redaction_interstitial.xml'

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 156
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 159
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->checkNotificationFeaturesAndSetDisabled(Lcom/android/settings/RestrictedRadioButton;I)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->checkNotificationFeaturesAndSetDisabled(Lcom/android/settings/RestrictedRadioButton;I)V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->loadFromSettings()V

    .line 165
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 119
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 120
    const p2, 0x7f0a029c    # @id/radio_group

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 121
    const p2, 0x7f0a0303    # @id/show_all

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/RestrictedRadioButton;

    iput-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    .line 122
    nop

    .line 123
    const p2, 0x7f0a02a1    # @id/redact_sensitive

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/RestrictedRadioButton;

    iput-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    .line 125
    iget-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 126
    nop

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 126
    invoke-static {p2, v0}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 129
    const p2, 0x7f0a020b    # @id/message

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f12081c    # @string/lock_screen_notifications_interstitial_message_profile 'When your device is locked, how do you want profile notifications to show?'

    .line 130
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 131
    iget-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    const v0, 0x7f120823    # @string/lock_screen_notifications_summary_show_profile 'Show all work notification content'

    invoke-virtual {p2, v0}, Lcom/android/settings/RestrictedRadioButton;->setText(I)V

    .line 132
    iget-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    const v0, 0x7f120821    # @string/lock_screen_notifications_summary_hide_profile 'Hide sensitive work content'

    .line 133
    invoke-virtual {p2, v0}, Lcom/android/settings/RestrictedRadioButton;->setText(I)V

    .line 135
    const p2, 0x7f0a018c    # @id/hide_all

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 138
    :cond_0
    const p2, 0x7f0a02a2    # @id/redaction_done_button

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 139
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method
