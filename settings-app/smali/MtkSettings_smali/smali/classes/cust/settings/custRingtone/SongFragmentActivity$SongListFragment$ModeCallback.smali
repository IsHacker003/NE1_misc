.class Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;
.super Ljava/lang/Object;
.source "SongFragmentActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mDeselectedAll:Landroid/widget/TextView;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectedAll:Landroid/widget/TextView;

.field public myOnClickListner:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;

.field final synthetic this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;


# direct methods
.method private constructor <init>(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;Lcust/settings/custRingtone/SongFragmentActivity$1;)V
    .locals 0

    .line 444
    invoke-direct {p0, p1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;-><init>(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 490
    const-string p1, "Ringtone_SongListFragment"

    const-string p2, "onActionItemClicked"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 p1, 0x1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 452
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->myOnClickListner:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;

    if-nez p2, :cond_0

    .line 453
    new-instance p2, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;

    iget-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-direct {p2, v0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;-><init>(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;)V

    iput-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->myOnClickListner:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;

    .line 455
    :cond_0
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 456
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-virtual {p2}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d01f0    # @layout/zzz_sound_cust_ringtone_multi_select_actionbar 'res/layout/zzz_sound_cust_ringtone_multi_select_actionbar.xml'

    const/4 v2, 0x0

    .line 457
    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 458
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f0a02eb    # @id/select_all

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mSelectedAll:Landroid/widget/TextView;

    .line 459
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f0a010a    # @id/deselect_all

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mDeselectedAll:Landroid/widget/TextView;

    .line 460
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    iget-object v1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0a02ed    # @id/selected_count

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->access$502(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 461
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mSelectedAll:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 462
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mDeselectedAll:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 463
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mSelectedAll:Landroid/widget/TextView;

    iget-object v1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->myOnClickListner:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mDeselectedAll:Landroid/widget/TextView;

    iget-object v1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->myOnClickListner:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    :cond_1
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 467
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 495
    const-string p1, "Ringtone_SongListFragment"

    const-string v0, "onDestroyActionMode"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->access$400(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;Z)V

    .line 497
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    iput-boolean v0, p1, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->mMultiSelection:Z

    .line 498
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-virtual {p1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 499
    iget-object p1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-virtual {p1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->dispatchSetSelected(Z)V

    .line 500
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 471
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->myOnClickListner:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;

    if-nez p2, :cond_0

    .line 472
    new-instance p2, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;

    iget-object v0, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-direct {p2, v0}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;-><init>(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;)V

    iput-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->myOnClickListner:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;

    .line 474
    :cond_0
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 475
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-virtual {p2}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d01f0    # @layout/zzz_sound_cust_ringtone_multi_select_actionbar 'res/layout/zzz_sound_cust_ringtone_multi_select_actionbar.xml'

    const/4 v2, 0x0

    .line 476
    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 477
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f0a02eb    # @id/select_all

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mSelectedAll:Landroid/widget/TextView;

    .line 478
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f0a010a    # @id/deselect_all

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mDeselectedAll:Landroid/widget/TextView;

    .line 479
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->this$0:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    iget-object v1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0a02ed    # @id/selected_count

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;->access$502(Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 480
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mSelectedAll:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 481
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mDeselectedAll:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 482
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mSelectedAll:Landroid/widget/TextView;

    iget-object v1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->myOnClickListner:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mDeselectedAll:Landroid/widget/TextView;

    iget-object v1, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->myOnClickListner:Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$MyClickListner;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    :cond_1
    iget-object p2, p0, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 486
    return v0
.end method
