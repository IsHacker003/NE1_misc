.class Lcust/settings/sim/CustSimPreference$2;
.super Ljava/lang/Object;
.source "CustSimPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcust/settings/sim/CustSimPreference;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/sim/CustSimPreference;


# direct methods
.method constructor <init>(Lcust/settings/sim/CustSimPreference;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcust/settings/sim/CustSimPreference$2;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 181
    const-string p1, "CustSimPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange newValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcust/settings/sim/CustSimPreference$2;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {v0}, Lcust/settings/sim/CustSimPreference;->access$000(Lcust/settings/sim/CustSimPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    .line 184
    :cond_0
    move p2, v1

    :goto_0
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference$2;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {v0}, Lcust/settings/sim/CustSimPreference;->access$000(Lcust/settings/sim/CustSimPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 185
    const-string v2, "SimPreferenceDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick() mIsModify : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-eqz p2, :cond_1

    .line 187
    iget-object p2, p0, Lcust/settings/sim/CustSimPreference$2;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p2}, Lcust/settings/sim/CustSimPreference;->access$000(Lcust/settings/sim/CustSimPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p2, p0, Lcust/settings/sim/CustSimPreference$2;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p2}, Lcust/settings/sim/CustSimPreference;->access$100(Lcust/settings/sim/CustSimPreference;)Landroid/telephony/SubscriptionManager;

    move-result-object p2

    const-wide/16 v2, 0x2

    invoke-virtual {p2, p1, v0, v2, v3}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    .line 190
    iget-object p2, p0, Lcust/settings/sim/CustSimPreference$2;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p2}, Lcust/settings/sim/CustSimPreference;->access$200(Lcust/settings/sim/CustSimPreference;)Lcust/settings/CustSimEditTextPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcust/settings/CustSimEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    iget-object p2, p0, Lcust/settings/sim/CustSimPreference$2;->this$0:Lcust/settings/sim/CustSimPreference;

    invoke-static {p2}, Lcust/settings/sim/CustSimPreference;->access$200(Lcust/settings/sim/CustSimPreference;)Lcust/settings/CustSimEditTextPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcust/settings/CustSimEditTextPreference;->setText(Ljava/lang/String;)V

    .line 193
    :cond_1
    return v1
.end method
