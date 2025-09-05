.class Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CustSimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field private mMyLocalClickListener:Landroid/view/View$OnClickListener;

.field radio:Landroid/widget/RadioButton;

.field summary:Landroid/widget/TextView;

.field final synthetic this$1:Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/RadioButton;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    new-instance p1, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder$1;

    invoke-direct {p1, p0}, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder$1;-><init>(Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;)V

    iput-object p1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->mMyLocalClickListener:Landroid/view/View$OnClickListener;

    .line 340
    iput-object p2, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 341
    iput-object p3, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 342
    iput-object p4, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 343
    iput-object p5, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 345
    iget-object p1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object p2, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->mMyLocalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object p1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object p2, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->mMyLocalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object p1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->mMyLocalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object p1, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    iget-object p2, p0, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter$ViewHolder;->mMyLocalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    return-void
.end method
