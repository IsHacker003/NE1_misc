.class public Lcom/android/settings/graph/UsageView;
.super Landroid/widget/FrameLayout;
.source "UsageView.java"


# instance fields
.field private final mBottomLabels:[Landroid/widget/TextView;

.field private final mLabels:[Landroid/widget/TextView;

.field private final mUsageGraph:Lcom/android/settings/graph/UsageGraph;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01be    # @layout/usage_view 'res/layout/usage_view.xml'

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    const v0, 0x7f0a03b3    # @id/usage_graph

    invoke-virtual {p0, v0}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/graph/UsageGraph;

    iput-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    .line 39
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/widget/TextView;

    .line 40
    const v2, 0x7f0a01da    # @id/label_bottom

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 41
    const v2, 0x7f0a01dd    # @id/label_middle

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 42
    const v2, 0x7f0a01df    # @id/label_top

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/settings/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    .line 44
    new-array v1, v5, [Landroid/widget/TextView;

    .line 45
    const v2, 0x7f0a01de    # @id/label_start

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v3

    .line 46
    const v2, 0x7f0a01db    # @id/label_end

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/settings/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    .line 48
    sget-object v1, Lcom/android/settingslib/R$styleable;->UsageView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/graph/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 53
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 55
    :cond_1
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 57
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    .line 58
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v1, v0

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v5, v0, v2

    .line 61
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 65
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 66
    const v0, 0x800005

    if-ne p2, v0, :cond_4

    .line 67
    const p2, 0x7f0a0177    # @id/graph_label_group

    invoke-virtual {p0, p2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 68
    const v1, 0x7f0a01dc    # @id/label_group

    invoke-virtual {p0, v1}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 70
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 71
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 75
    const p2, 0x7f0a0077    # @id/bottom_label_group

    invoke-virtual {p0, p2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 76
    const v0, 0x7f0a0078    # @id/bottom_label_space

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 78
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    goto :goto_2

    :cond_4
    const v0, 0x800003

    if-ne p2, v0, :cond_5

    goto :goto_2

    .line 80
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported gravity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/graph/UsageGraph;->setAccentColor(I)V

    .line 84
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-void
.end method

.method private setWeight(IF)V
    .locals 1

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 123
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-void
.end method


# virtual methods
.method public addPath(Landroid/util/SparseIntArray;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1}, Lcom/android/settings/graph/UsageGraph;->addPath(Landroid/util/SparseIntArray;)V

    .line 93
    return-void
.end method

.method public addProjectedPath(Landroid/util/SparseIntArray;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1}, Lcom/android/settings/graph/UsageGraph;->addProjectedPath(Landroid/util/SparseIntArray;)V

    .line 97
    return-void
.end method

.method public clearPaths()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0}, Lcom/android/settings/graph/UsageGraph;->clearPaths()V

    .line 89
    return-void
.end method

.method public configureGraph(II)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/graph/UsageGraph;->setMax(II)V

    .line 101
    return-void
.end method

.method public setAccentColor(I)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1}, Lcom/android/settings/graph/UsageGraph;->setAccentColor(I)V

    .line 105
    return-void
.end method

.method public setBottomLabels([Ljava/lang/CharSequence;)V
    .locals 3

    .line 137
    array-length v0, p1

    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 140
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void

    .line 138
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid number of labels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerColors(II)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/graph/UsageGraph;->setDividerColors(II)V

    .line 113
    return-void
.end method

.method public setDividerLoc(I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1}, Lcom/android/settings/graph/UsageGraph;->setDividerLoc(I)V

    .line 109
    return-void
.end method

.method public setSideLabelWeights(FF)V
    .locals 1

    .line 116
    const v0, 0x7f0a0323    # @id/space1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/graph/UsageView;->setWeight(IF)V

    .line 117
    const p1, 0x7f0a0324    # @id/space2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/graph/UsageView;->setWeight(IF)V

    .line 118
    return-void
.end method

.method public setSideLabels([Ljava/lang/CharSequence;)V
    .locals 3

    .line 128
    array-length v0, p1

    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 131
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-void

    .line 129
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid number of labels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
