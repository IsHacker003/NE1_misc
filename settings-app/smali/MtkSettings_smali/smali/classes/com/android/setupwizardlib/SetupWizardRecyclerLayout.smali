.class public Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;
.super Lcom/android/setupwizardlib/SetupWizardLayout;
.source "SetupWizardRecyclerLayout.java"


# instance fields
.field protected mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;II)V

    .line 52
    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {p1, p2, p3}, Lcom/android/setupwizardlib/template/RecyclerMixin;->parseAttributes(Landroid/util/AttributeSet;I)V

    .line 67
    const-class p1, Lcom/android/setupwizardlib/template/RecyclerMixin;

    iget-object p2, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 70
    const-class p1, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    .line 71
    new-instance p2, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;

    .line 72
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/support/v7/widget/RecyclerView;)V

    .line 71
    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    .line 104
    if-nez p1, :cond_0

    .line 105
    sget p1, Lcom/android/setupwizardlib/R$id;->suw_recycler_view:I

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public findManagedViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getHeader()Landroid/view/View;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    return-object v0

    .line 140
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getDividerInset()I

    move-result v0

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getDividerInsetEnd()I

    move-result v0

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getDividerInsetStart()I

    move-result v0

    return v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 0

    .line 112
    if-nez p2, :cond_0

    .line 113
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_recycler_template:I

    .line 115
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 77
    invoke-super/range {p0 .. p5}, Lcom/android/setupwizardlib/SetupWizardLayout;->onLayout(ZIIII)V

    .line 78
    iget-object p1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {p1}, Lcom/android/setupwizardlib/template/RecyclerMixin;->onLayout()V

    .line 79
    return-void
.end method

.method protected onTemplateInflated()V
    .locals 2

    .line 120
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 122
    new-instance v1, Lcom/android/setupwizardlib/template/RecyclerMixin;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v1, p0, v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    .line 127
    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SetupWizardRecyclerLayout should use a template with recycler view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 93
    return-void
.end method

.method public setDividerInset(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setDividerInset(I)V

    .line 149
    return-void
.end method
