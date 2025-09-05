.class Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$SubChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SimStatusPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;Landroid/os/Looper;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$SubChangedListener;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;

    .line 190
    invoke-direct {p0, p2}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>(Landroid/os/Looper;)V

    .line 191
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .line 195
    const-string v0, "SimStatusPreferenceController"

    const-string v1, "onSubscriptionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$SubChangedListener;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 197
    return-void
.end method
