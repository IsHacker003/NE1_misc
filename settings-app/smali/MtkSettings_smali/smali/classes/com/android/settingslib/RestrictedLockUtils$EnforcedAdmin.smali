.class public Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
.super Ljava/lang/Object;
.source "RestrictedLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/RestrictedLockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnforcedAdmin"
.end annotation


# static fields
.field public static final MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# instance fields
.field public component:Landroid/content/ComponentName;

.field public enforcedRestriction:Ljava/lang/String;

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 730
    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v0}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>()V

    sput-object v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 725
    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    .line 727
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 760
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 1

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 725
    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    .line 727
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 740
    iput-object p1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 741
    iput p2, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 742
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 1

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 725
    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    .line 727
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 745
    iput-object p1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 746
    iput-object p2, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    .line 747
    iput p3, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 748
    return-void
.end method

.method public static createDefaultEnforcedAdminWithRestriction(Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    .line 734
    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v0}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>()V

    .line 735
    iput-object p0, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    .line 736
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 764
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 765
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 766
    :cond_1
    check-cast p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 767
    iget v2, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    iget v3, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 768
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    .line 769
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 767
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 765
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 774
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnforcedAdmin{component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enforcedRestriction=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
