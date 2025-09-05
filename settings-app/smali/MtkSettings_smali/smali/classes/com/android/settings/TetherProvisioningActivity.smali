.class public Lcom/android/settings/TetherProvisioningActivity;
.super Landroid/app/Activity;
.source "TetherProvisioningActivity.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mResultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-string v0, "TetherProvisioningAct"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/TetherProvisioningActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 74
    if-nez p1, :cond_2

    .line 75
    sget-boolean p1, Lcom/android/settings/TetherProvisioningActivity;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "TetherProvisioningAct"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got result from app: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 77
    const/4 p1, 0x0

    goto :goto_0

    .line 78
    :cond_1
    const/16 p1, 0xb

    .line 79
    :goto_0
    iget-object p2, p0, Lcom/android/settings/TetherProvisioningActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/TetherProvisioningActivity;->finish()V

    .line 82
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/TetherProvisioningActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extraProvisionCallback"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/android/settings/TetherProvisioningActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/TetherProvisioningActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extraAddTetherType"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/TetherProvisioningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070036    # @android:array/config_mobile_tcp_buffers

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v2, 0x0

    aget-object v3, v0, v2

    const/4 v4, 0x1

    aget-object v5, v0, v4

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v3, "TETHER_TYPE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    sget-boolean p1, Lcom/android/settings/TetherProvisioningActivity;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 57
    const-string p1, "TetherProvisioningAct"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting provisioning app: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherProvisioningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v0, 0x10000

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 61
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 62
    const-string p1, "TetherProvisioningAct"

    const-string v0, "Provisioning app is configured, but not available."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p1, p0, Lcom/android/settings/TetherProvisioningActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/TetherProvisioningActivity;->finish()V

    .line 65
    return-void

    .line 68
    :cond_1
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/settings/TetherProvisioningActivity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    .line 69
    return-void
.end method
