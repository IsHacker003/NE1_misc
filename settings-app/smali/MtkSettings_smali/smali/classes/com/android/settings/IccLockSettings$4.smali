.class Lcom/android/settings/IccLockSettings$4;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    .line 701
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 702
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {v0}, Lcom/android/settings/IccLockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 703
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 705
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 706
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 705
    :goto_0
    invoke-static {v0, p1}, Lcom/android/settings/IccLockSettings;->access$802(Lcom/android/settings/IccLockSettings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 707
    const-string p1, "IccLockSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTabChanged(), phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$800(Lcom/android/settings/IccLockSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "null"

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$800(Lcom/android/settings/IccLockSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    iget-object v0, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$800(Lcom/android/settings/IccLockSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/IccLockSettings;->access$900(Lcom/android/settings/IccLockSettings;Lcom/android/internal/telephony/Phone;)V

    .line 712
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->access$200(Lcom/android/settings/IccLockSettings;)V

    .line 715
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->access$600(Lcom/android/settings/IccLockSettings;)V

    .line 716
    return-void
.end method
