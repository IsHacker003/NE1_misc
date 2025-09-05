.class public Lcom/android/setupwizardlib/template/IconMixin;
.super Ljava/lang/Object;
.source "IconMixin.java"

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
    iput-object p1, p0, Lcom/android/setupwizardlib/template/IconMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    .line 44
    invoke-virtual {p1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 46
    sget-object v0, Lcom/android/setupwizardlib/R$styleable;->SuwIconMixin:[I

    .line 47
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwIconMixin_android_icon:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 50
    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/template/IconMixin;->setIcon(I)V

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getView()Landroid/widget/ImageView;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/setupwizardlib/template/IconMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_icon:I

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public setIcon(I)V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    :cond_1
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    :cond_1
    return-void
.end method
