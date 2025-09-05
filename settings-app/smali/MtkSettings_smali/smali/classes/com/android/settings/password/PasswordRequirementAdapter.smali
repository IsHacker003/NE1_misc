.class public Lcom/android/settings/password/PasswordRequirementAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PasswordRequirementAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mRequirements:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/password/PasswordRequirementAdapter;->setHasStableIds(Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 31
    check-cast p1, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/password/PasswordRequirementAdapter;->onBindViewHolder(Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;I)V
    .locals 1

    .line 63
    invoke-static {p1}, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;->access$000(Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/password/PasswordRequirementAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 42
    const v0, 0x7f0d00da    # @layout/password_requirement_item 'res/layout/password_requirement_item.xml'

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;

    invoke-direct {p2, p1}, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setRequirements([Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/password/PasswordRequirementAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method
