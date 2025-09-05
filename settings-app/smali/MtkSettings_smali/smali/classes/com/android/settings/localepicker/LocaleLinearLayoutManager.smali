.class public Lcom/android/settings/localepicker/LocaleLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "LocaleLinearLayoutManager.java"


# instance fields
.field private final mActionMoveBottom:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionMoveDown:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionMoveTop:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionMoveUp:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionRemove:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    .line 57
    new-instance p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    .line 59
    const v0, 0x7f1200a3    # @string/action_drag_label_move_up 'Move up'

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a001e    # @id/action_drag_move_up

    invoke-direct {p1, v0, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveUp:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 60
    new-instance p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    .line 62
    const v0, 0x7f1200a1    # @string/action_drag_label_move_down 'Move down'

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a001c    # @id/action_drag_move_down

    invoke-direct {p1, v0, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveDown:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 63
    new-instance p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    .line 65
    const v0, 0x7f1200a2    # @string/action_drag_label_move_top 'Move to top'

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a001d    # @id/action_drag_move_top

    invoke-direct {p1, v0, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveTop:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 66
    new-instance p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    .line 68
    const v0, 0x7f1200a0    # @string/action_drag_label_move_bottom 'Move to bottom'

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a001b    # @id/action_drag_move_bottom

    invoke-direct {p1, v0, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveBottom:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 69
    new-instance p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    .line 71
    const v0, 0x7f1200a4    # @string/action_drag_label_remove 'Remove language'

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a001f    # @id/action_drag_remove

    invoke-direct {p1, v0, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionRemove:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 72
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->getItemCount()I

    move-result p1

    .line 81
    invoke-virtual {p0, p3}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    .line 82
    check-cast p3, Lcom/android/settings/localepicker/LocaleDragCell;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p3}, Lcom/android/settings/localepicker/LocaleDragCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/CheckBox;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 89
    invoke-virtual {p4, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p3, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p3}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->isRemoveMode()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 92
    return-void

    .line 98
    :cond_0
    if-lez p2, :cond_1

    .line 99
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveUp:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 100
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveTop:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 102
    :cond_1
    if-ge v1, p1, :cond_2

    .line 103
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveDown:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 104
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveBottom:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 106
    :cond_2
    const/4 p2, 0x1

    if-le p1, p2, :cond_3

    .line 107
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionRemove:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 109
    :cond_3
    return-void
.end method

.method public performAccessibilityActionForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->getItemCount()I

    move-result v0

    .line 116
    invoke-virtual {p0, p3}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 117
    nop

    .line 119
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p4, :pswitch_data_0

    .line 151
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutManager;->performAccessibilityActionForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 145
    :pswitch_0
    if-le v0, v3, :cond_0

    .line 146
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->removeItem(I)V

    .line 147
    goto :goto_0

    .line 121
    :pswitch_1
    if-lez v1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    add-int/lit8 p2, v1, -0x1

    invoke-virtual {p1, v1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    .line 123
    goto :goto_0

    .line 133
    :pswitch_2
    if-eqz v1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    .line 135
    goto :goto_0

    .line 127
    :pswitch_3
    add-int/lit8 p1, v1, 0x1

    if-ge p1, v0, :cond_0

    .line 128
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p2, v1, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    .line 129
    goto :goto_0

    .line 139
    :pswitch_4
    sub-int/2addr v0, v3

    if-eq v1, v0, :cond_0

    .line 140
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    .line 141
    goto :goto_0

    .line 154
    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 155
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    .line 157
    :cond_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a001b
        :pswitch_4    # @id/action_drag_move_bottom
        :pswitch_3    # @id/action_drag_move_down
        :pswitch_2    # @id/action_drag_move_top
        :pswitch_1    # @id/action_drag_move_up
        :pswitch_0    # @id/action_drag_remove
    .end packed-switch
.end method
