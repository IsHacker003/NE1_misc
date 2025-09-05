.class public Lcom/mediatek/settings/RestoreRotationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RestoreRotationReceiver.java"


# static fields
.field public static sRestoreRetore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/settings/RestoreRotationReceiver;->sRestoreRetore:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 55
    const-string v0, "RestoreRotationReceiver_IPO"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 57
    nop

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "accelerometer_rotation_restore"

    .line 57
    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {p2, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    sput-boolean p2, Lcom/mediatek/settings/RestoreRotationReceiver;->sRestoreRetore:Z

    .line 61
    sget-boolean p2, Lcom/mediatek/settings/RestoreRotationReceiver;->sRestoreRetore:Z

    if-eqz p2, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "accelerometer_rotation"

    invoke-static {p2, v3, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "accelerometer_rotation_restore"

    invoke-static {p1, p2, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 68
    :cond_1
    return-void
.end method
