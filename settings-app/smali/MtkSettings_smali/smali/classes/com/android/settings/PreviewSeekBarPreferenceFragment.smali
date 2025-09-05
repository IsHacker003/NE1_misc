.class public abstract Lcom/android/settings/PreviewSeekBarPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PreviewSeekBarPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;
    }
.end annotation


# instance fields
.field protected mActivityLayoutResId:I

.field protected mCurrentIndex:I

.field protected mEntries:[Ljava/lang/String;

.field protected mInitialIndex:I

.field private mLabel:Landroid/widget/TextView;

.field private mLarger:Landroid/view/View;

.field private mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

.field private mPageIndicatorPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPreviewPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPreviewPager:Landroid/support/v4/view/ViewPager;

.field private mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

.field protected mPreviewSampleResIds:[I

.field private mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

.field private mSmaller:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 216
    new-instance v0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment$3;-><init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 234
    new-instance v0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment$4;-><init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPageIndicatorPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PreviewSeekBarPreferenceFragment;IZ)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->setPreviewLayer(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/PreviewPagerAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/widget/LabeledSeekBar;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/PreviewSeekBarPreferenceFragment;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->setPagerIndicatorContentDescription(I)V

    return-void
.end method

.method private setPagerIndicatorContentDescription(I)V
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/2addr p1, v3

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v2, v4

    iget-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewSampleResIds:[I

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 212
    const p1, 0x7f120a74    # @string/preview_page_indicator_content_description 'Preview, page %1$d of %2$d'

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method

.method private setPreviewLayer(IZ)V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->setPagerIndicatorContentDescription(I)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    iget v1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    iget-object v2, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    .line 205
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 204
    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/settings/PreviewPagerAdapter;->setPreviewLayer(IIIZ)V

    .line 207
    iput p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    .line 208
    return-void
.end method


# virtual methods
.method protected abstract commit()V
.end method

.method protected abstract createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 101
    const p3, 0x102003f    # @android:id/list_container

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 102
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 104
    iget v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mActivityLayoutResId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 105
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    const p3, 0x7f0a00e3    # @id/current_label

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mLabel:Landroid/widget/TextView;

    .line 112
    iget-object p3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length p3, p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 114
    const v2, 0x7f0a02e8    # @id/seek_bar

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/LabeledSeekBar;

    iput-object v2, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    .line 115
    iget-object v2, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    iget-object v3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/LabeledSeekBar;->setLabels([Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v2, p3}, Lcom/android/settings/widget/LabeledSeekBar;->setMax(I)V

    .line 118
    const p3, 0x7f0a031a    # @id/smaller

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    .line 119
    iget-object p3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    new-instance v2, Lcom/android/settings/PreviewSeekBarPreferenceFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment$1;-><init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const p3, 0x7f0a01e0    # @id/larger

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    .line 130
    iget-object p3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    new-instance v2, Lcom/android/settings/PreviewSeekBarPreferenceFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment$2;-><init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object p3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length p3, p3

    if-ne p3, v0, :cond_0

    .line 143
    iget-object p3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p3, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setEnabled(Z)V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 147
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 149
    move v3, v0

    goto :goto_0

    .line 148
    :cond_1
    nop

    .line 149
    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Landroid/content/res/Configuration;

    .line 150
    move v5, v1

    :goto_1
    iget-object v6, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 151
    invoke-virtual {p0, v2, v5}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v6

    aput-object v6, v4, v5

    .line 150
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 154
    :cond_2
    const v2, 0x7f0a0270    # @id/preview_pager

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    .line 155
    new-instance v2, Lcom/android/settings/PreviewPagerAdapter;

    iget-object v5, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewSampleResIds:[I

    invoke-direct {v2, p3, v3, v5, v4}, Lcom/android/settings/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    iput-object v2, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    .line 157
    iget-object p3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    invoke-virtual {p3, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 158
    iget-object p3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewSampleResIds:[I

    array-length v2, v2

    sub-int/2addr v2, v0

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-virtual {p3, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 159
    iget-object p3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p3, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 161
    const p3, 0x7f0a024f    # @id/page_indicator

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/DotsPageIndicator;

    iput-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    .line 162
    iget-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewSampleResIds:[I

    array-length p1, p1

    if-le p1, v0, :cond_4

    .line 163
    iget-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object p3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/DotsPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 164
    iget-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/DotsPageIndicator;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object p3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPageIndicatorPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/DotsPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_3

    .line 167
    :cond_4
    iget-object p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/DotsPageIndicator;->setVisibility(I)V

    .line 170
    :goto_3
    iget p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mInitialIndex:I

    invoke-direct {p0, p1, v1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->setPreviewLayer(IZ)V

    .line 171
    return-object p2
.end method

.method public onStart()V
    .locals 3

    .line 176
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 179
    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    iget v1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(I)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    new-instance v1, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;Lcom/android/settings/PreviewSeekBarPreferenceFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 181
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 185
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 186
    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 187
    return-void
.end method
