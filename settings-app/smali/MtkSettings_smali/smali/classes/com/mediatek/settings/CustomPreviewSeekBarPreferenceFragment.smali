.class public abstract Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CustomPreviewSeekBarPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;
    }
.end annotation


# instance fields
.field protected mActivityLayoutResId:I

.field protected mCurrentIndex:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mDontShowAgain:Landroid/widget/CheckBox;

.field protected mEntries:[Ljava/lang/String;

.field protected mInitialIndex:I

.field private mLabel:Landroid/widget/TextView;

.field private mLarger:Landroid/view/View;

.field private mOldProgress:I

.field private mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

.field private mPageIndicatorPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPreviewPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPreviewPager:Landroid/support/v4/view/ViewPager;

.field private mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

.field protected mPreviewSampleResIds:[I

.field private mResponse:Z

.field private mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

.field private mSmaller:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 95
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mOldProgress:I

    .line 390
    new-instance v0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$3;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$3;-><init>(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 408
    new-instance v0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$4;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$4;-><init>(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPageIndicatorPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)Landroid/content/Context;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;IZ)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->setPreviewLayer(IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->setPagerIndicatorContentDescription(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)Landroid/widget/CheckBox;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mDontShowAgain:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$202(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mDontShowAgain:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$302(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mResponse:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mOldProgress:I

    return p0
.end method

.method static synthetic access$502(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mOldProgress:I

    return p1
.end method

.method static synthetic access$702(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)Lcom/android/settings/PreviewPagerAdapter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)Lcom/android/settings/widget/LabeledSeekBar;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    return-object p0
.end method

.method private setPagerIndicatorContentDescription(I)V
    .locals 5

    .line 385
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    .line 386
    invoke-virtual {p0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/2addr p1, v3

    .line 387
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v2, v4

    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewSampleResIds:[I

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 386
    const p1, 0x7f120a74    # @string/preview_page_indicator_content_description 'Preview, page %1$d of %2$d'

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 385
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 388
    return-void
.end method

.method private setPreviewLayer(IZ)V
    .locals 4

    .line 373
    const-string v0, "CustomPreviewSeekBarPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewLayer mCurrentIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "newIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 376
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    iget-object v3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->setPagerIndicatorContentDescription(I)V

    .line 378
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    iget v1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    iget-object v2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    .line 379
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 378
    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/settings/PreviewPagerAdapter;->setPreviewLayer(IIIZ)V

    .line 381
    iput p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    .line 382
    return-void
.end method


# virtual methods
.method protected abstract commit()V
.end method

.method protected abstract createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 272
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 273
    nop

    .line 274
    const p3, 0x102003f    # @android:id/list_container

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 275
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 277
    iget v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mActivityLayoutResId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 278
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 280
    const p3, 0x7f0a00e3    # @id/current_label

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mLabel:Landroid/widget/TextView;

    .line 285
    iget-object p3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length p3, p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 287
    const v2, 0x7f0a02e8    # @id/seek_bar

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/LabeledSeekBar;

    iput-object v2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    .line 288
    iget-object v2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    iget-object v3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/LabeledSeekBar;->setLabels([Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v2, p3}, Lcom/android/settings/widget/LabeledSeekBar;->setMax(I)V

    .line 291
    const p3, 0x7f0a031a    # @id/smaller

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    .line 292
    iget-object p3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    new-instance v2, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$1;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$1;-><init>(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    const p3, 0x7f0a01e0    # @id/larger

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    .line 303
    iget-object p3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    new-instance v2, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$2;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$2;-><init>(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object p3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length p3, p3

    if-ne p3, v0, :cond_0

    .line 316
    iget-object p3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p3, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setEnabled(Z)V

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 320
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 321
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 322
    move v3, v0

    goto :goto_0

    .line 321
    :cond_1
    nop

    .line 322
    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Landroid/content/res/Configuration;

    .line 323
    move v5, v1

    :goto_1
    iget-object v6, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 324
    invoke-virtual {p0, v2, v5}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v6

    aput-object v6, v4, v5

    .line 323
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 327
    :cond_2
    const v2, 0x7f0a0270    # @id/preview_pager

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    .line 328
    new-instance v2, Lcom/android/settings/PreviewPagerAdapter;

    iget-object v5, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewSampleResIds:[I

    invoke-direct {v2, p3, v3, v5, v4}, Lcom/android/settings/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    iput-object v2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    .line 330
    iget-object p3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    invoke-virtual {p3, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 331
    iget-object p3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewSampleResIds:[I

    array-length v2, v2

    sub-int/2addr v2, v0

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-virtual {p3, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 332
    iget-object p3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p3, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 334
    const p3, 0x7f0a024f    # @id/page_indicator

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/DotsPageIndicator;

    iput-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    .line 335
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewSampleResIds:[I

    array-length p1, p1

    if-le p1, v0, :cond_4

    .line 336
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object p3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/DotsPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 337
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/DotsPageIndicator;->setVisibility(I)V

    .line 338
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object p3, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPageIndicatorPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/DotsPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_3

    .line 340
    :cond_4
    iget-object p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/DotsPageIndicator;->setVisibility(I)V

    .line 343
    :goto_3
    iget p1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mInitialIndex:I

    invoke-direct {p0, p1, v1}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->setPreviewLayer(IZ)V

    .line 344
    return-object p2
.end method

.method public onStart()V
    .locals 3

    .line 349
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 352
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    iget v1, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(I)V

    .line 353
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    new-instance v1, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 354
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 358
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 359
    iget-object v0, p0, Lcom/mediatek/settings/CustomPreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 360
    return-void
.end method
