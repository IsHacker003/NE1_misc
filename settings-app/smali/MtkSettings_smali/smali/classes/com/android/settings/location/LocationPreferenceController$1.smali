.class Lcom/android/settings/location/LocationPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationPreferenceController;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/location/LocationPreferenceController$1;->this$0:Lcom/android/settings/location/LocationPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/android/settings/location/LocationPreferenceController$1;->this$0:Lcom/android/settings/location/LocationPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/location/LocationPreferenceController;->updateSummary()V

    .line 57
    :cond_0
    return-void
.end method
