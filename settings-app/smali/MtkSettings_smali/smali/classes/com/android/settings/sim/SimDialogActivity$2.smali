.class Lcom/android/settings/sim/SimDialogActivity$2;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimDialogActivity;->displayPreferredDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sir:Landroid/telephony/SubscriptionInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$2;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iput-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$2;->val$sir:Landroid/telephony/SubscriptionInfo;

    iput-object p3, p0, Lcom/android/settings/sim/SimDialogActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 169
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$2;->val$sir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 170
    iget-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$2;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    .line 171
    invoke-static {p2, p1}, Lcom/android/settings/sim/SimDialogActivity;->access$200(Lcom/android/settings/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    .line 172
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$2;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/android/settings/sim/SimDialogActivity;->access$300(Lcom/android/settings/sim/SimDialogActivity;Landroid/content/Context;I)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$2;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/sim/SimDialogActivity;->access$400(Landroid/content/Context;I)V

    .line 174
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneAccountHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$2;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {p1, p2}, Lcom/android/settings/sim/SimDialogActivity;->access$500(Lcom/android/settings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    .line 178
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$2;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {p1}, Lcom/android/settings/sim/SimDialogActivity;->access$100(Lcom/android/settings/sim/SimDialogActivity;)V

    .line 180
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$2;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {p1}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    .line 181
    return-void
.end method
