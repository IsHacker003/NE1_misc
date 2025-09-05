.class public Lcom/android/settings/CryptKeeperConfirm$Blank;
.super Landroid/app/Activity;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blank"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const p1, 0x7f0d0063    # @layout/crypt_keeper_blank 'res/layout/crypt_keeper_blank.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeperConfirm$Blank;->setContentView(I)V

    .line 61
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm$Blank;->finish()V

    .line 65
    :cond_0
    const-string p1, "statusbar"

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeperConfirm$Blank;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatusBarManager;

    .line 66
    const/high16 v0, 0x3770000

    invoke-virtual {p1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 78
    iget-object p1, p0, Lcom/android/settings/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/CryptKeeperConfirm$Blank$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperConfirm$Blank$1;-><init>(Lcom/android/settings/CryptKeeperConfirm$Blank;)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    return-void
.end method
