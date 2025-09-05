.class public Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "ScrollViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;
.implements Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;


# instance fields
.field private final mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

.field private final mScrollView:Lcom/android/setupwizardlib/view/BottomScrollView;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ScrollView;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    .line 47
    instance-of p1, p2, Lcom/android/setupwizardlib/view/BottomScrollView;

    if-eqz p1, :cond_0

    .line 48
    check-cast p2, Lcom/android/setupwizardlib/view/BottomScrollView;

    iput-object p2, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->mScrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    goto :goto_0

    .line 50
    :cond_0
    const-string p1, "ScrollViewDelegate"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set non-BottomScrollView. Found="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->mScrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    .line 53
    :goto_0
    return-void
.end method


# virtual methods
.method public onRequiresScroll()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    .line 63
    return-void
.end method

.method public onScrolledToBottom()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    .line 58
    return-void
.end method
