.class public Lcom/mediatek/nfc/SwitchErrorActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SwitchErrorActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/mediatek/nfc/SwitchErrorActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 49
    const v1, 0x1080027    # @android:drawable/ic_dialog_alert

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 50
    const v1, 0x7f12037d    # @string/card_emulation_switch_error_title 'Error'

    invoke-virtual {p0, v1}, Lcom/mediatek/nfc/SwitchErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 51
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f12037c    # @string/card_emulation_switch_error_message 'Failed to switch to %1$s.'

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/nfc/SwitchErrorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 52
    const p1, 0x104000a    # @android:string/ok

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/SwitchErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 53
    invoke-virtual {p0}, Lcom/mediatek/nfc/SwitchErrorActivity;->setupAlert()V

    .line 54
    return-void
.end method

.method private showNotSupportDialog(Ljava/lang/String;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/mediatek/nfc/SwitchErrorActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 58
    const v1, 0x1080027    # @android:drawable/ic_dialog_alert

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 59
    const v1, 0x7f12037d    # @string/card_emulation_switch_error_title 'Error'

    invoke-virtual {p0, v1}, Lcom/mediatek/nfc/SwitchErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 60
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f12037b    # @string/card_emulation_sim_not_supported_message '%1$s does not support NFC Card emulation function.'

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/nfc/SwitchErrorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 61
    const p1, 0x104000a    # @android:string/ok

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/SwitchErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/nfc/SwitchErrorActivity;->setupAlert()V

    .line 63
    return-void
.end method

.method private showTwoSimNotSupportDialog()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/mediatek/nfc/SwitchErrorActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 67
    const v1, 0x1080027    # @android:drawable/ic_dialog_alert

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 68
    const v1, 0x7f12037d    # @string/card_emulation_switch_error_title 'Error'

    invoke-virtual {p0, v1}, Lcom/mediatek/nfc/SwitchErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 69
    const v1, 0x7f120380    # @string/card_emulation_two_sim_not_supported_message 'SIM1,SIM2 do not support NFC Card emulation function.'

    invoke-virtual {p0, v1}, Lcom/mediatek/nfc/SwitchErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 70
    const v1, 0x104000a    # @android:string/ok

    invoke-virtual {p0, v1}, Lcom/mediatek/nfc/SwitchErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {p0}, Lcom/mediatek/nfc/SwitchErrorActivity;->setupAlert()V

    .line 72
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 24
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/mediatek/nfc/SwitchErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string v1, "android.nfc.action.SWITCH_FAIL_DIALOG_REQUEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    const-string v0, "@M_SwitchErrorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switch fail mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-direct {p0, p1}, Lcom/mediatek/nfc/SwitchErrorActivity;->showErrorDialog(Ljava/lang/String;)V

    .line 31
    goto :goto_0

    :cond_0
    const-string v1, "android.nfc.action.NOT_NFC_SIM_DIALOG_REQUEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const-string v0, "android.nfc.extra.WHAT_SIM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    const-string v0, "@M_SwitchErrorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show not support dialog, sim is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-direct {p0, p1}, Lcom/mediatek/nfc/SwitchErrorActivity;->showNotSupportDialog(Ljava/lang/String;)V

    .line 35
    goto :goto_0

    :cond_1
    const-string p1, "android.nfc.action.NOT_NFC_TWO_SIM_DIALOG_REQUEST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 36
    const-string p1, "@M_SwitchErrorActivity"

    const-string v0, "show not support dialog for SIM1 and SIM2"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-direct {p0}, Lcom/mediatek/nfc/SwitchErrorActivity;->showTwoSimNotSupportDialog()V

    .line 45
    :goto_0
    return-void

    .line 39
    :cond_2
    const-string p1, "@M_SwitchErrorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: this activity may be started only with intent android.nfc.action.SWITCH_FAIL_DIALOG_REQUEST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Lcom/mediatek/nfc/SwitchErrorActivity;->finish()V

    .line 42
    return-void
.end method
