.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$2;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 389
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 383
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    .line 384
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$400(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 386
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 379
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 376
    return-void
.end method
