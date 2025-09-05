.class public Lcom/android/settings/notification/AudioHelper;
.super Ljava/lang/Object;
.source "AudioHelper.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/settings/notification/AudioHelper;->mContext:Landroid/content/Context;

    .line 37
    iget-object p1, p0, Lcom/android/settings/notification/AudioHelper;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 38
    return-void
.end method


# virtual methods
.method public createPackageContextAsUser(I)Landroid/content/Context;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/AudioHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getManagedProfileId(Landroid/os/UserManager;)I
    .locals 1

    .line 45
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    return p1
.end method

.method public getMaxVolume(I)I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    return p1
.end method

.method public getRingerModeInternal()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    return p1
.end method

.method public isSingleVolume()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/settings/notification/AudioHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isUserUnlocked(Landroid/os/UserManager;I)Z
    .locals 0

    .line 49
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p1

    return p1
.end method

.method public setStreamVolume(II)Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 70
    const/4 p1, 0x1

    return p1
.end method
