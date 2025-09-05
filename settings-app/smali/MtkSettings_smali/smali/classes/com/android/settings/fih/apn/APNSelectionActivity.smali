.class public Lcom/android/settings/fih/apn/APNSelectionActivity;
.super Landroid/preference/PreferenceActivity;
.source "APNSelectionActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;
    }
.end annotation


# static fields
.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private isFirstChange:Z

.field private mCurrentSlotId:I

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private newSimNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "APNSelectionActivity"

    sput-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    .line 81
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->isFirstChange:Z

    .line 170
    new-instance v0, Lcom/android/settings/fih/apn/APNSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fih/apn/APNSelectionActivity$1;-><init>(Lcom/android/settings/fih/apn/APNSelectionActivity;)V

    iput-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 194
    new-instance v0, Lcom/android/settings/fih/apn/APNSelectionActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fih/apn/APNSelectionActivity$2;-><init>(Lcom/android/settings/fih/apn/APNSelectionActivity;)V

    iput-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fih/apn/APNSelectionActivity;)Landroid/widget/TabHost;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fih/apn/APNSelectionActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->updateTabStyle()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/fih/apn/APNSelectionActivity;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/fih/apn/APNSelectionActivity;->updateSlotIndex(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/fih/apn/APNSelectionActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->updateBody()V

    return-void
.end method

.method private addApnToList(Lcom/android/settings/fih/apn/ApnSelectPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/fih/apn/ApnSelectPreference;",
            "Ljava/util/ArrayList<",
            "Landroid/preference/Preference;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/preference/Preference;",
            ">;",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 503
    if-eqz p4, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    invoke-static {p4, p5, p6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 505
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 508
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_1
    :goto_0
    return-void
.end method

.method private addPreferences()V
    .locals 9

    .line 86
    nop

    .line 87
    iget v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->newSimNum:I

    invoke-direct {p0, v0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->isUpdateTabsNeeded(I)Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeSubscriptions:- state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 91
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 94
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    goto :goto_0

    .line 98
    :cond_0
    move v1, v2

    :goto_0
    sget-object v4, Lcom/android/settings/fih/apn/APNSelectionActivity$4;->$SwitchMap$com$android$settings$fih$apn$APNSelectionActivity$TabState:[I

    invoke-virtual {v0}, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const v4, 0x109004d    # @android:layout/common_tab_settings

    const v5, 0x7f120c68    # @string/sim_card_number_title 'SIM %1$d'

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 126
    :pswitch_0
    iget v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->newSimNum:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->newSimNum:I

    add-int/lit8 v1, v0, -0x1

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    .line 132
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/fih/apn/APNSelectionActivity;->setContentView(I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1200f5    # @string/apn_apn 'APN'

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    goto/16 :goto_2

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 102
    move v1, v0

    goto :goto_1

    .line 100
    :cond_3
    nop

    .line 102
    move v1, v2

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/settings/fih/apn/APNSelectionActivity;->setContentView(I)V

    .line 104
    const v0, 0x1020012    # @android:id/tabhost

    invoke-virtual {p0, v0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    .line 105
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "0"

    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v6, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/settings/fih/apn/APNSelectionActivity;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "1"

    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-virtual {v6, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/android/settings/fih/apn/APNSelectionActivity;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_5

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_4

    .line 117
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setElevation(F)V

    .line 119
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->updateTabStyle()V

    .line 120
    nop

    .line 143
    :cond_5
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/fih/apn/APNSelectionActivity;->updateSlotIndex(I)V

    .line 144
    invoke-direct {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->updateBody()V

    .line 146
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {p1, p2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    return-object p1
.end method

.method private fillList()V
    .locals 21

    .line 394
    move-object/from16 v7, p0

    sget-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillList, mCurrentSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/settings/fih/apn/APNSelectionActivity;->mCurrentSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, v7, Lcom/android/settings/fih/apn/APNSelectionActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v1, v7, Lcom/android/settings/fih/apn/APNSelectionActivity;->mCurrentSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 398
    const-string v1, "phone"

    invoke-virtual {v7, v1}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 399
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    sget-object v1, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" AND NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL))"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND NOT type=\'ims\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND NOT type=\'emergency\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 411
    nop

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v12, "_id"

    const-string v13, "name"

    const-string v14, "apn"

    const-string v15, "type"

    const-string v16, "mvno_type"

    const-string v17, "mvno_match_data"

    const-string v18, "read_only"

    const-string v19, "ui_order"

    filled-new-array/range {v12 .. v19}, [Ljava/lang/String;

    move-result-object v10

    const-string v13, "ui_order ASC"

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 417
    if-eqz v8, :cond_7

    .line 418
    sget-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    nop

    .line 421
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget v1, v7, Lcom/android/settings/fih/apn/APNSelectionActivity;->mCurrentSlotId:I

    const/4 v9, 0x1

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v10

    .line 423
    const-string v0, "apn_list"

    invoke-virtual {v7, v0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/preference/PreferenceGroup;

    .line 424
    invoke-virtual {v11}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 429
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 430
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 432
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings/fih/apn/APNSelectionActivity;->mSelectedKey:Ljava/lang/String;

    .line 433
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 435
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 436
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 438
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 439
    const/4 v4, 0x3

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 440
    const/4 v5, 0x4

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 441
    const/4 v6, 0x5

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 443
    sget-object v14, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "type = "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", apn = "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v1, "__M-BIP__"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    sget-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    const-string v1, "fillList, hide __M-BIP__ apn "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 448
    nop

    .line 435
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 451
    :cond_0
    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "default"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 453
    :cond_1
    move v1, v2

    goto :goto_3

    .line 451
    :cond_2
    :goto_2
    nop

    .line 453
    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_3

    .line 454
    sget-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    const-string v1, "hide !! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 456
    goto :goto_1

    .line 459
    :cond_3
    sget-object v4, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "selectable = "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", key = "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", name = "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v4, Lcom/android/settings/fih/apn/ApnSelectPreference;

    invoke-direct {v4, v7}, Lcom/android/settings/fih/apn/ApnSelectPreference;-><init>(Landroid/content/Context;)V

    .line 465
    invoke-virtual {v4, v3}, Lcom/android/settings/fih/apn/ApnSelectPreference;->setKey(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v4, v0}, Lcom/android/settings/fih/apn/ApnSelectPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 468
    invoke-virtual {v4, v2}, Lcom/android/settings/fih/apn/ApnSelectPreference;->setPersistent(Z)V

    .line 469
    invoke-virtual {v4, v7}, Lcom/android/settings/fih/apn/ApnSelectPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 472
    invoke-virtual {v4, v1}, Lcom/android/settings/fih/apn/ApnSelectPreference;->setSelectable(Z)V

    .line 474
    sget-object v1, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSelectedKey = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/settings/fih/apn/APNSelectionActivity;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " key = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    move-object v0, v7

    move-object v1, v4

    move-object v2, v12

    move-object v3, v13

    move-object v4, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/fih/apn/APNSelectionActivity;->addApnToList(Lcom/android/settings/fih/apn/ApnSelectPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 479
    goto/16 :goto_1

    .line 480
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 482
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 483
    goto :goto_4

    .line 487
    :cond_5
    move-object v13, v12

    :goto_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 488
    invoke-virtual {v11, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 489
    goto :goto_5

    .line 491
    :cond_6
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 492
    const v1, 0x7f0d002d    # @layout/apn_list_save_button 'res/layout/apn_list_save_button.xml'

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 493
    invoke-virtual {v11, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 496
    invoke-direct {v7, v13}, Lcom/android/settings/fih/apn/APNSelectionActivity;->setPreferApnChecked(Ljava/util/ArrayList;)V

    .line 498
    :cond_7
    return-void
.end method

.method private getPreferApnUri(I)Landroid/net/Uri;
    .locals 3

    .line 564
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 565
    sget-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApnUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-object p1
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .line 375
    nop

    .line 376
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mCurrentSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 378
    sget-object v1, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectedApnKey,mCurrentSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mCurrentSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 381
    invoke-direct {p0, v0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getPreferApnUri(I)Landroid/net/Uri;

    move-result-object v4

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v8, "name ASC"

    .line 380
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 385
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 386
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 388
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 389
    sget-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectedApnKey(), key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-object v1
.end method

.method private isUpdateTabsNeeded(I)Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;
    .locals 4

    .line 183
    sget-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->DO_NOTHING:Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    .line 185
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 186
    sget-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->UPDATE:Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    goto :goto_0

    .line 188
    :cond_0
    sget-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->NO_TABS:Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    .line 190
    :goto_0
    sget-object v1, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUpdateTabsNeeded:- newSimNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", state="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-object v0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 3

    .line 570
    sget-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 572
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 573
    return-void
.end method

.method private setPreferApnChecked(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 534
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 538
    :cond_0
    const/4 v0, 0x0

    .line 539
    iget-object v1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mSelectedKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 540
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 541
    iget-object v3, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    check-cast v2, Lcom/android/settings/fih/apn/ApnSelectPreference;

    invoke-virtual {v2}, Lcom/android/settings/fih/apn/ApnSelectPreference;->setChecked()V

    .line 543
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mSelectedKey:Ljava/lang/String;

    .line 545
    :cond_1
    goto :goto_0

    .line 549
    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 550
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fih/apn/ApnSelectPreference;

    invoke-virtual {v0}, Lcom/android/settings/fih/apn/ApnSelectPreference;->setChecked()V

    .line 551
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 555
    :cond_3
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mSelectedKey:Ljava/lang/String;

    if-eq v0, p1, :cond_4

    .line 556
    invoke-direct {p0, v0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->setSelectedApnKey(Ljava/lang/String;)V

    .line 557
    iput-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mSelectedKey:Ljava/lang/String;

    .line 560
    :cond_4
    sget-object p1, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferApnChecked sony, APN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void

    .line 535
    :cond_5
    :goto_1
    return-void
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5

    .line 356
    iput-object p1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mSelectedKey:Ljava/lang/String;

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 359
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 360
    const-string v1, "apn_id"

    iget-object v2, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v2, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mCurrentSlotId:I

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 364
    sget-object v2, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSelectedApnKey,mCurrentSlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mCurrentSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0, v1}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getPreferApnUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 372
    return-void
.end method

.method private updateBody()V
    .locals 0

    .line 352
    invoke-direct {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->fillList()V

    .line 353
    return-void
.end method

.method private updateSlotIndex(I)V
    .locals 2

    .line 347
    iput p1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mCurrentSlotId:I

    .line 348
    sget-object p1, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneId:- mCurrentSlotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mCurrentSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void
.end method

.method private updateTabStyle()V
    .locals 6

    .line 149
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    .line 150
    if-nez v0, :cond_0

    .line 151
    return-void

    .line 155
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 156
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    move v3, v1

    :goto_0
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v4

    const v5, 0x1020016    # @android:id/title

    if-ge v3, v4, :cond_1

    .line 158
    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 159
    invoke-virtual {v4, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 161
    const v5, -0x777778

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 165
    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08021a    # @drawable/zzz_tab_indicator_material 'res/drawable/zzz_tab_indicator_material.xml'

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 168
    return-void
.end method


# virtual methods
.method public UiChangeListener()V
    .locals 2

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 329
    new-instance v1, Lcom/android/settings/fih/apn/APNSelectionActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/fih/apn/APNSelectionActivity$3;-><init>(Lcom/android/settings/fih/apn/APNSelectionActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 344
    return-void
.end method

.method isUserNeededSelect(I)Z
    .locals 13

    .line 207
    nop

    .line 208
    iget-object v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 209
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 210
    return v0

    .line 211
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 222
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 223
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p1

    .line 224
    sget-object v1, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" AND NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL))"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND NOT type=\'ims\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND NOT type=\'emergency\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id"

    const-string v7, "name"

    const-string v8, "apn"

    const-string v9, "type"

    const-string v10, "mvno_type"

    const-string v11, "mvno_match_data"

    const-string v12, "read_only"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "ui_order ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 236
    const/4 v1, 0x1

    if-eqz p1, :cond_8

    .line 237
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 238
    nop

    .line 239
    sget-object v3, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    nop

    .line 242
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mCurrentSlotId:I

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 243
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 244
    move v4, v0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_6

    .line 245
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 246
    const-string v6, "__M-BIP__"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    sget-object v5, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    const-string v6, "fillList, hide __M-BIP__ apn "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 249
    add-int/lit8 v2, v2, -0x1

    .line 250
    goto :goto_0

    .line 252
    :cond_1
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 253
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 254
    :cond_2
    move v5, v0

    goto :goto_2

    .line 253
    :cond_3
    :goto_1
    nop

    .line 254
    move v5, v1

    :goto_2
    if-nez v5, :cond_4

    .line 255
    sget-object v5, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    const-string v6, "hide !! "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 257
    add-int/lit8 v2, v2, -0x1

    .line 258
    goto :goto_0

    .line 260
    :cond_4
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 261
    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 262
    invoke-static {v3, v5, v6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 263
    add-int/lit8 v4, v4, 0x1

    .line 264
    nop

    .line 266
    move v2, v0

    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 267
    goto :goto_0

    .line 268
    :cond_6
    if-gt v2, v1, :cond_7

    if-le v4, v1, :cond_8

    .line 269
    :cond_7
    nop

    .line 271
    move v0, v1

    :cond_8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 272
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 277
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 278
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "newSimNum"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->newSimNum:I

    .line 281
    sget-object p1, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate:- newSimNum="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->newSimNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget p1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->newSimNum:I

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    .line 284
    iget p1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->newSimNum:I

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/android/settings/fih/apn/APNSelectionActivity;->isUserNeededSelect(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 286
    invoke-direct {p0, v2}, Lcom/android/settings/fih/apn/APNSelectionActivity;->setMobileDataEnabled(Z)V

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->finish()V

    .line 288
    return-void

    .line 292
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/fih/apn/APNSelectionActivity;->isUserNeededSelect(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/settings/fih/apn/APNSelectionActivity;->isUserNeededSelect(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 293
    iput v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->newSimNum:I

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/fih/apn/APNSelectionActivity;->isUserNeededSelect(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/settings/fih/apn/APNSelectionActivity;->isUserNeededSelect(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 295
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->newSimNum:I

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/fih/apn/APNSelectionActivity;->isUserNeededSelect(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/settings/fih/apn/APNSelectionActivity;->isUserNeededSelect(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 297
    iput v2, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->newSimNum:I

    .line 304
    :cond_3
    :goto_0
    const p1, 0x7f150012    # @xml/apn_settings 'res/xml/apn_settings.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/fih/apn/APNSelectionActivity;->addPreferencesFromResource(I)V

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0xf06

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->UiChangeListener()V

    .line 322
    invoke-virtual {p0, v1}, Lcom/android/settings/fih/apn/APNSelectionActivity;->setFinishOnTouchOutside(Z)V

    .line 324
    invoke-direct {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->addPreferences()V

    .line 325
    return-void

    .line 299
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/settings/fih/apn/APNSelectionActivity;->setMobileDataEnabled(Z)V

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->finish()V

    .line 301
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 513
    sget-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newValue - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newValue type - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 513
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    instance-of p1, p2, Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 519
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/fih/apn/APNSelectionActivity;->setSelectedApnKey(Ljava/lang/String;)V

    .line 521
    sget-object p1, Lcom/android/settings/fih/apn/APNSelectionActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFirstChange = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->isFirstChange:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-boolean p1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->isFirstChange:Z

    if-nez p1, :cond_0

    .line 524
    iput-boolean v0, p0, Lcom/android/settings/fih/apn/APNSelectionActivity;->isFirstChange:Z

    .line 525
    invoke-direct {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->updateBody()V

    .line 528
    :cond_0
    return v0
.end method

.method public saveAPNSettings(Landroid/view/View;)V
    .locals 0

    .line 576
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/fih/apn/APNSelectionActivity;->setMobileDataEnabled(Z)V

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/fih/apn/APNSelectionActivity;->finish()V

    .line 578
    return-void
.end method
