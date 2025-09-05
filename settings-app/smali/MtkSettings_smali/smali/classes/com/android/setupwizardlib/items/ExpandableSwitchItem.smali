.class public Lcom/android/setupwizardlib/items/ExpandableSwitchItem;
.super Lcom/android/setupwizardlib/items/SwitchItem;
.source "ExpandableSwitchItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCollapsedSummary:Ljava/lang/CharSequence;

.field private mExpandedSummary:Ljava/lang/CharSequence;

.field private mIsExpanded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/SwitchItem;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/SwitchItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    .line 58
    sget-object v0, Lcom/android/setupwizardlib/R$styleable;->SuwExpandableSwitchItem:[I

    .line 59
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwExpandableSwitchItem_suwCollapsedSummary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mCollapsedSummary:Ljava/lang/CharSequence;

    .line 61
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwExpandableSwitchItem_suwExpandedSummary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mExpandedSummary:Ljava/lang/CharSequence;

    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method private tintCompoundDrawables(Landroid/view/View;)V
    .locals 8

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010036    # @android:attr/textColorPrimary

    aput v3, v1, v2

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 157
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    if-eqz v1, :cond_3

    .line 160
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_items_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 161
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 162
    if-eqz v5, :cond_0

    .line 163
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 161
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_3

    .line 167
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 168
    if-eqz v3, :cond_2

    .line 169
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 167
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 175
    :cond_3
    return-void
.end method


# virtual methods
.method public getCollapsedSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mCollapsedSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getDefaultLayoutResource()I
    .locals 1

    .line 67
    sget v0, Lcom/android/setupwizardlib/R$layout;->suw_items_expandable_switch:I

    return v0
.end method

.method public getExpandedSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mExpandedSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->getExpandedSummary()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->getCollapsedSummary()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 132
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/items/SwitchItem;->onBindView(Landroid/view/View;)V

    .line 133
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_items_expandable_switch_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    instance-of v1, v0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;

    if-eqz v1, :cond_0

    .line 137
    check-cast v0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setChecked(Z)V

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->tintCompoundDrawables(Landroid/view/View;)V

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 145
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 149
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->isExpanded()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->setExpanded(Z)V

    .line 150
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    if-ne v0, p1, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    iput-boolean p1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->notifyItemChanged()V

    .line 91
    return-void
.end method
