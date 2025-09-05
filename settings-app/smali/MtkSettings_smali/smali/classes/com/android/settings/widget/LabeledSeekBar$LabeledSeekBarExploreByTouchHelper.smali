.class Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "LabeledSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/LabeledSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabeledSeekBarExploreByTouchHelper"
.end annotation


# instance fields
.field private mIsLayoutRtl:Z

.field final synthetic this$0:Lcom/android/settings/widget/LabeledSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/LabeledSeekBar;Lcom/android/settings/widget/LabeledSeekBar;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    .line 129
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 130
    invoke-virtual {p2}, Lcom/android/settings/widget/LabeledSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    .line 132
    return-void
.end method

.method private getBoundsInParentFromVirtualViewId(I)Landroid/graphics/Rect;
    .locals 4

    .line 209
    iget-boolean v0, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v0

    sub-int p1, v0, p1

    .line 211
    :cond_0
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0}, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getHalfVirtualViewWidth()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    .line 212
    invoke-virtual {v2}, Lcom/android/settings/widget/LabeledSeekBar;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    .line 213
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getHalfVirtualViewWidth()I

    move-result v2

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    .line 214
    invoke-virtual {v2}, Lcom/android/settings/widget/LabeledSeekBar;->getPaddingStart()I

    move-result v2

    add-int/2addr v0, v2

    .line 217
    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 218
    move v1, v2

    :cond_1
    iget-object v3, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 219
    iget-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/LabeledSeekBar;->getWidth()I

    move-result v0

    .line 221
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 222
    iget-object v3, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/LabeledSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    return-object p1
.end method

.method private getHalfVirtualViewWidth()I
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getWidth()I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/LabeledSeekBar;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    .line 196
    invoke-virtual {v1}, Lcom/android/settings/widget/LabeledSeekBar;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 197
    iget-object v1, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getVirtualViewIdIndexFromX(F)I
    .locals 1

    .line 201
    float-to-int p1, p1

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    .line 202
    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getHalfVirtualViewWidth()I

    move-result v0

    div-int/2addr p1, v0

    .line 201
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 203
    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    .line 204
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 205
    iget-boolean v0, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v0

    sub-int p1, v0, p1

    :cond_0
    return p1
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getVirtualViewIdIndexFromX(F)I

    move-result p1

    return p1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    .line 149
    const/4 p3, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 151
    return p3

    .line 154
    :cond_0
    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    .line 160
    return p3

    .line 156
    :cond_1
    iget-object p2, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(I)V

    .line 157
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 158
    return p2
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 190
    const-class v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 178
    const-class v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/LabeledSeekBar;->access$200(Lcom/android/settings/widget/LabeledSeekBar;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getProgress()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 181
    return-void
.end method

.method protected onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 185
    const-class v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 167
    const-class v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getBoundsInParentFromVirtualViewId(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 169
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/LabeledSeekBar;->access$200(Lcom/android/settings/widget/LabeledSeekBar;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 172
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 173
    iget-object v1, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/LabeledSeekBar;->getProgress()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    .line 174
    return-void
.end method
