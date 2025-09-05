.class Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;
.super Landroid/os/Handler;
.source "FingerprintSettings.java"


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

    .line 210
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->handleError(ILjava/lang/CharSequence;)V

    .line 228
    goto :goto_0

    .line 225
    :pswitch_1
    goto :goto_0

    .line 220
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$300(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;I)V

    .line 221
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$200(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    .line 222
    goto :goto_0

    .line 215
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->removeFingerprintPreference(I)V

    .line 216
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$100(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    .line 217
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$200(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    .line 218
    nop

    .line 234
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
