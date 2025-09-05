.class Lcom/android/settings/TrustedCredentialsSettings$AdapterData;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

.field private final mCertHoldersByUserId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    .line 662
    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->mAdapter:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    .line 663
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 664
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$1;)V
    .locals 0

    .line 655
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;
    .locals 0

    .line 655
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->mAdapter:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;
    .locals 0

    .line 655
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 0

    .line 655
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object p0
.end method


# virtual methods
.method public remove(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 818
    if-eqz v0, :cond_0

    .line 819
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 822
    :cond_0
    return-void
.end method
