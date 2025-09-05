.class Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->requestStateChange(Landroid/content/Context;Z)V
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
.field final synthetic this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;Landroid/content/Context;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    iput-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 565
    iget-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    const-string v0, "user"

    .line 566
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 567
    const-string v0, "no_share_location"

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 568
    iget-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    const-string v1, "location"

    .line 569
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    .line 571
    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v1

    .line 572
    nop

    .line 573
    xor-int/2addr v0, v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 572
    invoke-virtual {p1, v0, v1}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    .line 574
    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 576
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->getActualState(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 562
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    .line 583
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 581
    invoke-virtual {v0, v1, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 584
    iget-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 585
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 562
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
