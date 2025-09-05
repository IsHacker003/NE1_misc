.class Lcom/android/settings/sim/SimSettings$SimPreference;
.super Lcom/mediatek/settings/sim/FIHRadioPowerPreference;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimPreference"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mSlotId:I

.field private mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    .line 547
    invoke-direct {p0, p2}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;-><init>(Landroid/content/Context;)V

    .line 549
    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    .line 550
    iput-object p3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 551
    iput p4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    .line 552
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sim"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setKey(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    .line 554
    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/sim/SimSettings$SimPreference;)I
    .locals 0

    .line 541
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->getSlotId()I

    move-result p0

    return p0
.end method

.method private getSlotId()I
    .locals 1

    .line 671
    iget v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    return v0
.end method

.method private hasCard()Z
    .locals 2

    .line 557
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public update()V
    .locals 11

    .line 561
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 563
    nop

    .line 566
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 567
    const v2, 0x7f120c7b    # @string/sim_editor_title 'SIM slot %1$d'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 566
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_c

    .line 570
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-static {v1, v3}, Lcom/android/settings/sim/SimSettings;->access$1000(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v1

    .line 574
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slot="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", phoneNum="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/sim/SimSettings;->access$1100(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V

    .line 586
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 587
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 589
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    .line 591
    :cond_0
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 592
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v6

    .line 594
    if-eqz v6, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 595
    goto :goto_0

    .line 596
    :cond_1
    if-nez v6, :cond_2

    .line 597
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f121219    # @string/zzz_sim_no_services 'No service'

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 599
    :cond_2
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x104000e    # @android:string/unknownName

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 601
    :goto_0
    nop

    .line 602
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->hasCard()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 603
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v6}, Lcom/android/settings/sim/SimSettings;->access$1200(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 605
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sir = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/sim/SimSettings;->access$800(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V

    .line 609
    if-eqz v6, :cond_7

    .line 611
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    .line 612
    iget v8, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    if-ne v7, v8, :cond_6

    .line 615
    const-string v7, "4G"

    .line 616
    iget-object v8, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    const-string v9, "carrier_config"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/CarrierConfigManager;

    .line 617
    if-eqz v8, :cond_5

    .line 619
    :try_start_0
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .line 620
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 621
    nop

    .line 622
    invoke-virtual {v8, v6}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 624
    :try_start_1
    const-string v8, "oem_key_rat_name_of_4g_int"

    invoke-virtual {v6, v8}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 625
    iget-object v8, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ratName4GLTE0 + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/sim/SimSettings;->access$800(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V

    .line 626
    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    .line 627
    const-string v6, "LTE"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 631
    move-object v7, v6

    :cond_3
    goto :goto_1

    .line 629
    :catch_0
    move-exception v6

    .line 630
    :try_start_2
    const-string v8, "SimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to access phone subid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 635
    :cond_4
    :goto_1
    goto :goto_2

    .line 633
    :catch_1
    move-exception v6

    .line 634
    const-string v8, "SimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to access carrier config service"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_5
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/3G/2G"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 639
    goto :goto_3

    .line 644
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | 2G"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 647
    :cond_7
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 648
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 650
    :cond_8
    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 652
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 656
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v0

    .line 657
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v1}, Lcom/android/settings/sim/SimSettings;->access$500(Lcom/android/settings/sim/SimSettings;)Lcom/mediatek/settings/sim/RadioPowerController;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/mediatek/settings/sim/RadioPowerController;->isRadioSwitchComplete(IZ)Z

    move-result v1

    .line 658
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$1300(Lcom/android/settings/sim/SimSettings;)Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v1, :cond_9

    move v3, v2

    goto :goto_4

    :cond_9
    move v3, v5

    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings$SimPreference;->setRadioEnabled(Z)V

    .line 659
    if-eqz v1, :cond_b

    .line 660
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v1}, Lcom/android/settings/sim/SimSettings;->access$1300(Lcom/android/settings/sim/SimSettings;)Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    move v2, v5

    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings$SimPreference;->setRadioOn(Z)V

    .line 664
    :cond_b
    goto :goto_6

    .line 665
    :cond_c
    const v0, 0x7f120caa    # @string/sim_slot_empty 'SIM empty'

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;->setSummary(I)V

    .line 666
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;->setFragment(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings$SimPreference;->setEnabled(Z)V

    .line 669
    :goto_6
    return-void
.end method
