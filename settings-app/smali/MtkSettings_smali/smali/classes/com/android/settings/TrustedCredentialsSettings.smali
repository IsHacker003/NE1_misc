.class public Lcom/android/settings/TrustedCredentialsSettings;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;,
        Lcom/android/settings/TrustedCredentialsSettings$CertHolder;,
        Lcom/android/settings/TrustedCredentialsSettings$AdapterData;,
        Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;,
        Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;,
        Lcom/android/settings/TrustedCredentialsSettings$Tab;
    }
.end annotation


# instance fields
.field private mAliasLoaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

.field private mConfirmedCredentialUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

.field private mConfirmingCredentialUser:I

.field private mGroupAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyChainConnectionByProfileId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mKeyChainConnectionByProfileId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/security/KeyChain$KeyChainConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTrustAllCaUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    .line 158
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    .line 162
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$1;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/ArrayList;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/TrustedCredentialsSettings;I)Z
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->startConfirmCredential(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/Set;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/settings/TrustedCredentialsSettings;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings;->isTrustAllCaCertModeInProgress()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/android/settings/TrustedCredentialsSettings;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    return p0
.end method

.method static synthetic access$3102(Lcom/android/settings/TrustedCredentialsSettings;I)I
    .locals 0

    .line 78
    iput p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/settings/TrustedCredentialsSettings;Ljava/util/List;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->showTrustAllCaDialog(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3602(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;)Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method private addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V
    .locals 10

    .line 276
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$100(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$300(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 278
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$200(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 281
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    .line 282
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroupCount()I

    move-result v1

    .line 286
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 287
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 290
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroupCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 291
    invoke-virtual {v0, v4}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserInfoByGroup(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    .line 292
    invoke-virtual {v0, v4}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChildAdapter(I)Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;

    move-result-object v6

    .line 294
    const v7, 0x7f0d01b3    # @layout/trusted_credential_list_container 'res/layout/trusted_credential_list_container.xml'

    .line 295
    invoke-virtual {v2, v7, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 296
    invoke-virtual {v6, v7}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->setContainerView(Landroid/widget/LinearLayout;)V

    .line 298
    const/4 v8, 0x1

    if-le v1, v8, :cond_0

    move v9, v8

    goto :goto_1

    :cond_0
    move v9, v3

    :goto_1
    invoke-virtual {v6, v9}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->showHeader(Z)V

    .line 299
    invoke-virtual {v6, v5}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->showDivider(Z)V

    .line 300
    const/4 v9, 0x2

    if-gt v1, v9, :cond_1

    :goto_2
    goto :goto_3

    :cond_1
    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v8, v3

    :goto_3
    invoke-virtual {v6, v8}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->setExpandIfAvailable(Z)V

    .line 301
    if-eqz v5, :cond_3

    .line 302
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 304
    :cond_3
    invoke-virtual {p1, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 290
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 307
    :cond_4
    return-void
.end method

.method private closeKeyChainConnections()V
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 268
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 269
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 272
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isTrustAllCaCertModeInProgress()Z
    .locals 2

    .line 921
    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 2

    .line 941
    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;-><init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    .line 942
    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setCertHolder(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsDialogBuilder;

    move-result-object p1

    .line 943
    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->show()Landroid/app/AlertDialog;

    .line 944
    return-void
.end method

.method private showTrustAllCaDialog(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;)V"
        }
    .end annotation

    .line 925
    nop

    .line 926
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 925
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 927
    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;-><init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    .line 928
    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setCertHolders([Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsDialogBuilder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$2;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    .line 929
    invoke-virtual {p1, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 937
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 938
    return-void
.end method

.method private startConfirmCredential(I)Z
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    .line 316
    if-nez v0, :cond_0

    .line 317
    const/4 p1, 0x0

    return p1

    .line 319
    :cond_0
    iput p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 320
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 321
    return p1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 96
    const/16 v0, 0x5c

    return v0
.end method

.method public getX509CertsFromCertHolder(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 948
    nop

    .line 950
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    .line 953
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    .line 954
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/security/IKeyChainService;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 955
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 956
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 957
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 958
    :try_start_2
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7, v4}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v7

    .line 959
    invoke-static {v7}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 960
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 962
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 966
    goto :goto_2

    .line 962
    :catchall_1
    move-exception v2

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 963
    :catch_0
    move-exception v1

    move-object v6, v0

    .line 964
    const-string v0, "TrustedCredentialsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while retrieving certificate chain for root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 964
    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 967
    :goto_2
    return-object v6
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 249
    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 250
    iget p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 251
    iget-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    .line 254
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    .line 256
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 257
    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 258
    if-eqz p3, :cond_0

    .line 259
    invoke-interface {p3, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 263
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 180
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 182
    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    .line 183
    const-string v1, "keyguard"

    .line 184
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 185
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ARG_SHOW_NEW_FOR_USER"

    const/16 v3, -0x2710

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    .line 187
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    .line 188
    iput v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 189
    if-eqz p1, :cond_0

    .line 190
    const-string v1, "ConfirmingCredentialUser"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 192
    const-string v1, "ConfirmedCredentialUsers"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 194
    if-eqz p1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 199
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    .line 201
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    const p1, 0x7f120e04    # @string/trusted_credentials 'Trusted credentials'

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 208
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 220
    const p3, 0x7f0d01b4    # @layout/trusted_credentials 'res/layout/trusted_credentials.xml'

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    .line 221
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 222
    sget-object p1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    .line 224
    sget-object p1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    sget-object p2, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$100(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    .line 235
    invoke-virtual {v1, v2}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->cancel(Z)Z

    .line 236
    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 238
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 239
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    invoke-virtual {v0, v2}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->cancel(Z)Z

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    .line 243
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings;->closeKeyChainConnections()V

    .line 244
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroy()V

    .line 245
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 212
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 213
    const-string v0, "ConfirmedCredentialUsers"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 215
    const-string v0, "ConfirmingCredentialUser"

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    return-void
.end method

.method public removeOrInstallCert(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 2

    .line 972
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 973
    return-void
.end method

.method public startConfirmCredentialIfNotConfirmed(ILjava/util/function/IntConsumer;)Z
    .locals 2

    .line 978
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    const/4 p1, 0x0

    return p1

    .line 983
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->startConfirmCredential(I)Z

    move-result p1

    .line 984
    if-eqz p1, :cond_1

    .line 985
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    .line 987
    :cond_1
    return p1
.end method
