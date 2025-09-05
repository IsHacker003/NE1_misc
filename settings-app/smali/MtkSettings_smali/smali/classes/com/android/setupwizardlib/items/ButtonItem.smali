.class public Lcom/android/setupwizardlib/items/ButtonItem;
.super Lcom/android/setupwizardlib/items/AbstractItem;
.source "ButtonItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mEnabled:Z

.field private mListener:Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;

.field private mText:Ljava/lang/CharSequence;

.field private mTheme:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mEnabled:Z

    .line 43
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwButtonItem:I

    iput v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mEnabled:Z

    .line 43
    sget v1, Lcom/android/setupwizardlib/R$style;->SuwButtonItem:I

    iput v1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    .line 54
    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwButtonItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwButtonItem_android_enabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mEnabled:Z

    .line 56
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwButtonItem_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mText:Ljava/lang/CharSequence;

    .line 57
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwButtonItem_android_theme:I

    sget v0, Lcom/android/setupwizardlib/R$style;->SuwButtonItem:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void
.end method

.method private createButton(Landroid/content/Context;)Landroid/widget/Button;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 159
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/setupwizardlib/R$layout;->suw_button:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    return-object p1
.end method


# virtual methods
.method protected createButton(Landroid/view/ViewGroup;)Landroid/widget/Button;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 129
    iget v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 132
    move-object p1, v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ButtonItem;->createButton(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    .line 133
    iget-object p1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    goto :goto_0

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 138
    iget-object p1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 141
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 142
    iget-object p1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ButtonItem;->getViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setId(I)V

    .line 144
    iget-object p1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutResource()I
    .locals 1

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mEnabled:Z

    return v0
.end method

.method public final onBindView(Landroid/view/View;)V
    .locals 1

    .line 116
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot bind to ButtonItem\'s view"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mListener:Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mListener:Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;

    invoke-interface {p1, p0}, Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;->onClick(Lcom/android/setupwizardlib/items/ButtonItem;)V

    .line 152
    :cond_0
    return-void
.end method
