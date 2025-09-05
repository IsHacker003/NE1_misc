.class public Lcom/android/setupwizardlib/template/ColoredHeaderMixin;
.super Lcom/android/setupwizardlib/template/HeaderMixin;
.source "ColoredHeaderMixin.java"


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/template/HeaderMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-virtual {p1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/setupwizardlib/R$styleable;->SuwColoredHeaderMixin:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 44
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwColoredHeaderMixin_suwHeaderColor:I

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 46
    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;->setColor(Landroid/content/res/ColorStateList;)V

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method


# virtual methods
.method public getColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 64
    :cond_0
    return-void
.end method
