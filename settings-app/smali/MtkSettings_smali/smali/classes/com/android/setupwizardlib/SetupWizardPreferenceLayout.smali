.class public Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;
.super Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;
.source "SetupWizardPreferenceLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    .line 84
    if-nez p1, :cond_0

    .line 85
    sget p1, Lcom/android/setupwizardlib/R$id;->suw_layout_content:I

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 0

    .line 100
    if-nez p2, :cond_0

    .line 101
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_preference_template:I

    .line 103
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onTemplateInflated()V
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 111
    sget v1, Lcom/android/setupwizardlib/R$layout;->suw_preference_recycler_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 113
    new-instance v1, Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-direct {v1, p0, v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    .line 114
    return-void
.end method
