.class Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$desiredState:Z

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;ZZLandroid/content/Context;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;

    iput-boolean p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->val$desiredState:Z

    iput-boolean p3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->val$sync:Z

    iput-object p4, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 624
    iget-boolean p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->val$desiredState:Z

    if-eqz p1, :cond_1

    .line 625
    iget-boolean p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->val$sync:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 626
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 628
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 632
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->val$sync:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 633
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 635
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 620
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;

    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->val$context:Landroid/content/Context;

    .line 642
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 640
    invoke-virtual {v0, v1, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 643
    iget-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 644
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 620
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
