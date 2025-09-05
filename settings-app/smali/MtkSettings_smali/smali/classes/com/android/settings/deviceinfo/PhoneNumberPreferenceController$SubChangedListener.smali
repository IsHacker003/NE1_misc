.class Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$SubChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "PhoneNumberPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;Landroid/os/Looper;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$SubChangedListener;->this$0:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;

    .line 180
    invoke-direct {p0, p2}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>(Landroid/os/Looper;)V

    .line 181
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .line 185
    const-string v0, "PhoneNumberPreferenceController"

    const-string v1, "onSubscriptionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$SubChangedListener;->this$0:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 187
    return-void
.end method
