.class final Lcom/android/settings/location/SettingsInjector$Setting;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/SettingsInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Setting"
.end annotation


# instance fields
.field public final preference:Landroid/support/v7/preference/Preference;

.field public final setting:Lcom/android/settings/location/InjectedSetting;

.field public startMillis:J

.field final synthetic this$0:Lcom/android/settings/location/SettingsInjector;


# direct methods
.method private constructor <init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p2, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    .line 493
    iput-object p3, p0, Lcom/android/settings/location/SettingsInjector$Setting;->preference:Landroid/support/v7/preference/Preference;

    .line 494
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;Landroid/support/v7/preference/Preference;Lcom/android/settings/location/SettingsInjector$1;)V
    .locals 0

    .line 485
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/location/SettingsInjector$Setting;-><init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;Landroid/support/v7/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 510
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/settings/location/SettingsInjector$Setting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    check-cast p1, Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object p1, p1, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v0, p1}, Lcom/android/settings/location/InjectedSetting;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getElapsedTime()J
    .locals 4

    .line 565
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 566
    iget-wide v2, p0, Lcom/android/settings/location/SettingsInjector$Setting;->startMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v0}, Lcom/android/settings/location/InjectedSetting;->hashCode()I

    move-result v0

    return v0
.end method

.method public maybeLogElapsedTime()V
    .locals 5

    .line 570
    const-string v0, "SettingsInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->startMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/location/SettingsInjector$Setting;->getElapsedTime()J

    move-result-wide v0

    .line 572
    const-string v2, "SettingsInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " update took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " millis"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    return-void
.end method

.method public startService()V
    .locals 5

    .line 523
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    .line 524
    invoke-static {v0}, Lcom/android/settings/location/SettingsInjector;->access$200(Lcom/android/settings/location/SettingsInjector;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 525
    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    iget-object v1, v1, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    const-string v0, "SettingsInjector"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    const-string v0, "SettingsInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start service as user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    iget-object v2, v2, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    .line 528
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    return-void

    .line 532
    :cond_1
    new-instance v0, Lcom/android/settings/location/SettingsInjector$Setting$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/SettingsInjector$Setting$1;-><init>(Lcom/android/settings/location/SettingsInjector$Setting;)V

    .line 546
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 548
    iget-object v2, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v2}, Lcom/android/settings/location/InjectedSetting;->getServiceIntent()Landroid/content/Intent;

    move-result-object v2

    .line 549
    const-string v3, "messenger"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 551
    const-string v1, "SettingsInjector"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 552
    const-string v1, "SettingsInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": sending update intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", handler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->startMillis:J

    goto :goto_0

    .line 556
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->startMillis:J

    .line 561
    :goto_0
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    invoke-static {v0}, Lcom/android/settings/location/SettingsInjector;->access$200(Lcom/android/settings/location/SettingsInjector;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    iget-object v1, v1, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 562
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting{setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", preference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$Setting;->preference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
