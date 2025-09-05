.class Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CredentialAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/UserCredentialsSettings$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 341
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mItems:Ljava/util/List;

    .line 342
    iput-object p2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 343
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 334
    check-cast p1, Lcom/android/settings/UserCredentialsSettings$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->onBindViewHolder(Lcom/android/settings/UserCredentialsSettings$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/UserCredentialsSettings$ViewHolder;I)V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$Credential;

    iget-object v1, p1, Lcom/android/settings/UserCredentialsSettings$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0d01c2    # @layout/user_credential_preference 'res/layout/user_credential_preference.xml'

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/settings/UserCredentialsSettings;->getCredentialView(Lcom/android/settings/UserCredentialsSettings$Credential;ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 354
    iget-object v0, p1, Lcom/android/settings/UserCredentialsSettings$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 355
    iget-object p1, p1, Lcom/android/settings/UserCredentialsSettings$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/UserCredentialsSettings$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/UserCredentialsSettings$ViewHolder;
    .locals 3

    .line 347
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 348
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$ViewHolder;

    const v1, 0x7f0d01c2    # @layout/user_credential_preference 'res/layout/user_credential_preference.xml'

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/UserCredentialsSettings$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
