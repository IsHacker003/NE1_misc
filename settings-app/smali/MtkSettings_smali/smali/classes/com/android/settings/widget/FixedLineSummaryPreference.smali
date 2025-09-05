.class public Lcom/android/settings/widget/FixedLineSummaryPreference;
.super Landroid/support/v7/preference/Preference;
.source "FixedLineSummaryPreference.java"


# instance fields
.field private mSummaryLineCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object v0, Lcom/android/settings/R$styleable;->FixedLineSummaryPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/FixedLineSummaryPreference;->mSummaryLineCount:I

    goto :goto_0

    .line 41
    :cond_0
    iput v0, p0, Lcom/android/settings/widget/FixedLineSummaryPreference;->mSummaryLineCount:I

    .line 43
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 53
    const v0, 0x1020010    # @android:id/summary

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget v0, p0, Lcom/android/settings/widget/FixedLineSummaryPreference;->mSummaryLineCount:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMinLines(I)V

    .line 56
    iget v0, p0, Lcom/android/settings/widget/FixedLineSummaryPreference;->mSummaryLineCount:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 57
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 59
    :cond_0
    return-void
.end method
