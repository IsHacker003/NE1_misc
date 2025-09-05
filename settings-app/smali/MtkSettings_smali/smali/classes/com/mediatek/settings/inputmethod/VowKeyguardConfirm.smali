.class public Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;
.super Landroid/app/Activity;
.source "VowKeyguardConfirm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 7

    .line 56
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    .line 57
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 56
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 29
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 30
    const-string p3, "VowKeyguardConfirm"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/16 p3, 0x37

    if-eq p1, p3, :cond_0

    .line 33
    return-void

    .line 38
    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 39
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;->setResult(I)V

    .line 40
    invoke-virtual {p0}, Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;->finish()V

    goto :goto_0

    .line 42
    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;->setResult(I)V

    .line 43
    invoke-virtual {p0}, Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;->finish()V

    .line 45
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const-string p1, "VowKeyguardConfirm"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/16 p1, 0x37

    invoke-direct {p0, p1}, Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;->runKeyguardConfirmation(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 22
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;->setResult(I)V

    .line 23
    invoke-virtual {p0}, Lcom/mediatek/settings/inputmethod/VowKeyguardConfirm;->finish()V

    .line 25
    :cond_0
    return-void
.end method
