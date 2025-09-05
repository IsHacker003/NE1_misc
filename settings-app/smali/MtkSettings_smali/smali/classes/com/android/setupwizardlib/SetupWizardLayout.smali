.class public Lcom/android/setupwizardlib/SetupWizardLayout;
.super Lcom/android/setupwizardlib/TemplateLayout;
.source "SetupWizardLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 56
    sget p1, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 65
    sget p1, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    sget p1, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    invoke-direct {p0, p2, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method private getIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/R$bool;->suwUseTabletLayout:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 338
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 339
    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 340
    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 342
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 344
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v3, 0x33

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 346
    :cond_1
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    aput-object p1, v3, v2

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 348
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_2

    .line 349
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->setAutoMirrored(Z)V

    .line 351
    :cond_2
    return-object v0

    .line 354
    :cond_3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_4

    .line 355
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 357
    :cond_4
    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 82
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    new-instance v1, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/setupwizardlib/template/HeaderMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 83
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    new-instance v1, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 84
    const-class v0, Lcom/android/setupwizardlib/template/NavigationBarMixin;

    new-instance v1, Lcom/android/setupwizardlib/template/NavigationBarMixin;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/template/NavigationBarMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 85
    new-instance v0, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    .line 86
    const-class v1, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-virtual {p0, v1, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    new-instance v2, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;

    invoke-direct {v2, v0, v1}, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v2}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 98
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwBackground:I

    .line 99
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 100
    if-eqz p2, :cond_1

    .line 101
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 103
    :cond_1
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwBackgroundTile:I

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 105
    if-eqz p2, :cond_2

    .line 106
    invoke-direct {p0, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setBackgroundTile(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_2
    :goto_0
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwIllustration:I

    .line 112
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 113
    if-eqz p2, :cond_3

    .line 114
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 116
    :cond_3
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwIllustrationImage:I

    .line 117
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 118
    sget v0, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwIllustrationHorizontalTile:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 121
    invoke-direct {p0, p2, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_4
    :goto_1
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwDecorPaddingTop:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 128
    if-ne p2, v0, :cond_5

    .line 129
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/setupwizardlib/R$dimen;->suw_decor_padding_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 131
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setDecorPaddingTop(I)V

    .line 136
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwIllustrationAspectRatio:I

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 138
    cmpl-float v0, p2, v0

    if-nez v0, :cond_6

    .line 139
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 140
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/R$dimen;->suw_illustration_aspect_ratio:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 141
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    .line 143
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustrationAspectRatio(F)V

    .line 145
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    return-void
.end method

.method private setBackgroundTile(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 320
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 321
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 323
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    .line 324
    return-void
.end method

.method private setIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 256
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 257
    instance-of v1, v0, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v1, :cond_0

    .line 258
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->getIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 260
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    .line 180
    if-nez p1, :cond_0

    .line 181
    sget p1, Lcom/android/setupwizardlib/R$id;->suw_layout_content:I

    .line 183
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .line 214
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .line 218
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;
    .locals 1

    .line 187
    const-class v0, Lcom/android/setupwizardlib/template/NavigationBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/NavigationBarMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/NavigationBarMixin;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    return-object v0
.end method

.method public getProgressBarColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 395
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 2

    .line 191
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_bottom_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 192
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ScrollView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isProgressBarShown()Z
    .locals 1

    .line 362
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->isShown()Z

    move-result v0

    return v0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    .line 172
    if-nez p2, :cond_0

    .line 173
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_template:I

    .line 175
    :cond_0
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeMaterial_Light:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 158
    instance-of v0, p1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    if-nez v0, :cond_0

    .line 159
    const-string v0, "SetupWizardLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring restore instance state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 161
    return-void

    .line 164
    :cond_0
    check-cast p1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    .line 165
    invoke-virtual {p1}, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 166
    iget-boolean p1, p1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->mIsProgressBarShown:Z

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setProgressBarShown(Z)V

    .line 168
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 150
    invoke-super {p0}, Lcom/android/setupwizardlib/TemplateLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->isProgressBarShown()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->mIsProgressBarShown:Z

    .line 153
    return-object v1
.end method

.method public setBackgroundTile(I)V
    .locals 1

    .line 314
    nop

    .line 315
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 316
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setBackgroundTile(Landroid/graphics/drawable/Drawable;)V

    .line 317
    return-void
.end method

.method public setDecorPaddingTop(I)V
    .locals 4

    .line 290
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 292
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 295
    :cond_0
    return-void
.end method

.method public setHeaderText(I)V
    .locals 1

    .line 206
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/HeaderMixin;->setText(I)V

    .line 207
    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 210
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/HeaderMixin;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method

.method public setIllustration(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 230
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 231
    instance-of v1, v0, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v1, :cond_0

    .line 232
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 233
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    .line 235
    :cond_0
    return-void
.end method

.method public setIllustrationAspectRatio(F)V
    .locals 2

    .line 272
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 273
    instance-of v1, v0, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v1, :cond_0

    .line 274
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 275
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/view/Illustration;->setAspectRatio(F)V

    .line 277
    :cond_0
    return-void
.end method

.method public setLayoutBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 302
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :cond_0
    return-void
.end method

.method public setProgressBarColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 391
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    .line 392
    return-void
.end method

.method public setProgressBarShown(Z)V
    .locals 1

    .line 371
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setShown(Z)V

    .line 372
    return-void
.end method
