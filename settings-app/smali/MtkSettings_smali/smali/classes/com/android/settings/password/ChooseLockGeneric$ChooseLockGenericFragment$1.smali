.class Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;I)V
    .locals 0

    .line 713
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    iput p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->val$userId:I

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 4

    .line 717
    const-string p2, "ChooseLockGenericFragment"

    const-string v0, "Can\'t remove fingerprint %d in group %d. Reason: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 719
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    .line 717
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    .line 726
    if-nez p2, :cond_0

    .line 727
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    iget p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->val$userId:I

    invoke-static {p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$000(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;I)V

    .line 729
    :cond_0
    return-void
.end method
