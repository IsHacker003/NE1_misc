.class public Lcom/android/settings/network/ApnEditor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/ApnEditor$ApnData;,
        Lcom/android/settings/network/ApnEditor$ErrorDialog;
    }
.end annotation


# static fields
.field static final APN_INDEX:I = 0x2

.field static final CARRIER_ENABLED_INDEX:I = 0x11

.field static final MCC_INDEX:I = 0x9

.field static final MNC_INDEX:I = 0xa

.field static final NAME_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field static sNotSet:Ljava/lang/String;

.field private static sProjection:[Ljava/lang/String;


# instance fields
.field mApn:Landroid/support/v7/preference/EditTextPreference;

.field mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

.field private mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

.field mApnType:Landroid/support/v7/preference/EditTextPreference;

.field mAuthType:Landroid/support/v7/preference/ListPreference;

.field private mBearerInitialVal:I

.field mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

.field mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

.field private mCarrierUri:Landroid/net/Uri;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field mMcc:Landroid/support/v7/preference/EditTextPreference;

.field mMmsPort:Landroid/support/v7/preference/EditTextPreference;

.field mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

.field mMmsc:Landroid/support/v7/preference/EditTextPreference;

.field mMnc:Landroid/support/v7/preference/EditTextPreference;

.field mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field mMvnoType:Landroid/support/v7/preference/ListPreference;

.field private mMvnoTypeStr:Ljava/lang/String;

.field mName:Landroid/support/v7/preference/EditTextPreference;

.field private mNewApn:Z

.field mPassword:Landroid/support/v7/preference/EditTextPreference;

.field mPort:Landroid/support/v7/preference/EditTextPreference;

.field mProtocol:Landroid/support/v7/preference/ListPreference;

.field mProxy:Landroid/support/v7/preference/EditTextPreference;

.field private mReadOnlyApn:Z

.field private mReadOnlyApnFields:[Ljava/lang/String;

.field private mReadOnlyApnTypes:[Ljava/lang/String;

.field private mReadOnlyMode:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

.field mServer:Landroid/support/v7/preference/EditTextPreference;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mSourceType:I

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mUser:Landroid/support/v7/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 92
    const-class v0, Lcom/android/settings/network/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    .line 172
    const-string v1, "_id"

    const-string v2, "name"

    const-string v3, "apn"

    const-string v4, "proxy"

    const-string v5, "port"

    const-string v6, "user"

    const-string v7, "server"

    const-string v8, "password"

    const-string v9, "mmsc"

    const-string v10, "mcc"

    const-string v11, "mnc"

    const-string v12, "numeric"

    const-string v13, "mmsproxy"

    const-string v14, "mmsport"

    const-string v15, "authtype"

    const-string v16, "type"

    const-string v17, "protocol"

    const-string v18, "carrier_enabled"

    const-string v19, "bearer"

    const-string v20, "bearer_bitmask"

    const-string v21, "roaming_protocol"

    const-string v22, "mvno_type"

    const-string v23, "mvno_match_data"

    const-string v24, "edited"

    const-string v25, "user_editable"

    const-string v26, "sourcetype"

    const-string v27, "read_only"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    .line 1456
    iput v0, p0, Lcom/android/settings/network/ApnEditor;->mSourceType:I

    .line 1457
    iput-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyMode:Z

    .line 1479
    new-instance v0, Lcom/android/settings/network/ApnEditor$3;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ApnEditor$3;-><init>(Lcom/android/settings/network/ApnEditor;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 88
    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/network/ApnEditor;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->exitWithoutSave()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/network/ApnEditor;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->updateScreenEnableState()V

    return-void
.end method

.method private apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 439
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 440
    return v1

    .line 443
    :cond_0
    invoke-static {p1}, Lcom/android/settings/network/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 447
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 448
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 450
    array-length v0, p2

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p2, v3

    .line 451
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 452
    sget-object p1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "apnTypesMatch: true because match found for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return v2

    .line 450
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    :cond_3
    sget-object p1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string p2, "apnTypesMatch: false"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return v1

    .line 444
    :cond_4
    :goto_1
    return v2
.end method

.method private bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 713
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030019    # @array/bearer_entries

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    nop

    .line 716
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 717
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 719
    if-eqz v2, :cond_0

    .line 720
    :try_start_0
    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    const/4 v2, 0x0

    goto :goto_1

    .line 725
    :catch_0
    move-exception v3

    goto :goto_2

    .line 723
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_1
    goto :goto_3

    .line 725
    :goto_2
    nop

    .line 728
    :goto_3
    goto :goto_0

    .line 729
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 730
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 731
    return-object p1

    .line 733
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1306
    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .line 1274
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1275
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1276
    new-instance v0, Lcom/android/settings/network/ApnEditor$ApnData;

    sget-object v1, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    .line 1278
    :cond_0
    return-void
.end method

.method private disableAllFields()V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 532
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 536
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 538
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 539
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 540
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 543
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 544
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 546
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 547
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 550
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 551
    return-void
.end method

.method private disableFields([Ljava/lang/String;)V
    .locals 4

    .line 519
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 520
    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->getPreferenceFromFieldName(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 521
    if-eqz v3, :cond_0

    .line 522
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 519
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    :cond_1
    return-void
.end method

.method private exitWithoutSave()V
    .locals 3

    .line 1503
    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1504
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1506
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 1507
    return-void
.end method

.method static formatInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 399
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 400
    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    return-object p0
.end method

.method private getPreferenceFromFieldName(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1

    .line 467
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "authtype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "mmsport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "proxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "mmsc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "mnc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "mcc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "apn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "mvno_match_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto :goto_1

    :sswitch_d
    const-string v0, "server"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_e
    const-string v0, "protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto :goto_1

    :sswitch_f
    const-string v0, "roaming_protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    goto :goto_1

    :sswitch_10
    const-string v0, "bearer_bitmask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    goto :goto_1

    :sswitch_11
    const-string v0, "bearer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto :goto_1

    :sswitch_12
    const-string v0, "carrier_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_1

    :sswitch_13
    const-string v0, "mmsproxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_14
    const-string v0, "mvno_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x13

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 510
    const/4 p1, 0x0

    return-object p1

    .line 508
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    return-object p1

    .line 506
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    return-object p1

    .line 504
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    return-object p1

    .line 501
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    return-object p1

    .line 499
    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    return-object p1

    .line 497
    :pswitch_5
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    return-object p1

    .line 495
    :pswitch_6
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    return-object p1

    .line 493
    :pswitch_7
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    return-object p1

    .line 491
    :pswitch_8
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    return-object p1

    .line 489
    :pswitch_9
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    return-object p1

    .line 487
    :pswitch_a
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    return-object p1

    .line 485
    :pswitch_b
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    return-object p1

    .line 483
    :pswitch_c
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    return-object p1

    .line 481
    :pswitch_d
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    return-object p1

    .line 479
    :pswitch_e
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    return-object p1

    .line 477
    :pswitch_f
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    return-object p1

    .line 475
    :pswitch_10
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    return-object p1

    .line 473
    :pswitch_11
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    return-object p1

    .line 471
    :pswitch_12
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    return-object p1

    .line 469
    :pswitch_13
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7f4962d1 -> :sswitch_14
        -0x747b9085 -> :sswitch_13
        -0x61c86706 -> :sswitch_12
        -0x5307fc9f -> :sswitch_11
        -0x49581165 -> :sswitch_10
        -0x3df71002 -> :sswitch_f
        -0x3af57168 -> :sswitch_e
        -0x35fdd0bd -> :sswitch_d
        -0x1f00dbe7 -> :sswitch_c
        0x17a1f -> :sswitch_b
        0x1a58d -> :sswitch_a
        0x1a6e2 -> :sswitch_9
        0x3333f0 -> :sswitch_8
        0x337a8b -> :sswitch_7
        0x349881 -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x36ebcb -> :sswitch_4
        0x65fca6e -> :sswitch_3
        0x46909dd4 -> :sswitch_2
        0x4889ba9b -> :sswitch_1
        0x556d58e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUserEnteredApnType()Ljava/lang/String;
    .locals 10

    .line 1311
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1312
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1313
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*"

    .line 1314
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 1315
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1317
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1318
    nop

    .line 1319
    sget-object v3, Lcom/mediatek/internal/telephony/MtkPhoneConstants;->MTK_APN_TYPES:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v7, v6

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_5

    aget-object v8, v3, v6

    .line 1320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "ims"

    .line 1321
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1322
    goto :goto_2

    .line 1325
    :cond_2
    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "ia"

    .line 1326
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "emergency"

    .line 1327
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1328
    if-eqz v7, :cond_3

    .line 1329
    nop

    .line 1333
    move v7, v5

    goto :goto_1

    .line 1331
    :cond_3
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    :goto_1
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1336
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1337
    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserEnteredApnType: changed apn type to editable apn types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_6
    return-object v0
.end method

.method static hasAllApns([Ljava/lang/String;)Z
    .locals 6

    .line 412
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 413
    return v1

    .line 416
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 417
    const-string v0, "*"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 418
    sget-object p0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v0, "hasAllApns: true because apnList.contains(PhoneConstants.APN_TYPE_ALL)"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return v2

    .line 421
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants;->APN_TYPES:[Ljava/lang/String;

    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 422
    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 423
    return v1

    .line 421
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 427
    :cond_3
    sget-object p0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v0, "hasAllApns: true"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return v2
.end method

.method private isSimReadyAndRadioOn()Z
    .locals 6

    .line 1540
    nop

    .line 1541
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    .line 1542
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v3, v0, :cond_0

    .line 1543
    move v0, v2

    goto :goto_0

    .line 1542
    :cond_0
    nop

    .line 1543
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 1546
    move v3, v2

    goto :goto_1

    .line 1543
    :cond_1
    nop

    .line 1546
    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 1547
    move v1, v2

    goto :goto_2

    .line 1546
    :cond_2
    nop

    .line 1547
    :goto_2
    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimReadyAndRadioOn(), subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,airplaneModeEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ,simReady = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    return v1
.end method

.method public static synthetic lambda$updateApnDataToDatabase$0(Lcom/android/settings/network/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 2

    .line 1178
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1180
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 1181
    if-nez p1, :cond_0

    .line 1182
    sget-object p1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t add a new apn to database "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_0
    goto :goto_0

    .line 1186
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1189
    :goto_0
    return-void
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 737
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 738
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 740
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 741
    return-object v2

    .line 745
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030057    # @array/ext_mvno_type_entries

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 746
    iget-boolean v4, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    .line 748
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v7, "mvno_match_data"

    .line 749
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 750
    :cond_1
    move v4, v6

    goto :goto_1

    .line 749
    :cond_2
    :goto_0
    nop

    .line 750
    move v4, v5

    :goto_1
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    invoke-virtual {v7, v5}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 751
    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 752
    aget-object p1, v3, v0

    const-string v1, "SPN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 753
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 754
    :cond_4
    aget-object p1, v3, v0

    const-string v1, "IMSI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 755
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p1

    .line 756
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 757
    goto :goto_3

    :cond_5
    aget-object p1, v3, v0

    const-string v1, "GID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 758
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 763
    :cond_6
    :goto_3
    :try_start_0
    aget-object p1, v3, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 764
    :catch_0
    move-exception p1

    .line 765
    return-object v2
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;
    .locals 2

    .line 699
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    .line 700
    const/4 p2, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 701
    return-object p2

    .line 703
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030004    # @array/apn_protocol_entries

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 705
    :try_start_0
    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 706
    :catch_0
    move-exception p1

    .line 707
    return-object p2
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1281
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1284
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-array p1, p1, [C

    .line 1285
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1286
    const/16 v1, 0x2a

    aput-char v1, p1, v0

    .line 1285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1288
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 1282
    :cond_2
    :goto_1
    sget-object p1, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object p1
.end method

.method private updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    .line 1177
    new-instance v0, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;-><init>(Lcom/android/settings/network/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 1190
    return-void
.end method

.method private updateScreenEnableState()V
    .locals 5

    .line 1527
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->isSimReadyAndRadioOn()Z

    move-result v0

    .line 1528
    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mReadOnlyMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget v2, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    .line 1530
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getScreenEnableState(ILandroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1529
    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1533
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/settings/ext/IApnSettingsExt;->setApnTypePreferenceState(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    .line 1534
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget v1, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    iget v2, p0, Lcom/android/settings/network/ApnEditor;->mSourceType:I

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mediatek/settings/ext/IApnSettingsExt;->updateFieldsStatus(IILandroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1535
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    invoke-interface {v0, v1, v2}, Lcom/mediatek/settings/ext/IApnSettingsExt;->setMvnoPreferenceState(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)V

    .line 1537
    return-void
.end method


# virtual methods
.method fillUI(Z)V
    .locals 7

    .line 560
    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillUi... firstTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    .line 563
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v2, v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 564
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 565
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 566
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 567
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 568
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 569
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 570
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 571
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 572
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 573
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 574
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 575
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0xf

    invoke-virtual {v2, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 577
    iget-boolean p1, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-eqz p1, :cond_1

    .line 578
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {p1, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p1

    .line 579
    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " fillUi, numeric = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget v2, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-static {p1, v2}, Lcom/mediatek/settings/cdma/CdmaApnSetting;->updateMccMncForCdma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 585
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 587
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 591
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 592
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3, p1}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 593
    iput-object p1, p0, Lcom/android/settings/network/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 594
    iput-object v2, p0, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 598
    :cond_0
    iput v1, p0, Lcom/android/settings/network/ApnEditor;->mSourceType:I

    .line 599
    goto :goto_0

    .line 601
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v2, 0x19

    invoke-virtual {p1, v2}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/ApnEditor;->mSourceType:I

    .line 603
    :goto_0
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v2, 0xe

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 604
    if-eq p1, v3, :cond_2

    .line 605
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 607
    :cond_2
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 610
    :goto_1
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 611
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 612
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v3, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 613
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v2, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    .line 615
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 616
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v3, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 617
    if-nez v2, :cond_4

    .line 618
    iget v2, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-nez v2, :cond_6

    .line 619
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 622
    :cond_4
    nop

    .line 623
    move v3, v1

    :goto_3
    if-eqz v2, :cond_6

    .line 624
    and-int/lit8 v4, v2, 0x1

    if-ne v4, v1, :cond_5

    .line 625
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_5
    shr-int/lit8 v2, v2, 0x1

    .line 628
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 632
    :cond_6
    :goto_4
    iget v2, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_7
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v2, p1}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 638
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 639
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 640
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 641
    iget-boolean p1, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 642
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 643
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 651
    :cond_8
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 652
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 653
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 654
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 655
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 656
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 657
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 658
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 659
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 660
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 661
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/network/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 662
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/network/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 663
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 665
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 666
    if-eqz p1, :cond_9

    .line 667
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 668
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 670
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030002    # @array/apn_auth_entries

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 671
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    aget-object p1, v2, p1

    invoke-virtual {v3, p1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 672
    goto :goto_5

    .line 673
    :cond_9
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    sget-object v2, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 676
    :goto_5
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 677
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    .line 678
    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 677
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 679
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    .line 680
    invoke-virtual {v2}, Landroid/support/v14/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 679
    invoke-virtual {p1, v2}, Landroid/support/v14/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 681
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    .line 682
    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 681
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 683
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f050005    # @bool/config_allow_edit_carrier_enabled 'false'

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 686
    if-eqz p1, :cond_a

    .line 687
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_6

    .line 689
    :cond_a
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 691
    :goto_6
    return-void
.end method

.method getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/ApnEditor$ApnData;
    .locals 6

    .line 1371
    nop

    .line 1372
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1378
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1379
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1380
    new-instance v2, Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-direct {v2, p1, v0}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    move-object v1, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1372
    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1382
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw p1

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1384
    :cond_3
    if-nez v1, :cond_4

    .line 1385
    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get apnData from Uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_4
    return-object v1
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    .line 1262
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1263
    const/16 p1, 0x212

    return p1

    .line 1265
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 555
    const/16 v0, 0xd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 241
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 243
    const v0, 0x7f150011    # @xml/apn_editor 'res/xml/apn_editor.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->addPreferencesFromResource(I)V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120105    # @string/apn_not_set 'Not set'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 246
    const-string v0, "apn_name"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    .line 247
    const-string v0, "apn_apn"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    .line 248
    const-string v0, "apn_http_proxy"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    .line 249
    const-string v0, "apn_http_port"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    .line 250
    const-string v0, "apn_user"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    .line 251
    const-string v0, "apn_server"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    .line 252
    const-string v0, "apn_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    .line 253
    const-string v0, "apn_mms_proxy"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    .line 254
    const-string v0, "apn_mms_port"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    .line 255
    const-string v0, "apn_mmsc"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    .line 256
    const-string v0, "apn_mcc"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    .line 257
    const-string v0, "apn_mnc"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    .line 258
    const-string v0, "apn_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    .line 259
    const-string v0, "auth_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    .line 260
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 261
    const-string v0, "apn_protocol"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    .line 262
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 263
    const-string v0, "apn_roaming_protocol"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    .line 264
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 265
    const-string v0, "carrier_enabled"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    .line 266
    const-string v0, "bearer_multi"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/MultiSelectListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    .line 267
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 268
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    const v1, 0x104000a    # @android:string/ok

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setPositiveButtonText(I)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    const/high16 v1, 0x1040000    # @android:string/cancel

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setNegativeButtonText(I)V

    .line 270
    const-string v0, "mvno_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    .line 271
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 272
    const-string v0, "mvno_match_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 276
    const-string v2, "sub_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    .line 279
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    .line 280
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 281
    iput-object v3, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/settings/UtilsExt;->getApnSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 286
    const-string v4, "carrier_config"

    .line 287
    invoke-virtual {p0, v4}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 288
    if-eqz v4, :cond_1

    .line 289
    invoke-virtual {v4}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 290
    if-eqz v4, :cond_1

    .line 291
    const-string v5, "read_only_apn_types_string_array"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 293
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 294
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 295
    sget-object v9, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate: read only APN type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 298
    :cond_0
    const-string v5, "read_only_apn_fields_string_array"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    .line 303
    :cond_1
    nop

    .line 304
    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 305
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 306
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 307
    sget-object p1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Edit request not for carrier table. Uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 309
    return-void

    .line 312
    :cond_2
    const-string v1, "readOnly"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyMode:Z

    .line 313
    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read only mode : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyMode:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 314
    :cond_3
    const-string v4, "android.intent.action.INSERT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 315
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    .line 316
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 317
    sget-object p1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insert request not for carrier table. Uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 319
    return-void

    .line 321
    :cond_4
    iput-boolean v5, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    .line 322
    const-string v1, "mvno_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    .line 323
    const-string v1, "mvno_match_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    .line 324
    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mvnoType = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mvnoMatchData ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_1
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    sget-object v1, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->customizeApnProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget v1, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/mediatek/settings/ext/IApnSettingsExt;->customizePreference(ILandroid/support/v7/preference/PreferenceScreen;)V

    .line 338
    if-eqz v3, :cond_5

    .line 339
    invoke-virtual {p0, v3}, Lcom/android/settings/network/ApnEditor;->getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/ApnEditor$ApnData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    .line 340
    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 342
    :cond_5
    new-instance v0, Lcom/android/settings/network/ApnEditor$ApnData;

    sget-object v1, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    .line 343
    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sProjection.length = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 348
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v1, 0x17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 351
    move v0, v5

    goto :goto_3

    .line 348
    :cond_6
    nop

    .line 351
    move v0, v2

    :goto_3
    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: EDITED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v1, 0x18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v1, 0x1a

    .line 355
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_7

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v3, 0xf

    .line 357
    invoke-virtual {v1, v3}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/network/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 358
    :cond_7
    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "onCreate: apnTypesMatch; read-only APN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iput-boolean v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    .line 360
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->disableAllFields()V

    goto :goto_4

    .line 361
    :cond_8
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 362
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->disableFields([Ljava/lang/String;)V

    .line 365
    :cond_9
    :goto_4
    move v0, v2

    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 369
    :cond_a
    if-nez p1, :cond_b

    move v2, v5

    nop

    :cond_b
    invoke-virtual {p0, v2}, Lcom/android/settings/network/ApnEditor;->fillUI(Z)V

    .line 372
    new-instance p1, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/network/ApnEditor;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 373
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    new-instance v0, Lcom/android/settings/network/ApnEditor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ApnEditor$1;-><init>(Lcom/android/settings/network/ApnEditor;)V

    invoke-virtual {p1, v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V

    .line 383
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 385
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 393
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 394
    return-void

    .line 326
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 327
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 1242
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1243
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x1080027    # @android:drawable/ic_dialog_alert

    .line 1244
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12060f    # @string/error_title ''

    .line 1245
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120108    # @string/apn_predefine_change_dialog_notice 'Are you sure to save? Modifications to default APNs may cause connection problems!'

    .line 1246
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a    # @android:string/ok

    new-instance v1, Lcom/android/settings/network/ApnEditor$2;

    invoke-direct {v1, p0}, Lcom/android/settings/network/ApnEditor$2;-><init>(Lcom/android/settings/network/ApnEditor;)V

    .line 1247
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120361    # @string/cancel 'Cancel'

    const/4 v1, 0x0

    .line 1254
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1255
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1243
    return-object p1

    .line 1257
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 825
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 827
    sget-object p2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateOptionsMenu mReadOnlyMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-boolean p2, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyMode:Z

    if-eqz p2, :cond_0

    .line 829
    return-void

    .line 841
    :cond_0
    nop

    .line 842
    const-string p2, "carrier_config"

    .line 843
    invoke-virtual {p0, p2}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    .line 844
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 845
    invoke-virtual {p2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p2

    .line 846
    if-eqz p2, :cond_1

    .line 847
    const-string v1, "oem_mtk_force_show_apn_delete_menu_bool"

    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    .line 852
    :cond_1
    move p2, v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/settings/network/ApnEditor;->mSourceType:I

    if-nez v1, :cond_2

    if-eqz p2, :cond_3

    .line 854
    :cond_2
    const/4 p2, 0x1

    const v1, 0x7f1208e9    # @string/menu_delete 'Delete APN'

    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    const v1, 0x7f0800ee    # @drawable/ic_delete 'res/drawable/ic_delete.xml'

    .line 855
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 857
    :cond_3
    const/4 p2, 0x2

    const v1, 0x7f1208f6    # @string/menu_save 'Save'

    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    const v1, 0x108004e    # @android:drawable/ic_menu_save

    .line 858
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 859
    const/4 p2, 0x3

    const v1, 0x7f1208e8    # @string/menu_cancel 'Discard'

    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x1080038    # @android:drawable/ic_menu_close_clear_cancel

    .line 860
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 861
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1465
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSimHotSwap()V

    .line 1469
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1470
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1471
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1472
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 1475
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->onDestroy()V

    .line 1476
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 905
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    .line 906
    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    .line 914
    return p3

    .line 908
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->validateAndSaveApnData()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 909
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 911
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 865
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 883
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 880
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 881
    return v1

    .line 872
    :pswitch_1
    iget p1, p0, Lcom/android/settings/network/ApnEditor;->mSourceType:I

    if-nez p1, :cond_0

    .line 873
    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->showDialog(I)V

    goto :goto_0

    .line 875
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->validateAndSaveApnData()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 876
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 878
    :cond_1
    :goto_0
    return v1

    .line 867
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->deleteApn()V

    .line 868
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 869
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 771
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 772
    const-string v1, "auth_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 774
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 775
    iget-object p2, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 777
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030002    # @array/apn_auth_entries

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 778
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    aget-object p1, p2, p1

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    goto/16 :goto_2

    .line 779
    :catch_0
    move-exception p1

    .line 780
    return v2

    .line 782
    :cond_0
    const-string v1, "apn_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 783
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;

    move-result-object p1

    .line 784
    if-nez p1, :cond_1

    .line 785
    return v2

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 788
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 789
    goto/16 :goto_2

    :cond_2
    const-string v1, "apn_roaming_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 790
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;

    move-result-object p1

    .line 791
    if-nez p1, :cond_3

    .line 792
    return v2

    .line 794
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 795
    iget-object p1, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 796
    goto/16 :goto_2

    :cond_4
    const-string v1, "bearer_multi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 797
    check-cast p2, Ljava/util/Set;

    invoke-direct {p0, p2}, Lcom/android/settings/network/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    .line 798
    if-nez p1, :cond_5

    .line 799
    return v2

    .line 801
    :cond_5
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0, p2}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 802
    iget-object p2, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {p2, p1}, Landroid/support/v14/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 803
    goto :goto_2

    :cond_6
    const-string v1, "mvno_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 804
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/network/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 805
    if-nez p1, :cond_7

    .line 806
    return v2

    .line 808
    :cond_7
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 809
    iget-object p2, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 812
    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 813
    if-eqz p2, :cond_9

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_9
    const-string p2, ""

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/network/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 814
    :cond_a
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2

    .line 817
    :cond_b
    if-eqz p2, :cond_c

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_c
    const/4 p2, 0x0

    :goto_1
    invoke-direct {p0, p2}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 820
    :cond_d
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    .line 1553
    invoke-virtual {p0, p2}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1554
    if-eqz v0, :cond_5

    .line 1556
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1557
    nop

    .line 1558
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1557
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1561
    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1562
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1563
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1565
    const v3, 0x7f120107    # @string/apn_port_warning 'The port value must be 1-65535!'

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1566
    const v4, 0xffff

    if-gt v1, v4, :cond_1

    if-gtz v1, :cond_2

    .line 1567
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/android/settings/network/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1568
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1569
    move-object v1, v0

    check-cast v1, Landroid/support/v7/preference/EditTextPreference;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1575
    :cond_2
    goto :goto_0

    .line 1571
    :catch_0
    move-exception v1

    .line 1572
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/android/settings/network/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1573
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1574
    move-object v1, v0

    check-cast v1, Landroid/support/v7/preference/EditTextPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1577
    :cond_3
    :goto_0
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1579
    goto :goto_1

    .line 1580
    :cond_4
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1583
    :cond_5
    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 889
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 890
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 891
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 892
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 893
    return-void
.end method

.method setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0, p5}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object p5

    .line 963
    if-nez p4, :cond_1

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    .line 964
    :goto_1
    if-eqz p4, :cond_2

    .line 965
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 967
    :cond_2
    return p4
.end method

.method setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0, p5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object p5

    .line 936
    if-nez p4, :cond_2

    .line 937
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 938
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p4, 0x1

    .line 940
    :goto_1
    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    .line 941
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    :cond_3
    return p4
.end method

.method showError()V
    .locals 0

    .line 1270
    invoke-static {p0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/ApnEditor;)V

    .line 1271
    return-void
.end method

.method validateAndSaveApnData()Z
    .locals 12

    .line 980
    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "validateAndSave..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 983
    return v6

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 987
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 988
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 989
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 991
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->validateApnData()Ljava/lang/String;

    move-result-object v0

    .line 992
    const/4 v10, 0x0

    if-eqz v0, :cond_1

    .line 993
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->showError()V

    .line 994
    return v10

    .line 997
    :cond_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1000
    iget-boolean v4, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    .line 1001
    const-string v2, "name"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1007
    const-string v2, "apn"

    const/4 v5, 0x2

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1013
    const-string v2, "proxy"

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    .line 1015
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    .line 1013
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1019
    const-string v2, "port"

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    .line 1021
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    .line 1019
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1025
    const-string v2, "mmsproxy"

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    .line 1027
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    .line 1025
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1031
    const-string v2, "mmsport"

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    .line 1033
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xd

    .line 1031
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1037
    const-string v2, "user"

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    .line 1039
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    .line 1037
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1043
    const-string v2, "server"

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    .line 1045
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    .line 1043
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1049
    const-string v2, "password"

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    .line 1051
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    .line 1049
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1055
    const-string v2, "mmsc"

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    .line 1057
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    .line 1055
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1061
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_2

    .line 1063
    const-string v2, "authtype"

    .line 1065
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0xe

    .line 1063
    move-object v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    .line 1070
    move v4, v0

    :cond_2
    const-string v2, "protocol"

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    .line 1072
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    .line 1070
    move-object v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1076
    const-string v2, "roaming_protocol"

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    .line 1078
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x14

    .line 1076
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1082
    const-string v2, "type"

    .line 1084
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    .line 1082
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1088
    const-string v2, "mcc"

    const/16 v5, 0x9

    move-object v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1094
    const-string v2, "mnc"

    const/16 v5, 0xa

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1100
    const-string v0, "numeric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1103
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1104
    const-string v0, "current"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1108
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    .line 1109
    nop

    .line 1110
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v10

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1111
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 1112
    nop

    .line 1113
    nop

    .line 1118
    move v7, v10

    goto :goto_1

    .line 1115
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v1, v2

    .line 1117
    goto :goto_0

    .line 1118
    :cond_5
    move v7, v1

    :goto_1
    const-string v2, "bearer_bitmask"

    const/16 v5, 0x13

    move-object v0, p0

    move-object v1, v11

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v4

    .line 1125
    if-eqz v7, :cond_8

    iget v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-nez v0, :cond_6

    goto :goto_2

    .line 1127
    :cond_6
    iget v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    invoke-static {v7, v0}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1128
    iget v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    .line 1135
    move v3, v0

    goto :goto_4

    .line 1133
    :cond_7
    goto :goto_3

    .line 1126
    :cond_8
    :goto_2
    nop

    .line 1135
    :goto_3
    move v3, v10

    :goto_4
    const-string v2, "bearer"

    const/16 v5, 0x12

    move-object v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v4

    .line 1141
    const-string v2, "mvno_type"

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    .line 1143
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x15

    .line 1141
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1147
    const-string v2, "mvno_match_data"

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    .line 1149
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x16

    .line 1147
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1153
    const-string v2, "carrier_enabled"

    .line 1155
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    const/16 v5, 0x11

    .line 1153
    move-object v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    .line 1159
    const-string v1, "edited"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1161
    const-string v1, "sourcetype"

    iget v2, p0, Lcom/android/settings/network/ApnEditor;->mSourceType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1163
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v1, v11}, Lcom/mediatek/settings/ext/IApnSettingsExt;->saveApnValues(Landroid/content/ContentValues;)V

    .line 1165
    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save apn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "apn"

    invoke-virtual {v11, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    if-eqz v0, :cond_a

    .line 1167
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 1168
    :goto_5
    invoke-direct {p0, v0, v11}, Lcom/android/settings/network/ApnEditor;->updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1173
    :cond_a
    return v6
.end method

.method validateApnData()Ljava/lang/String;
    .locals 10

    .line 1199
    nop

    .line 1201
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1202
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1203
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1204
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1205
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    .line 1207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12060e    # @string/error_name_empty 'The Name field can’t be empty.'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1209
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v4, :cond_1

    const-string v0, "ia"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1210
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12060b    # @string/error_apn_empty 'The APN can’t be empty.'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1211
    :cond_2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 1213
    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xfffe

    and-int/2addr v0, v1

    if-eq v0, v5, :cond_4

    goto :goto_0

    .line 1217
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1214
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12060d    # @string/error_mnc_not23 'MNC field must be 2 or 3 digits.'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1212
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12060c    # @string/error_mcc_not3 'MCC field must be 3 digits.'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1217
    :goto_2
    if-nez v0, :cond_9

    .line 1220
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 1221
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/network/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1223
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_7

    aget-object v6, v1, v4

    .line 1224
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    sget-object v7, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "validateApnData: appending type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1228
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, v5, :cond_8

    .line 1229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1231
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12060a    # @string/error_adding_apn_type 'Carrier does not allow adding APNs of type %s.'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1236
    :cond_9
    return-object v0
.end method
