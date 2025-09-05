.class public Lcom/android/setupwizardlib/template/HeaderMixin;
.super Ljava/lang/Object;
.source "HeaderMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/setupwizardlib/template/HeaderMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    .line 45
    invoke-virtual {p1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/setupwizardlib/R$styleable;->SuwHeaderMixin:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwHeaderMixin_suwHeaderText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 50
    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/template/HeaderMixin;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/setupwizardlib/template/HeaderMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_title:I

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public setText(I)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    return-void
.end method
