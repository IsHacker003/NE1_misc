.class Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings$AdapterData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/util/SparseArray<",
        "Ljava/util/List<",
        "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;


# direct methods
.method public constructor <init>(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)V
    .locals 4

    .line 671
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 672
    iget-object v0, p1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    .line 673
    iget-object v0, p1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$2300(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object v0, p1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 675
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 676
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 677
    goto :goto_0

    .line 678
    :cond_0
    return-void
.end method

.method private isUserTabAndTrustAllCertMode()Z
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3000(Lcom/android/settings/TrustedCredentialsSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldSkipProfile(Landroid/os/UserHandle;)Z
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    .line 682
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 681
    :goto_1
    return p1
.end method

.method private showTrustAllCaDialogIfNeeded()V
    .locals 6

    .line 790
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->isUserTabAndTrustAllCertMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$3100(Lcom/android/settings/TrustedCredentialsSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 794
    if-nez v0, :cond_1

    .line 795
    return-void

    .line 798
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 799
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 801
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 802
    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v5, v5, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v5}, Lcom/android/settings/TrustedCredentialsSettings;->access$3100(Lcom/android/settings/TrustedCredentialsSettings;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 803
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_2
    goto :goto_0

    .line 807
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 808
    const-string v0, "TrustedCredentialsSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no cert is pending approval for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v2, v2, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings;->access$3100(Lcom/android/settings/TrustedCredentialsSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-void

    .line 811
    :cond_4
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$3300(Lcom/android/settings/TrustedCredentialsSettings;Ljava/util/List;)V

    .line 812
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 693
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 696
    :try_start_0
    iget-object v2, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v2, v2, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings;->access$2600(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :try_start_1
    iget-object v3, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v3, v3, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    .line 698
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 701
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 703
    nop

    .line 704
    nop

    .line 705
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v4, :cond_2

    .line 706
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    .line 707
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 708
    invoke-direct {v0, v9}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->shouldSkipProfile(Landroid/os/UserHandle;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 709
    goto :goto_1

    .line 711
    :cond_0
    iget-object v11, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    invoke-static {v11, v9}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v9

    .line 714
    iget-object v11, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v11, v11, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v11}, Lcom/android/settings/TrustedCredentialsSettings;->access$2600(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 715
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v9

    .line 716
    iget-object v11, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v11}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$2700(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v9

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 718
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    monitor-exit v2

    return-object v0

    .line 720
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v8, v11

    .line 721
    invoke-virtual {v5, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 705
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 723
    :cond_2
    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v7, v4, :cond_7

    .line 724
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserHandle;

    .line 725
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .line 726
    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Ljava/util/List;

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 728
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    monitor-exit v2

    return-object v0

    .line 730
    :cond_3
    iget-object v11, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v11, v11, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v11}, Lcom/android/settings/TrustedCredentialsSettings;->access$2600(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/security/KeyChain$KeyChainConnection;

    .line 732
    invoke-direct {v0, v10}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->shouldSkipProfile(Landroid/os/UserHandle;)Z

    move-result v10

    if-nez v10, :cond_6

    if-eqz v14, :cond_6

    if-nez v11, :cond_4

    goto/16 :goto_4

    .line 737
    :cond_4
    invoke-virtual {v11}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v10

    .line 738
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 739
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    .line 740
    move/from16 v19, v9

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v12, :cond_5

    .line 741
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 742
    const/4 v6, 0x1

    move-object/from16 v20, v3

    invoke-interface {v10, v11, v6}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v3

    .line 744
    invoke-static {v3}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v16

    .line 745
    new-instance v3, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    iget-object v6, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v6}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$2800(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    move-result-object v6

    move/from16 v21, v4

    iget-object v4, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    .line 746
    invoke-static {v4}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v4

    const/16 v18, 0x0

    move-object/from16 v17, v11

    move-object v11, v3

    move/from16 v22, v12

    move-object v12, v10

    move-object/from16 v23, v5

    move-object v5, v13

    move-object v13, v6

    move-object v6, v14

    move-object v14, v4

    move v4, v15

    move-object/from16 v15, v17

    move/from16 v17, v4

    invoke-direct/range {v11 .. v18}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;-><init>(Landroid/security/IKeyChainService;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;ILcom/android/settings/TrustedCredentialsSettings$1;)V

    .line 745
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    add-int/lit8 v11, v19, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v3, v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v3, v13

    invoke-virtual {v0, v3}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->publishProgress([Ljava/lang/Object;)V

    .line 740
    add-int/lit8 v9, v9, 0x1

    move v15, v4

    move-object v13, v5

    move-object v14, v6

    move/from16 v19, v11

    move-object/from16 v3, v20

    move/from16 v4, v21

    move/from16 v12, v22

    move-object/from16 v5, v23

    goto :goto_3

    .line 749
    :cond_5
    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v23, v5

    move-object v5, v13

    move v4, v15

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 750
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 723
    move/from16 v9, v19

    const/4 v5, 0x0

    goto :goto_5

    .line 734
    :cond_6
    :goto_4
    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v23, v5

    move v4, v15

    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 735
    nop

    .line 723
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v20

    move/from16 v4, v21

    move-object/from16 v5, v23

    goto/16 :goto_2

    .line 752
    :cond_7
    monitor-exit v2

    return-object v1

    .line 753
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 757
    :catch_0
    move-exception v0

    .line 758
    const-string v1, "TrustedCredentialsSettings"

    const-string v2, "InterruptedException while loading aliases."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0

    .line 754
    :catch_1
    move-exception v0

    .line 755
    const-string v1, "TrustedCredentialsSettings"

    const-string v2, "Remote exception while loading aliases."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 666
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;>;)V"
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 772
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 773
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 774
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 773
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 776
    :cond_0
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$2800(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->notifyDataSetChanged()V

    .line 777
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 778
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContentView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 779
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 780
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings;->access$2300(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 781
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->showTrustAllCaDialogIfNeeded()V

    .line 782
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 666
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->onPostExecute(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$2400(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$2500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 688
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContentView:Landroid/view/View;

    .line 689
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 691
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    .line 763
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 764
    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 765
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 766
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 768
    :cond_0
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 769
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 666
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
