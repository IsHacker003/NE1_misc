.class Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final OPACITY:F

.field private mContext:Landroid/content/Context;

.field private mDialogId:I

.field private mResId:I

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/content/Context;",
            "I[",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 497
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    .line 498
    invoke-direct {p0, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 493
    const p1, 0x3f0a3d71    # 0.54f

    iput p1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->OPACITY:F

    .line 499
    iput-object p3, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    .line 500
    iput p4, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mResId:I

    .line 501
    iput p6, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    .line 502
    iput-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mSubInfoList:Ljava/util/List;

    .line 503
    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;)I
    .locals 0

    .line 489
    iget p0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    return p0
.end method

.method private setPhoneAccountIcon(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;I)V
    .locals 4

    .line 762
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhoneAccountIcon, location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120c67    # @string/sim_calls_ask_first_prefs_title 'Ask every time'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 764
    invoke-virtual {p0, p2}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 765
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 766
    nop

    .line 767
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 770
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 771
    add-int/lit8 p2, p2, -0x1

    .line 774
    :cond_0
    const/4 v0, 0x0

    .line 775
    if-ltz p2, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 776
    nop

    .line 777
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 776
    invoke-virtual {v2, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 779
    :cond_1
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhoneAccountIcon(), location="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", account="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 783
    iget-object p1, p1, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 784
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 783
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 786
    :cond_2
    goto :goto_0

    .line 787
    :cond_3
    iget-object p1, p1, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    .line 788
    invoke-virtual {p2}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080125    # @drawable/ic_live_help 'res/drawable-xhdpi/ic_live_help.png'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 787
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 790
    :goto_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 507
    iget-object p3, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 508
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 512
    if-nez p2, :cond_0

    .line 514
    iget p2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mResId:I

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 516
    const p3, 0x7f0a038e    # @id/title

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroid/widget/TextView;

    .line 517
    const p3, 0x7f0a034a    # @id/summary

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/widget/TextView;

    .line 518
    const p3, 0x7f0a0196    # @id/icon

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Landroid/widget/ImageView;

    .line 519
    const p3, 0x7f0a029b    # @id/radio

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/widget/RadioButton;

    .line 520
    new-instance p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    move-object v0, p3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;-><init>(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/RadioButton;)V

    .line 528
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 529
    goto :goto_0

    .line 530
    :cond_0
    nop

    .line 531
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    .line 534
    :goto_0
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mSubInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 536
    iget-object v1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 537
    iget-object v1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 538
    iget-object v1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 539
    iget-object v1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 540
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v1}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 541
    iget v2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 597
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid dialog type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " in SIM dialog."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 577
    :pswitch_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 578
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+++getView+++mDefaultSmsSir = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+++getView+++sir = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 581
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    .line 582
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    .line 583
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+++getView+++mDefaultSmsSlotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+++getView+++mSlotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    if-ne v1, v2, :cond_1

    .line 586
    iget-object v1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 588
    :cond_1
    iget-object v1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 590
    :goto_1
    goto/16 :goto_3

    :cond_2
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 591
    iget-object v1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_3

    .line 593
    :cond_3
    iget-object v1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 595
    goto/16 :goto_3

    .line 558
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v1}, Lcom/android/settings/sim/SimDialogActivity;->access$800(Lcom/android/settings/sim/SimDialogActivity;)I

    move-result v1

    .line 559
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+++CALLS_PICK+++position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+++CALLS_PICK+++mCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v2, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 562
    nop

    .line 563
    const/4 v2, -0x1

    if-lt v1, v2, :cond_7

    .line 564
    if-eqz v0, :cond_4

    .line 565
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    .line 567
    :cond_4
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+++CALLS_PICK+++mCallSlotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    if-ne v1, v2, :cond_5

    .line 570
    iget-object v1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3

    .line 572
    :cond_5
    iget-object v1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3

    .line 544
    :pswitch_2
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 545
    if-eqz v1, :cond_7

    .line 546
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    .line 547
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    .line 548
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+++getView+++mDefaultDataSlotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+++getView+++mSlotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    if-ne v1, v2, :cond_6

    .line 551
    iget-object v1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 553
    :cond_6
    iget-object v1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 555
    :goto_2
    nop

    .line 601
    :cond_7
    :goto_3
    if-nez v0, :cond_9

    .line 602
    iget-object v0, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v0, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    if-ne v0, v4, :cond_8

    .line 607
    invoke-direct {p0, p3, p1}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->setPhoneAccountIcon(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;I)V

    goto :goto_4

    .line 609
    :cond_8
    iget-object v0, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    .line 610
    invoke-virtual {v1}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080125    # @drawable/ic_live_help 'res/drawable-xhdpi/ic_live_help.png'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 609
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 615
    :goto_4
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$600()Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v0

    iget-object v1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    invoke-interface {v0, v1, v2, p1}, Lcom/mediatek/settings/ext/ISimManagementExt;->setSmsAutoItemIcon(Landroid/widget/ImageView;II)V

    .line 616
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$600()Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v0

    iget-object v1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    invoke-interface {v0, v1, v2, p1}, Lcom/mediatek/settings/ext/ISimManagementExt;->setCurrNetworkIcon(Landroid/widget/ImageView;II)V

    .line 619
    iget-object p1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const p3, 0x3f0a3d71    # 0.54f

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_5

    .line 621
    :cond_9
    iget-object p1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object p1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object p1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 626
    iget-object p1, p3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 628
    :goto_5
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
