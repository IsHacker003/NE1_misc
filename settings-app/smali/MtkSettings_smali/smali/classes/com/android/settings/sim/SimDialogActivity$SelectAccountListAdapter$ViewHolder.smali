.class Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;
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

.field final synthetic this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/RadioButton;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    new-instance p1, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;

    invoke-direct {p1, p0}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder$1;-><init>(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;)V

    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->mMyLocalClickListener:Landroid/view/View$OnClickListener;

    .line 640
    iput-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 641
    iput-object p3, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 642
    iput-object p4, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 643
    iput-object p5, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 645
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->mMyLocalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->mMyLocalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->mMyLocalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    iget-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->mMyLocalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    return-void
.end method
