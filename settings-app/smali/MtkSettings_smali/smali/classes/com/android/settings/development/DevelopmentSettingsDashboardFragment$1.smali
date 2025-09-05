.class Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "DevelopmentSettingsDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 77
    instance-of v0, p2, Lcom/android/settings/development/AdbOnChangeListener;

    if-eqz v0, :cond_0

    .line 78
    check-cast p2, Lcom/android/settings/development/AdbOnChangeListener;

    invoke-interface {p2}, Lcom/android/settings/development/AdbOnChangeListener;->onAdbSettingChanged()V

    .line 80
    :cond_0
    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method
