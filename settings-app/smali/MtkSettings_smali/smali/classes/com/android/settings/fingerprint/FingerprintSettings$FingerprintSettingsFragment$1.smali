.class Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$000(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 176
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$000(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 170
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$000(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 182
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 3

    .line 163
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result p1

    .line 164
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$000(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 165
    return-void
.end method
