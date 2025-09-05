.class Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollFindSensor.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    .line 107
    iget-object p2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {p2}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$000(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 108
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$002(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)Z

    .line 109
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public onEnrollmentHelp(Ljava/lang/CharSequence;)V
    .locals 0

    .line 103
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$002(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)Z

    .line 98
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)V

    .line 99
    return-void
.end method
