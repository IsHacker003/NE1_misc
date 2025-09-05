.class Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildAdapter"
.end annotation


# instance fields
.field private final EMPTY_STATE_SET:[I

.field private final GROUP_EXPANDED_STATE_SET:[I

.field private final HIDE_CONTAINER_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private final HIDE_LIST_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private final SHOW_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private mContainerView:Landroid/widget/LinearLayout;

.field private final mGroupPosition:I

.field private mHeaderView:Landroid/view/ViewGroup;

.field private mIndicatorView:Landroid/widget/ImageView;

.field private mIsListExpanded:Z

.field private mListView:Landroid/widget/ListView;

.field private final mObserver:Landroid/database/DataSetObserver;

.field private final mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;I)V
    .locals 5

    .line 552
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 517
    const/4 p1, 0x1

    new-array v0, p1, [I

    const/4 v1, 0x0

    const v2, 0x10100a8    # @android:attr/state_expanded

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->GROUP_EXPANDED_STATE_SET:[I

    .line 518
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->EMPTY_STATE_SET:[I

    .line 519
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->HIDE_CONTAINER_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 521
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->HIDE_LIST_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 523
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->SHOW_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 533
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter$1;-><init>(Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 546
    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    .line 553
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    .line 554
    iput p3, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    .line 555
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 556
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;ILcom/android/settings/TrustedCredentialsSettings$1;)V
    .locals 0

    .line 515
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;I)V

    return-void
.end method

.method static synthetic access$2101(Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;)V
    .locals 0

    .line 515
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$2201(Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;)V
    .locals 0

    .line 515
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method private checkGroupExpandableAndStartWarningActivity()Z
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(I)Z

    move-result v0

    return v0
.end method

.method private getGroupIndicator()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 645
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x101006f    # @android:attr/expandableListViewStyle

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 648
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 650
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 651
    return-object v1
.end method

.method private refreshViews()V
    .locals 3

    .line 635
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIndicatorView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->GROUP_EXPANDED_STATE_SET:[I

    goto :goto_0

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->EMPTY_STATE_SET:[I

    :goto_0
    const/4 v2, 0x0

    .line 635
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 637
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->SHOW_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    .line 638
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->HIDE_LIST_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 637
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->SHOW_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_2

    .line 640
    :cond_2
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->HIDE_CONTAINER_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 639
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChildrenCount(I)I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 515
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->getItem(I)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 568
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    const/4 v3, 0x0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->notifyDataSetChanged()V

    .line 575
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->notifyDataSetInvalidated()V

    .line 580
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 585
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->checkGroupExpandableAndStartWarningActivity()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    .line 586
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->refreshViews()V

    .line 587
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 591
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p0, p3}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->getItem(I)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/TrustedCredentialsSettings;->access$1000(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 592
    return-void
.end method

.method public setContainerView(Landroid/widget/LinearLayout;)V
    .locals 4

    .line 595
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    .line 597
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00ad    # @id/cert_list

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    .line 598
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 599
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 600
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 602
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0186    # @id/header_view

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    .line 603
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    const v1, 0x7f0a017a    # @id/group_indicator

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIndicatorView:Landroid/widget/ImageView;

    .line 606
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIndicatorView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->getGroupIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 608
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    .line 609
    const v1, 0x7f0a0184    # @id/header_content_container

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 610
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget v2, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    .line 611
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 610
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 613
    return-void
.end method

.method public setExpandIfAvailable(Z)V
    .locals 2

    .line 625
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    .line 627
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->refreshViews()V

    .line 628
    return-void
.end method

.method public showDivider(Z)V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0185    # @id/header_divider

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 621
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 622
    return-void
.end method

.method public showHeader(Z)V
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 617
    return-void
.end method
