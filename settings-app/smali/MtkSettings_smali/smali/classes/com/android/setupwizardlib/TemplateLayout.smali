.class public Lcom/android/setupwizardlib/TemplateLayout;
.super Landroid/widget/FrameLayout;
.source "TemplateLayout.java"


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mMixins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/setupwizardlib/template/Mixin;",
            ">;",
            "Lcom/android/setupwizardlib/template/Mixin;",
            ">;"
        }
    .end annotation
.end field

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mXFraction:F


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/TemplateLayout;->mMixins:Ljava/util/Map;

    .line 57
    sget p1, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->init(IILandroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/TemplateLayout;->mMixins:Ljava/util/Map;

    .line 62
    sget p1, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p2, p1}, Lcom/android/setupwizardlib/TemplateLayout;->init(IILandroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/TemplateLayout;->mMixins:Ljava/util/Map;

    .line 68
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;->init(IILandroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/setupwizardlib/TemplateLayout;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/setupwizardlib/TemplateLayout;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/setupwizardlib/TemplateLayout;)F
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/setupwizardlib/TemplateLayout;->mXFraction:F

    return p0
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/android/setupwizardlib/TemplateLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    invoke-super {p0, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 136
    return-void
.end method

.method private inflateTemplate(II)V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 140
    invoke-virtual {p0, v0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->addViewInternal(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/TemplateLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/setupwizardlib/TemplateLayout;->mContainer:Landroid/view/ViewGroup;

    .line 144
    iget-object p1, p0, Lcom/android/setupwizardlib/TemplateLayout;->mContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/setupwizardlib/TemplateLayout;->onTemplateInflated()V

    .line 148
    return-void

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Container cannot be null in TemplateLayout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private init(IILandroid/util/AttributeSet;I)V
    .locals 3

    .line 74
    invoke-virtual {p0}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwTemplateLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v1, p4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 76
    if-nez p1, :cond_0

    .line 77
    sget p1, Lcom/android/setupwizardlib/R$styleable;->SuwTemplateLayout_android_layout:I

    invoke-virtual {p3, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 79
    :cond_0
    if-nez p2, :cond_1

    .line 80
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwTemplateLayout_suwContainer:I

    invoke-virtual {p3, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 82
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/TemplateLayout;->inflateTemplate(II)V

    .line 84
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/setupwizardlib/TemplateLayout;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-void
.end method

.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    .line 195
    if-nez p1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/setupwizardlib/TemplateLayout;->getContainerId()I

    move-result p1

    .line 199
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method public findManagedViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getContainerId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/android/setupwizardlib/template/Mixin;",
            ">(",
            "Ljava/lang/Class<",
            "TM;>;)TM;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/setupwizardlib/TemplateLayout;->mMixins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/setupwizardlib/template/Mixin;

    return-object p1
.end method

.method public getXFraction()F
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 272
    iget v0, p0, Lcom/android/setupwizardlib/TemplateLayout;->mXFraction:F

    return v0
.end method

.method protected final inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;
    .locals 1

    .line 184
    if-eqz p3, :cond_1

    .line 187
    if-eqz p2, :cond_0

    .line 188
    new-instance v0, Lcom/android/setupwizardlib/util/FallbackThemeWrapper;

    .line 189
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/android/setupwizardlib/util/FallbackThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 188
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 191
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 185
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "android:layout not specified for TemplateLayout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/setupwizardlib/TemplateLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onTemplateInflated()V
    .locals 0

    .line 210
    return-void
.end method

.method protected registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/android/setupwizardlib/template/Mixin;",
            ">(",
            "Ljava/lang/Class<",
            "TM;>;TM;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/setupwizardlib/TemplateLayout;->mMixins:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public setXFraction(F)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 240
    iput p1, p0, Lcom/android/setupwizardlib/TemplateLayout;->mXFraction:F

    .line 241
    invoke-virtual {p0}, Lcom/android/setupwizardlib/TemplateLayout;->getWidth()I

    move-result v0

    .line 242
    if-eqz v0, :cond_0

    .line 243
    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->setTranslationX(F)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/android/setupwizardlib/TemplateLayout;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez p1, :cond_1

    .line 250
    new-instance p1, Lcom/android/setupwizardlib/TemplateLayout$1;

    invoke-direct {p1, p0}, Lcom/android/setupwizardlib/TemplateLayout$1;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    iput-object p1, p0, Lcom/android/setupwizardlib/TemplateLayout;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 258
    invoke-virtual {p0}, Lcom/android/setupwizardlib/TemplateLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/setupwizardlib/TemplateLayout;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 261
    :cond_1
    :goto_0
    return-void
.end method
