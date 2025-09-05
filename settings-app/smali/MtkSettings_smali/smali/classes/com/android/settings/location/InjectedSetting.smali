.class Lcom/android/settings/location/InjectedSetting;
.super Ljava/lang/Object;
.source "InjectedSetting.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/InjectedSetting$Builder;
    }
.end annotation


# instance fields
.field public final className:Ljava/lang/String;

.field public final iconId:I

.field public final mUserHandle:Landroid/os/UserHandle;

.field public final packageName:Ljava/lang/String;

.field public final settingsActivity:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final userRestriction:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/settings/location/InjectedSetting$Builder;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Lcom/android/settings/location/InjectedSetting$Builder;->access$000(Lcom/android/settings/location/InjectedSetting$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/android/settings/location/InjectedSetting$Builder;->access$100(Lcom/android/settings/location/InjectedSetting$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/InjectedSetting;->className:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lcom/android/settings/location/InjectedSetting$Builder;->access$200(Lcom/android/settings/location/InjectedSetting$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/InjectedSetting;->title:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lcom/android/settings/location/InjectedSetting$Builder;->access$300(Lcom/android/settings/location/InjectedSetting$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/location/InjectedSetting;->iconId:I

    .line 79
    invoke-static {p1}, Lcom/android/settings/location/InjectedSetting$Builder;->access$400(Lcom/android/settings/location/InjectedSetting$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    .line 80
    invoke-static {p1}, Lcom/android/settings/location/InjectedSetting$Builder;->access$500(Lcom/android/settings/location/InjectedSetting$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    .line 81
    invoke-static {p1}, Lcom/android/settings/location/InjectedSetting$Builder;->access$600(Lcom/android/settings/location/InjectedSetting$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/location/InjectedSetting$Builder;Lcom/android/settings/location/InjectedSetting$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/location/InjectedSetting;-><init>(Lcom/android/settings/location/InjectedSetting$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 108
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 109
    :cond_0
    instance-of v1, p1, Lcom/android/settings/location/InjectedSetting;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 111
    :cond_1
    check-cast p1, Lcom/android/settings/location/InjectedSetting;

    .line 113
    iget-object v1, p0, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/location/InjectedSetting;->className:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/location/InjectedSetting;->className:Ljava/lang/String;

    .line 114
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/location/InjectedSetting;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/location/InjectedSetting;->title:Ljava/lang/String;

    .line 115
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/location/InjectedSetting;->iconId:I

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/android/settings/location/InjectedSetting;->iconId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    .line 117
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    .line 118
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    .line 119
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 113
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getServiceIntent()Landroid/content/Intent;
    .locals 3

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/location/InjectedSetting;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 125
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/settings/location/InjectedSetting;->className:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 126
    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/settings/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 127
    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/settings/location/InjectedSetting;->iconId:I

    add-int/2addr v0, v2

    .line 128
    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    .line 129
    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/settings/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 130
    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/settings/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    .line 131
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InjectedSetting{mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mClassName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/location/InjectedSetting;->className:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", label="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", iconId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/location/InjectedSetting;->iconId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    .line 91
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", settingsActivity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", userRestriction=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    return-object v0
.end method
