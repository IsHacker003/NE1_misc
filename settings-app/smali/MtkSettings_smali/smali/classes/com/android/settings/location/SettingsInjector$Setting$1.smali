.class Lcom/android/settings/location/SettingsInjector$Setting$1;
.super Landroid/os/Handler;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/SettingsInjector$Setting;->startService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/location/SettingsInjector$Setting;


# direct methods
.method constructor <init>(Lcom/android/settings/location/SettingsInjector$Setting;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 535
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 536
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 537
    const-string v2, "SettingsInjector"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 538
    const-string v2, "SettingsInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v4, v4, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", bundle: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_0
    iget-object p1, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object p1, p1, Lcom/android/settings/location/SettingsInjector$Setting;->preference:Landroid/support/v7/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 541
    iget-object p1, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object p1, p1, Lcom/android/settings/location/SettingsInjector$Setting;->preference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 542
    iget-object p1, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object p1, p1, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    invoke-static {p1}, Lcom/android/settings/location/SettingsInjector;->access$400(Lcom/android/settings/location/SettingsInjector;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v0, v0, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    .line 543
    invoke-static {v0}, Lcom/android/settings/location/SettingsInjector;->access$400(Lcom/android/settings/location/SettingsInjector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 542
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 544
    return-void
.end method
