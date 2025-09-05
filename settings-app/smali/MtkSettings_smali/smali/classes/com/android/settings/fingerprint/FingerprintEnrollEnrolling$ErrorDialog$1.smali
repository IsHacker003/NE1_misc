.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

.field final synthetic val$errMsgId:I


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;I)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    iput p2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->val$errMsgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 490
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 491
    iget p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->val$errMsgId:I

    const/4 p2, 0x1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 493
    move p1, p2

    goto :goto_0

    .line 491
    :cond_0
    const/4 p1, 0x0

    .line 493
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 494
    if-eqz p1, :cond_1

    .line 495
    nop

    .line 494
    move p2, v0

    goto :goto_1

    .line 495
    :cond_1
    nop

    .line 494
    :goto_1
    invoke-virtual {v1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 496
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 497
    return-void
.end method
