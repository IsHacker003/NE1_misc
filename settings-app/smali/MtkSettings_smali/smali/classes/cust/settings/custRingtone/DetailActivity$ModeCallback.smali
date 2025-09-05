.class Lcust/settings/custRingtone/DetailActivity$ModeCallback;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/custRingtone/DetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mDeselectedAll:Landroid/widget/TextView;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectedAll:Landroid/widget/TextView;

.field final synthetic this$0:Lcust/settings/custRingtone/DetailActivity;


# direct methods
.method private constructor <init>(Lcust/settings/custRingtone/DetailActivity;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcust/settings/custRingtone/DetailActivity;Lcust/settings/custRingtone/DetailActivity$1;)V
    .locals 0

    .line 418
    invoke-direct {p0, p1}, Lcust/settings/custRingtone/DetailActivity$ModeCallback;-><init>(Lcust/settings/custRingtone/DetailActivity;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 462
    const-string p1, "Ringtone_DetailActivity"

    const-string p2, "DetailActivity -  - onActionItemClicked"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 p1, 0x1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 424
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object p2, p2, Lcust/settings/custRingtone/DetailActivity;->myOnClickListner:Lcust/settings/custRingtone/DetailActivity$MyClickListner;

    if-nez p2, :cond_0

    .line 425
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    new-instance v0, Lcust/settings/custRingtone/DetailActivity$MyClickListner;

    iget-object v1, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-direct {v0, v1}, Lcust/settings/custRingtone/DetailActivity$MyClickListner;-><init>(Lcust/settings/custRingtone/DetailActivity;)V

    iput-object v0, p2, Lcust/settings/custRingtone/DetailActivity;->myOnClickListner:Lcust/settings/custRingtone/DetailActivity$MyClickListner;

    .line 427
    :cond_0
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 428
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-virtual {p2}, Lcust/settings/custRingtone/DetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d01f0    # @layout/zzz_sound_cust_ringtone_multi_select_actionbar 'res/layout/zzz_sound_cust_ringtone_multi_select_actionbar.xml'

    const/4 v2, 0x0

    .line 429
    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 430
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f0a02eb    # @id/select_all

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mSelectedAll:Landroid/widget/TextView;

    .line 431
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f0a010a    # @id/deselect_all

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mDeselectedAll:Landroid/widget/TextView;

    .line 432
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object v1, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0a02ed    # @id/selected_count

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcust/settings/custRingtone/DetailActivity;->access$502(Lcust/settings/custRingtone/DetailActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 433
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mSelectedAll:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 434
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mDeselectedAll:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 435
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mSelectedAll:Landroid/widget/TextView;

    iget-object v1, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object v1, v1, Lcust/settings/custRingtone/DetailActivity;->myOnClickListner:Lcust/settings/custRingtone/DetailActivity$MyClickListner;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mDeselectedAll:Landroid/widget/TextView;

    iget-object v1, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object v1, v1, Lcust/settings/custRingtone/DetailActivity;->myOnClickListner:Lcust/settings/custRingtone/DetailActivity$MyClickListner;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    :cond_1
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 439
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 467
    const-string p1, "Ringtone_DetailActivity"

    const-string v0, "DetailActivity -  - onDestroyActionMode"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcust/settings/custRingtone/DetailActivity;->access$400(Lcust/settings/custRingtone/DetailActivity;Z)V

    .line 470
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iput-boolean v0, p1, Lcust/settings/custRingtone/DetailActivity;->mMultiSelection:Z

    .line 471
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-virtual {p1}, Lcust/settings/custRingtone/DetailActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 472
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-virtual {p1}, Lcust/settings/custRingtone/DetailActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->dispatchSetSelected(Z)V

    .line 473
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 443
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object p2, p2, Lcust/settings/custRingtone/DetailActivity;->myOnClickListner:Lcust/settings/custRingtone/DetailActivity$MyClickListner;

    if-nez p2, :cond_0

    .line 444
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    new-instance v0, Lcust/settings/custRingtone/DetailActivity$MyClickListner;

    iget-object v1, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-direct {v0, v1}, Lcust/settings/custRingtone/DetailActivity$MyClickListner;-><init>(Lcust/settings/custRingtone/DetailActivity;)V

    iput-object v0, p2, Lcust/settings/custRingtone/DetailActivity;->myOnClickListner:Lcust/settings/custRingtone/DetailActivity$MyClickListner;

    .line 446
    :cond_0
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 447
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-virtual {p2}, Lcust/settings/custRingtone/DetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d01f0    # @layout/zzz_sound_cust_ringtone_multi_select_actionbar 'res/layout/zzz_sound_cust_ringtone_multi_select_actionbar.xml'

    const/4 v2, 0x0

    .line 448
    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 449
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f0a02eb    # @id/select_all

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mSelectedAll:Landroid/widget/TextView;

    .line 450
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f0a010a    # @id/deselect_all

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mDeselectedAll:Landroid/widget/TextView;

    .line 451
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object v1, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0a02ed    # @id/selected_count

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcust/settings/custRingtone/DetailActivity;->access$502(Lcust/settings/custRingtone/DetailActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 452
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mSelectedAll:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 453
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mDeselectedAll:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 454
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mSelectedAll:Landroid/widget/TextView;

    iget-object v1, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object v1, v1, Lcust/settings/custRingtone/DetailActivity;->myOnClickListner:Lcust/settings/custRingtone/DetailActivity$MyClickListner;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mDeselectedAll:Landroid/widget/TextView;

    iget-object v1, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object v1, v1, Lcust/settings/custRingtone/DetailActivity;->myOnClickListner:Lcust/settings/custRingtone/DetailActivity$MyClickListner;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    :cond_1
    iget-object p2, p0, Lcust/settings/custRingtone/DetailActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 458
    return v0
.end method
