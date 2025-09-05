.class public Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "LinkAccessibilityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;
    }
.end annotation


# instance fields
.field private final mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 77
    new-instance p1, Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-direct {p1}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;

    invoke-direct {v0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$PreOLinkAccessibilityHelper;-><init>(Landroid/widget/TextView;)V

    .line 75
    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;-><init>(Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 80
    return-void
.end method


# virtual methods
.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    instance-of v0, v0, Landroid/support/v4/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    check-cast v0, Landroid/support/v4/widget/ExploreByTouchHelper;

    .line 141
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 140
    :goto_0
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/AccessibilityDelegateCompat;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p1

    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 110
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 115
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 105
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 90
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 95
    return-void
.end method
