.class Lcom/android/settings/notification/NotificationSettingsBase$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 381
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 382
    iget-object p2, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object p2, p2, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object p2, p2, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 383
    :cond_0
    invoke-static {}, Lcom/android/settings/notification/NotificationSettingsBase;->access$000()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 384
    const-string p2, "NotifiSettingsBase"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") removed. RemovingNotificationSettingsBase."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationSettingsBase;->onPackageRemoved()V

    .line 389
    :cond_2
    return-void
.end method
