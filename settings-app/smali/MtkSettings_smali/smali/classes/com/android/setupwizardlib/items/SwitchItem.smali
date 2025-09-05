.class public Lcom/android/setupwizardlib/items/SwitchItem;
.super Lcom/android/setupwizardlib/items/Item;
.source "SwitchItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/Item;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    .line 67
    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwSwitchItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwSwitchItem_android_checked:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void
.end method


# virtual methods
.method protected getDefaultLayoutResource()I
    .locals 1

    .line 94
    sget v0, Lcom/android/setupwizardlib/R$layout;->suw_items_switch:I

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/items/Item;->onBindView(Landroid/view/View;)V

    .line 111
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_items_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SwitchCompat;

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 114
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/SwitchItem;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 116
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 128
    iput-boolean p2, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    .line 129
    iget-object p1, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;

    invoke-interface {p1, p0, p2}, Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;->onCheckedChange(Lcom/android/setupwizardlib/items/SwitchItem;Z)V

    .line 132
    :cond_0
    return-void
.end method
