.class public Lcom/android/settings/widget/TwoStateButtonPreference;
.super Lcom/android/settings/applications/LayoutPreference;
.source "TwoStateButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mButtonOff:Landroid/widget/Button;

.field private final mButtonOn:Landroid/widget/Button;

.field private mIsChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 41
    const v0, 0x7f0401d6    # @attr/twoStateButtonPreferenceStyle

    const v1, 0x101008e    # @android:attr/preferenceStyle

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    if-nez p2, :cond_0

    .line 45
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    .line 46
    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    goto :goto_0

    .line 48
    :cond_0
    sget-object v0, Lcom/android/settings/R$styleable;->TwoStateButtonPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    const/4 p2, 0x1

    const v0, 0x7f120da7    # @string/summary_placeholder ' '

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    const p1, 0x7f0a0331    # @id/state_on_button

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    .line 59
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const p1, 0x7f0a0330    # @id/state_off_button

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    .line 62
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 63
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/widget/TwoStateButtonPreference;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->setChecked(Z)V

    .line 66
    :goto_0
    return-void
.end method


# virtual methods
.method public getStateOffButton()Landroid/widget/Button;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    return-object v0
.end method

.method public getStateOnButton()Landroid/widget/Button;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mIsChecked:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0331    # @id/state_on_button

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 71
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->setChecked(Z)V

    .line 72
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public setButtonEnabled(Z)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 77
    iput-boolean p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mIsChecked:Z

    .line 79
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    :goto_0
    return-void
.end method
