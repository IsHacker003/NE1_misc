.class public Lcom/android/settings/fingerprint/FingerprintSettings;
.super Lcom/android/settings/SubSettings;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;,
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SubSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 104
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 110
    const-class v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 111
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/SubSettings;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const p1, 0x7f120c00    # @string/security_settings_fingerprint_preference_title 'Fingerprint'

    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method
