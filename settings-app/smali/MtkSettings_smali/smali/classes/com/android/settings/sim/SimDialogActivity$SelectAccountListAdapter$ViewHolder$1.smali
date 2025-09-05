.class Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 658
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 659
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---onClick---mDialogId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v3, v3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    invoke-static {v3}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->access$900(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 662
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    iget-object v2, v2, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v2}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 663
    nop

    .line 664
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 665
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 666
    iget-object v4, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v4, v4, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    invoke-static {v4}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->access$900(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;)I

    move-result v4

    if-ne v4, v1, :cond_3

    .line 667
    iget-object v4, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v4, v4, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    iget-object v4, v4, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v4}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v4

    .line 668
    iget-object v5, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v5, v5, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    iget-object v5, v5, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v5}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 669
    nop

    .line 670
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 673
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$600()Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v7

    .line 674
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 673
    invoke-interface {v7, v0, v3, v8}, Lcom/mediatek/settings/ext/ISimManagementExt;->updateList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 675
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 676
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "phoneAccounts size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    if-le v7, v1, :cond_0

    .line 678
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v7, v7, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    iget-object v7, v7, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v7}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120c67    # @string/sim_calls_ask_first_prefs_title 'Ask every time'

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 683
    nop

    .line 684
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v4, v7}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v7

    .line 687
    if-nez v7, :cond_1

    .line 688
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "phoneAccount is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    goto :goto_0

    .line 692
    :cond_1
    invoke-virtual {v7}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v8

    .line 694
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "phoneAccount label = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", subId = "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    goto :goto_0

    .line 704
    :cond_2
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callsSubInfoList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", list = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_3
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v3, v3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    invoke-static {v3}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->access$900(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 749
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid dialog type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    .line 750
    invoke-static {v1}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->access$900(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in SIM dialog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 737
    :pswitch_0
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subInfoList: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    iget-object v0, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v0, v2, p1}, Lcom/android/settings/sim/SimDialogActivity;->access$700(Lcom/android/settings/sim/SimDialogActivity;Ljava/util/List;I)I

    move-result p1

    .line 745
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    iget-object v0, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/sim/SimDialogActivity;->access$400(Landroid/content/Context;I)V

    .line 746
    goto/16 :goto_2

    .line 725
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    iget-object v2, v2, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    .line 726
    invoke-virtual {v2}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 727
    nop

    .line 728
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    .line 729
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", phoneAccountsList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CALLS_PICK list.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CALLS_PICK phoneAccountsList.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    iget-object v0, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    .line 734
    if-ge p1, v1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    sub-int/2addr p1, v1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .line 733
    :goto_1
    invoke-static {v0, p1}, Lcom/android/settings/sim/SimDialogActivity;->access$500(Lcom/android/settings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    .line 735
    goto :goto_2

    .line 715
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    iget-object v0, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v0, p1}, Lcom/android/settings/sim/SimDialogActivity;->access$1000(Lcom/android/settings/sim/SimDialogActivity;I)V

    .line 716
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 717
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 718
    const-string v2, "SLOT"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 719
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 720
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object p1, p1, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    iget-object p1, p1, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/sim/SimDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 721
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v1, "***DATA_PICK RESULT_OK : -1"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***DATA_PICK i : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    nop

    .line 753
    :goto_2
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;->this$2:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    iget-object p1, p1, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    iget-object p1, p1, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {p1}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    .line 754
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
