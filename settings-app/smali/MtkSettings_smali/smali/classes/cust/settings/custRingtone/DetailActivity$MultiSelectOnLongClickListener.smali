.class Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/custRingtone/DetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectOnLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/custRingtone/DetailActivity;


# direct methods
.method private constructor <init>(Lcust/settings/custRingtone/DetailActivity;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcust/settings/custRingtone/DetailActivity;Lcust/settings/custRingtone/DetailActivity$1;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;-><init>(Lcust/settings/custRingtone/DetailActivity;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 216
    const-string p1, "Ringtone_DetailActivity"

    const-string p2, "MultiSelectOnLongClickListener - onItemLongClick ++"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-boolean p1, p1, Lcust/settings/custRingtone/DetailActivity;->mMultiSelection:Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 219
    return p2

    .line 222
    :cond_0
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iput-boolean p2, p1, Lcust/settings/custRingtone/DetailActivity;->mMultiSelection:Z

    .line 223
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-virtual {p1}, Lcust/settings/custRingtone/DetailActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 225
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-virtual {p1}, Lcust/settings/custRingtone/DetailActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 226
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-virtual {p1, p4, p5}, Lcust/settings/custRingtone/DetailActivity;->setSelectedState(J)V

    .line 228
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object p3, p0, Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object p4, p0, Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object p4, p4, Lcust/settings/custRingtone/DetailActivity;->mModeCallBack:Lcust/settings/custRingtone/DetailActivity$ModeCallback;

    invoke-virtual {p3, p4}, Lcust/settings/custRingtone/DetailActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p3

    iput-object p3, p1, Lcust/settings/custRingtone/DetailActivity;->mActionMode:Landroid/view/ActionMode;

    .line 229
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/DetailActivity;

    invoke-static {p1}, Lcust/settings/custRingtone/DetailActivity;->access$200(Lcust/settings/custRingtone/DetailActivity;)V

    .line 230
    iget-object p1, p0, Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object p3, p0, Lcust/settings/custRingtone/DetailActivity$MultiSelectOnLongClickListener;->this$0:Lcust/settings/custRingtone/DetailActivity;

    iget-object p3, p3, Lcust/settings/custRingtone/DetailActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-static {p1, p3}, Lcust/settings/custRingtone/DetailActivity;->access$300(Lcust/settings/custRingtone/DetailActivity;Landroid/view/ActionMode;)V

    .line 231
    const-string p1, "Ringtone_DetailActivity"

    const-string p3, "MultiSelectOnLongClickListener - onItemLongClick --"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return p2
.end method
