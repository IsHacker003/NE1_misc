.class public Lcom/android/settings/network/ApnSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private mAllowAddingApns:Z

.field private mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

.field private mHideImsApn:Z

.field private mHideXcapApn:Z

.field private mIsPrepaid:Z

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:Ljava/lang/String;

.field private mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mRestoreOngoing:Z

.field private mSelectedKey:Ljava/lang/String;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUnavailable:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 115
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 147
    const-string v0, "no_config_mobile_networks"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreOngoing:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mIsPrepaid:Z

    .line 150
    new-instance v0, Lcom/android/settings/network/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ApnSettings$1;-><init>(Lcom/android/settings/network/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 0

    .line 78
    invoke-static {p0}, Lcom/android/settings/network/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 78
    sget-boolean v0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/network/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 78
    sput-boolean p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/network/ApnSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/ApnSettings;->updateScreenForDataStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/network/ApnSettings;Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnSettings;->updateScreenEnableState(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/network/ApnSettings;I)V
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/network/ApnSettings;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreOngoing:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->startPreOrPostApn()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/network/ApnSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900()Landroid/net/Uri;
    .locals 1

    .line 78
    sget-object v0, Lcom/android/settings/network/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private addApnToList(Lcom/android/settings/network/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/network/ApnPreference;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/network/ApnPreference;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/network/ApnPreference;",
            ">;",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 512
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mvnoType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mvnoMatchData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    if-eqz p4, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    invoke-static {p4, p5, p6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 515
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    iput-object p5, p0, Lcom/android/settings/network/ApnSettings;->mMvnoType:Ljava/lang/String;

    .line 518
    iput-object p6, p0, Lcom/android/settings/network/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    .line 519
    const-string p1, "ApnSettings"

    const-string p2, "mvnoMatches..."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 522
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_1
    :goto_0
    return-void
.end method

.method private addNewApn()V
    .locals 3

    .line 562
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreOngoing:Z

    if-nez v0, :cond_2

    .line 563
    const-string v0, "ApnSettings"

    const-string v1, "addNewApn..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 565
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    .line 566
    :cond_0
    const/4 v1, -0x1

    .line 567
    :goto_0
    const-string v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 568
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 569
    const-string v1, "mvno_type"

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string v1, "mvno_match_data"

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v1, v0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->addApnTypeExtra(Landroid/content/Intent;)V

    .line 574
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 576
    :cond_2
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .line 177
    const-string v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 178
    if-eqz p0, :cond_0

    .line 179
    const-class v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p0

    .line 181
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 6

    .line 610
    nop

    .line 612
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v5, "name ASC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 614
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 615
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 616
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 618
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 619
    const-string v0, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectedApnKey(), key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-object v1
.end method

.method private getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 648
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_0

    .line 649
    :cond_0
    const/4 v0, -0x1

    .line 650
    :goto_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 653
    :cond_1
    return-object p1
.end method

.method private isMmsInTransaction(Landroid/content/Context;)Z
    .locals 4

    .line 787
    nop

    .line 788
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 790
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 791
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 792
    if-eqz p1, :cond_2

    .line 793
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    .line 794
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mms state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 799
    move v0, p1

    :cond_2
    :goto_1
    return v0
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .line 624
    const-string v0, "ApnSettings"

    const-string v1, "restoreDefaultApn..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->showDialog(I)V

    .line 626
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 628
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_0

    .line 629
    new-instance v1, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/network/ApnSettings;Lcom/android/settings/network/ApnSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    .line 634
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Restore default APN Handler: Process Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 636
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 637
    new-instance v1, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 638
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/network/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    .line 641
    :cond_2
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    .line 642
    invoke-virtual {v1, v0}, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 643
    return v0
.end method

.method private setPreferApnChecked(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/network/ApnPreference;",
            ">;)V"
        }
    .end annotation

    .line 833
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 837
    :cond_0
    const/4 v0, 0x0

    .line 838
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 839
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    .line 840
    iget-object v3, p0, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 841
    check-cast v2, Lcom/android/settings/network/ApnPreference;

    invoke-virtual {v2}, Lcom/android/settings/network/ApnPreference;->setChecked()V

    .line 842
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 844
    :cond_1
    goto :goto_0

    .line 849
    :cond_2
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->shouldSelectFirstApn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 850
    if-nez v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 851
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/ApnPreference;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnPreference;->setChecked()V

    .line 852
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/ApnPreference;

    invoke-virtual {p1}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 856
    :cond_3
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eq v0, p1, :cond_4

    .line 857
    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 858
    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 861
    :cond_4
    const-string p1, "ApnSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferApnChecked, APN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-void

    .line 834
    :cond_5
    :goto_1
    return-void
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 3

    .line 601
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 602
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 604
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 605
    const-string v1, "apn_id"

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    sget-object v1, Lcom/android/settings/network/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 607
    return-void
.end method

.method private startPreOrPostApn()V
    .locals 4

    .line 690
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mIsPrepaid:Z

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 692
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 693
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fih.apn.APNSelectionActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 695
    const-string v2, "newSimNum"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 697
    const-string v0, "ApnSettings"

    const-string v1, "startPrepaidApnIntent: send intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_0
    return-void
.end method

.method private updateScreenEnableState(Landroid/content/Context;)V
    .locals 8

    .line 769
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 770
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 771
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-ne v4, v1, :cond_0

    .line 772
    move v1, v3

    goto :goto_0

    .line 771
    :cond_0
    nop

    .line 772
    move v1, v2

    .line 773
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "airplane_mode_on"

    const/4 v5, -0x1

    .line 772
    invoke-static {p1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 775
    move p1, v3

    goto :goto_1

    .line 772
    :cond_1
    nop

    .line 775
    move p1, v2

    :goto_1
    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    .line 776
    move v4, v3

    goto :goto_2

    .line 775
    :cond_2
    nop

    .line 776
    move v4, v2

    :goto_2
    const-string v5, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateScreenEnableState(), subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ,airplaneModeEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ,simReady = "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 780
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getScreenEnableState(ILandroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 778
    move v2, v3

    goto :goto_3

    .line 780
    :cond_3
    nop

    .line 778
    :goto_3
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 781
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 782
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 784
    :cond_4
    return-void
.end method

.method private updateScreenForDataStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 754
    const-string v0, "apnType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 755
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver,send MMS status, get type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const-string v0, "mms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 757
    nop

    .line 758
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "airplane_mode_on"

    const/4 v1, -0x1

    .line 757
    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 759
    move p2, v1

    goto :goto_0

    .line 757
    :cond_0
    nop

    .line 759
    move p2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    if-nez p2, :cond_1

    .line 760
    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnSettings;->isMmsInTransaction(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object p2, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 763
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 762
    invoke-interface {p1, p2, v3}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getScreenEnableState(ILandroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 759
    move v0, v1

    goto :goto_1

    .line 762
    :cond_1
    nop

    .line 759
    :goto_1
    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 766
    :cond_2
    return-void
.end method


# virtual methods
.method public fillList()V
    .locals 25

    .line 332
    move-object/from16 v7, p0

    const-string v0, "phone"

    invoke-virtual {v7, v0}, Lcom/android/settings/network/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 333
    iget-object v1, v7, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    iget-object v1, v7, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 335
    :goto_0
    move v8, v1

    goto :goto_1

    .line 334
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 335
    :goto_1
    iget-object v1, v7, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v1, :cond_1

    const-string v0, ""

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v8}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_2
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before plugin, mccmnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, v7, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v2, v7, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 340
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 339
    invoke-interface {v1, v0, v2}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getOperatorNumericFromImpi(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 342
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mccmnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    iget-object v2, v7, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_2

    .line 351
    invoke-static {v8}, Lcom/mediatek/settings/cdma/CdmaUtils;->isSupportCdma(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 352
    invoke-static {v1, v0, v8}, Lcom/mediatek/settings/cdma/CdmaApnSetting;->customizeQuerySelectionforCdma(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 357
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL)) AND user_visible!=0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_VOLTE_SUPPORT:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v7, Lcom/android/settings/network/ApnSettings;->mHideImsApn:Z

    if-eqz v2, :cond_4

    .line 366
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND NOT (type=\'ims\' OR type=\'ia,ims\')"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    :cond_4
    iget-boolean v2, v7, Lcom/android/settings/network/ApnSettings;->mHideXcapApn:Z

    if-eqz v2, :cond_5

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND NOT (type=\'xcap\')"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    :cond_5
    iget-object v2, v7, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v2, v1, v0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getFillListQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillList where: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v1, v7, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    const-string v2, "name ASC"

    invoke-interface {v1, v2}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getApnSortOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList sort: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id"

    const-string v12, "name"

    const-string v13, "apn"

    const-string v14, "type"

    const-string v15, "mvno_type"

    const-string v16, "mvno_match_data"

    const-string v17, "sourcetype"

    const-string v18, "ui_order"

    const-string v19, "read_only"

    filled-new-array/range {v11 .. v19}, [Ljava/lang/String;

    move-result-object v11

    .line 388
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const-string v14, "ui_order ASC,name ASC"

    .line 385
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 391
    if-eqz v9, :cond_14

    .line 392
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillList, cursor count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    nop

    .line 394
    iget-object v0, v7, Lcom/android/settings/network/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v11, 0x1

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_6

    .line 395
    iget-object v0, v7, Lcom/android/settings/network/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 396
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 395
    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 398
    move-object v12, v0

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_3
    const-string v0, "apn_list"

    invoke-virtual {v7, v0}, Lcom/android/settings/network/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/support/v7/preference/PreferenceGroup;

    .line 399
    invoke-virtual {v13}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 401
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 402
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 403
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 404
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 407
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 408
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_10

    .line 409
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 411
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 413
    const/4 v10, 0x4

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 414
    const/4 v11, 0x5

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 416
    const/4 v3, 0x6

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 419
    move-object/from16 v20, v5

    const/4 v5, 0x7

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 420
    move/from16 v21, v5

    const/16 v5, 0x8

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 422
    invoke-virtual {v7, v2}, Lcom/android/settings/network/ApnSettings;->shouldSkipApn(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 423
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 424
    nop

    .line 408
    move-object/from16 v5, v20

    :goto_5
    const/4 v11, 0x1

    goto :goto_4

    .line 427
    :cond_7
    move-object/from16 v22, v6

    iget-object v6, v7, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v6, v0, v3}, Lcom/mediatek/settings/ext/IApnSettingsExt;->updateApnName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 428
    new-instance v3, Lcom/android/settings/network/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 430
    invoke-virtual {v3, v1}, Lcom/android/settings/network/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v3, v0}, Lcom/android/settings/network/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 432
    invoke-virtual {v3, v4}, Lcom/android/settings/network/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnPreference;->setPersistent(Z)V

    .line 434
    invoke-virtual {v3, v7}, Lcom/android/settings/network/ApnPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 435
    invoke-virtual {v3, v8}, Lcom/android/settings/network/ApnPreference;->setSubId(I)V

    .line 441
    if-nez v5, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    move v5, v6

    :goto_6
    invoke-virtual {v3, v5}, Lcom/android/settings/network/ApnPreference;->setApnEditable(Z)V

    .line 443
    iget-object v5, v7, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v5, :cond_9

    const/4 v5, 0x0

    goto :goto_7

    :cond_9
    iget-object v5, v7, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 444
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 443
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/settings/network/ApnPreference;->setSubId(I)V

    .line 451
    if-eqz v2, :cond_a

    const-string v5, "mms"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "dun"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "ia"

    .line 453
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "ims"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "emergency"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    iget-object v5, v7, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 455
    invoke-interface {v5, v2}, Lcom/mediatek/settings/ext/IApnSettingsExt;->isSelectable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 456
    const/4 v2, 0x1

    goto :goto_8

    .line 455
    :cond_b
    nop

    .line 456
    move v2, v6

    :goto_8
    invoke-virtual {v3, v2}, Lcom/android/settings/network/ApnPreference;->setSelectable(Z)V

    .line 457
    const-string v5, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v4

    const-string v4, "mSelectedKey = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/settings/network/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " key = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " selectable="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-eqz v2, :cond_d

    .line 467
    move-object v0, v7

    move-object v1, v3

    move-object v2, v14

    const/16 v16, 0x0

    move-object v3, v15

    move-object/from16 v17, v23

    move-object v4, v12

    move-object/from16 v18, v20

    move/from16 v6, v21

    move-object v5, v10

    move/from16 v24, v8

    move-object/from16 v19, v22

    move v8, v6

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/network/ApnSettings;->addApnToList(Lcom/android/settings/network/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, v7, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 471
    iget-object v1, v7, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_9

    :cond_c
    iget-object v1, v7, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 472
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 471
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 470
    move-object/from16 v1, v17

    move-object v2, v10

    move-object v3, v11

    move-object v4, v14

    move-object v5, v15

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/settings/ext/IApnSettingsExt;->customizeUnselectableApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_b

    .line 474
    :cond_d
    move/from16 v24, v8

    move-object/from16 v18, v20

    move/from16 v8, v21

    move-object/from16 v19, v22

    move-object/from16 v17, v23

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v3

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    move-object v4, v12

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/network/ApnSettings;->addApnToList(Lcom/android/settings/network/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, v7, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 477
    iget-object v1, v7, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_a

    :cond_e
    iget-object v1, v7, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 478
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 477
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 476
    move-object/from16 v1, v17

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v4, v19

    move-object/from16 v5, v18

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/settings/ext/IApnSettingsExt;->customizeUnselectableApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 481
    :goto_b
    iget-boolean v0, v7, Lcom/android/settings/network/ApnSettings;->mIsPrepaid:Z

    const/16 v1, 0x7f

    if-eq v8, v1, :cond_f

    const/16 v16, 0x1

    nop

    :cond_f
    or-int v0, v0, v16

    iput-boolean v0, v7, Lcom/android/settings/network/ApnSettings;->mIsPrepaid:Z

    .line 483
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 484
    nop

    .line 408
    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v8, v24

    goto/16 :goto_5

    .line 485
    :cond_10
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 487
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 488
    nop

    .line 489
    nop

    .line 494
    move-object v14, v15

    move-object/from16 v0, v18

    goto :goto_c

    :cond_11
    move-object/from16 v0, v19

    :goto_c
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    .line 495
    invoke-virtual {v13, v2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 496
    goto :goto_d

    .line 497
    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 498
    invoke-virtual {v13, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 499
    goto :goto_e

    .line 502
    :cond_13
    invoke-direct {v7, v14}, Lcom/android/settings/network/ApnSettings;->setPreferApnChecked(Ljava/util/ArrayList;)V

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/settings/network/ApnSettings;->updateScreenEnableState(Landroid/content/Context;)V

    .line 507
    :cond_14
    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    .line 741
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 742
    const/16 p1, 0x243

    return p1

    .line 744
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 187
    const/16 v0, 0xc

    return v0
.end method

.method public getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    .line 324
    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    sget-object v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0

    .line 328
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 254
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f12010d    # @string/apn_settings_not_available 'Access Point Name settings are not available for this user'

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    .line 258
    iget-boolean p1, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnSettings;->setHasOptionsMenu(Z)V

    .line 259
    iget-boolean p1, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    if-eqz p1, :cond_0

    .line 260
    const p1, 0x7f15007e    # @xml/placeholder_prefs 'res/xml/placeholder_prefs.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnSettings;->addPreferencesFromResource(I)V

    .line 261
    return-void

    .line 264
    :cond_0
    const p1, 0x7f150012    # @xml/apn_settings 'res/xml/apn_settings.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnSettings;->addPreferencesFromResource(I)V

    .line 265
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 192
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sub_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 197
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 200
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnSettings;->setIfOnlyAvailableForAdmins(Z)V

    .line 204
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 205
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 208
    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_0

    .line 209
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate()... Invalid subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 215
    :cond_0
    new-instance v0, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 216
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    new-instance v2, Lcom/android/settings/network/ApnSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/network/ApnSettings$2;-><init>(Lcom/android/settings/network/ApnSettings;)V

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V

    .line 228
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getApnSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 229
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v0, p0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->initTetherField(Landroid/support/v14/preference/PreferenceFragment;)V

    .line 232
    const-string v0, "carrier_config"

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 234
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 235
    const-string v2, "hide_ims_apn_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/network/ApnSettings;->mHideImsApn:Z

    .line 236
    const-string v2, "allow_adding_apns_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/network/ApnSettings;->mAllowAddingApns:Z

    .line 237
    iget-boolean v2, p0, Lcom/android/settings/network/ApnSettings;->mAllowAddingApns:Z

    if-eqz v2, :cond_1

    .line 238
    const-string v2, "read_only_apn_types_string_array"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-static {v2}, Lcom/android/settings/network/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    const-string v2, "ApnSettings"

    const-string v3, "not allowing adding APN because all APN types are read only"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/network/ApnSettings;->mAllowAddingApns:Z

    .line 247
    :cond_1
    const-string v2, "oem_hide_xcap_apn_bool"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mHideXcapApn:Z

    .line 249
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings;->mUserManager:Landroid/os/UserManager;

    .line 250
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 726
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 727
    new-instance p1, Lcom/android/settings/network/ApnSettings$3;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/network/ApnSettings$3;-><init>(Lcom/android/settings/network/ApnSettings;Landroid/content/Context;)V

    .line 732
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120b39    # @string/restore_default_apn 'Restoring default APN settings.'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 733
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 734
    return-object p1

    .line 736
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .line 528
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 529
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mAllowAddingApns:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreOngoing:Z

    if-nez v0, :cond_0

    .line 530
    nop

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f1208ef    # @string/menu_new 'New APN'

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v4, 0x7f080131    # @drawable/ic_menu_add_white 'res/drawable/ic_menu_add_white.xml'

    .line 532
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 533
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 535
    :cond_0
    nop

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f1208f5    # @string/menu_restore 'Reset to default'

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-interface {p1, v3, v1, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x1080055    # @android:drawable/ic_menu_upload

    .line 537
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 541
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 542
    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    goto :goto_0

    .line 543
    :cond_2
    const/4 v4, -0x1

    .line 541
    :goto_0
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    .line 540
    invoke-interface {v0, p1, v2, v1, v3}, Lcom/mediatek/settings/ext/IApnSettingsExt;->updateMenu(Landroid/view/Menu;IILjava/lang/String;)V

    .line 544
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 545
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 306
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 308
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSimHotSwap()V

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->onDestroy()V

    .line 318
    return-void
.end method

.method public onIntentUpdate(Landroid/content/Intent;)V
    .locals 3

    .line 865
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 867
    if-nez v0, :cond_0

    .line 868
    return-void

    .line 871
    :cond_0
    const-string v1, "sub_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 873
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 874
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIntentUpdate sub_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 549
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 558
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 555
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->restoreDefaultApn()Z

    .line 556
    return v1

    .line 551
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/network/ApnSettings;->addNewApn()V

    .line 552
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .line 292
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 294
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 295
    return-void

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->onApnSettingsEvent(I)V

    .line 302
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 590
    const-string v0, "ApnSettings"

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

    .line 592
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 590
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 594
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/network/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 597
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 580
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 581
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 582
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 583
    const-string p1, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put subid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string p1, "sub_id"

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 586
    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    .line 809
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    .line 810
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/sim/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 811
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareOptionsMenu isAirplaneModeOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 814
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    xor-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 813
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 816
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 817
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 269
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 271
    iget-boolean v0, p0, Lcom/android/settings/network/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 272
    return-void

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    sget-boolean v0, Lcom/android/settings/network/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/network/ApnSettings;->fillList()V

    .line 281
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnSettings;->removeDialog(I)V

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->updateTetherState()V

    .line 287
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->onApnSettingsEvent(I)V

    .line 288
    return-void
.end method

.method public shouldSkipApn(Ljava/lang/String;)Z
    .locals 1

    .line 804
    const-string v0, "cmmail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
