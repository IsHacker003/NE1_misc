.class Lcom/android/settings/network/MobileNetworkPreferenceController$2;
.super Landroid/telephony/PhoneStateListener;
.source "MobileNetworkPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/MobileNetworkPreferenceController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 120
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 121
    const-string p2, "MobileNetworkPreferenceController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneStateListener, new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    iget-object p2, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-static {p2}, Lcom/android/settings/network/MobileNetworkPreferenceController;->access$000(Lcom/android/settings/network/MobileNetworkPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/network/MobileNetworkPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 130
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->access$000(Lcom/android/settings/network/MobileNetworkPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 136
    return-void
.end method
