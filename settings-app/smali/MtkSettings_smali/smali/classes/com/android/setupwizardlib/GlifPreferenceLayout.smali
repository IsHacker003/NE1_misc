.class public Lcom/android/setupwizardlib/GlifPreferenceLayout;
.super Lcom/android/setupwizardlib/GlifRecyclerLayout;
.source "GlifPreferenceLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/GlifRecyclerLayout;-><init>(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifRecyclerLayout;-><init>(Landroid/content/Context;II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/GlifRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    .line 86
    if-nez p1, :cond_0

    .line 87
    sget p1, Lcom/android/setupwizardlib/R$id;->suw_layout_content:I

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/android/setupwizardlib/GlifPreferenceLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {p1}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 0

    .line 102
    if-nez p2, :cond_0

    .line 103
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_glif_preference_template:I

    .line 105
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onTemplateInflated()V
    .locals 3

    .line 112
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 113
    sget v1, Lcom/android/setupwizardlib/R$layout;->suw_glif_preference_recycler_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 115
    new-instance v1, Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-direct {v1, p0, v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/android/setupwizardlib/GlifPreferenceLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    .line 116
    return-void
.end method
