.class public Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "ListViewScrollHandlingDelegate.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;


# instance fields
.field private final mListView:Landroid/widget/ListView;

.field private final mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ListView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    .line 49
    iput-object p2, p0, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;->mListView:Landroid/widget/ListView;

    .line 50
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 81
    add-int/2addr p2, p3

    if-lt p2, p4, :cond_0

    .line 82
    iget-object p1, p0, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    .line 86
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 76
    return-void
.end method
