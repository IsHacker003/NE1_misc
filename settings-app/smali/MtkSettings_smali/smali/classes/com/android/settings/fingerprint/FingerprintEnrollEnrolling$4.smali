.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "FingerprintEnrollEnrolling.java"


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

    .line 401
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 404
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$600(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 405
    return-void

    .line 409
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;

    move-result-object p1

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;)V

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 415
    return-void
.end method
